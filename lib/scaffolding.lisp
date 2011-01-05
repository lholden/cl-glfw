(defpackage #:cl-glfw-scaffolding
  (:use #:cl #:cffi #:cl-glfw-types)
  (:shadowing-import-from #:cl-glfw-types #:boolean #:byte #:float
                          #:char #:pointer)
  (:export #:defglfun #:defglextfun #:*type-map*))

(in-package #:cl-glfw-scaffolding)

(defparameter *type-map* nil)

(defun c-name-of (func-spec) (first func-spec))
(defun lisp-name-of (func-spec) (second func-spec))
(defun freturn-of (func-spec) (getf (cddr func-spec) :return))
(defun args-of (func-spec) (getf (cddr func-spec) :args))
(defun category-of (func-spec) (getf (cddr func-spec) :category))

(defun deconstant (symbol)
  (if (not (constantp symbol))
      symbol
      (deconstant (intern (concatenate 'cl:string "_" (symbol-name symbol))))))

(defun final-arg-name (arg)
  (deconstant (intern (string-upcase (symbol-name (getf arg :name))))))

(defun get-type (sym)
  (let ((type-string (cl:string (getf *type-map* sym))))
    ;;    (format t "Type string ~S " type-string)
    (if (string-equal "string" type-string)
	(intern type-string :keyword)
	(intern type-string :cl-glfw-types))))

(defun final-arg-type (arg)
  (let ((type (get-type (getf arg :type))))
    (cond
      ((equal "VOID" (symbol-name type)) 'cl-glfw-types:pointer)
      ((getf arg :array) (if (equal (symbol-name type) "CHAR") :string 'cl-glfw-types:pointer))
      (t type))))

(defun arg-element-type (arg)
  (get-type (getf arg :type)))

(defun conc-symbols (&rest symbols)
  (intern (apply #'concatenate (cons 'cl:string (mapcar #'symbol-name symbols)))))

(defun array-wrappable-p (arg #|args|#)
  (let ((resolved-type (get-type (getf arg :type))))
    (and (getf arg :array)
         ;; we must have a type, ie. not a void* pointer
         (not (equal "VOID" (symbol-name resolved-type)))
         ;; opengl cannot retain this pointer, as we would destroy it after passing it
         (not (getf arg :retained))
         ;; can we guarantee a size? - used to do this, but the app programmer must get it right himself for OpenGL anyway
         ;; so doing it this way is consistent with the C-interface, though more dangerous
         #|
         (or (integerp (getf arg :size))
         (and (symbolp (getf arg :size))
         (find-if #'(lambda (other-arg)
         (eql (getf arg :size) (final-arg-name other-arg)))
         args)))|#
         ;; our own hook
         (not (getf arg :wrapped)))))

(defun gl-function-definition (func-spec &optional (c-prefix "gl") (lisp-prefix '#:||))
  `(defcfun (,(concatenate 'cl:string c-prefix (c-name-of func-spec))
              ,(conc-symbols lisp-prefix (lisp-name-of func-spec)))
       ,(get-type (intern (freturn-of func-spec)))
     ,@(mapcar #'(lambda (arg) (list (final-arg-name arg) (final-arg-type arg)))
               (args-of func-spec))))

(defun gl-funcall-definition (func-spec fpointer)
  `(foreign-funcall ,fpointer
                    ,@(mapcan #'(lambda (arg)
                                  `(,(final-arg-type arg) ,(final-arg-name arg)))
                              (args-of func-spec))
                    ,(get-type (intern (freturn-of func-spec)))))

(defun expand-a-wrapping (func-spec final-content)
  (let* ((func-spec (copy-tree func-spec)) ; duplicate because we're not supposed to modify macro params
         (args (args-of func-spec))
         (first-wrappable (position-if #'array-wrappable-p args)))
    (if first-wrappable
        (let* ((arg (elt (args-of func-spec) first-wrappable))
               (original-array-name (gensym (symbol-name (final-arg-name arg))))
               (array-name (final-arg-name arg)))
          ;; set it wrapped by non-consingly attaching a wrapped property on the end
          (nconc arg (list :wrapped t))
          `(if (and (typep ,array-name 'sequence) (not (stringp ,array-name)))
               ;; the actual allocation
               (let* ((,original-array-name ,array-name)
                      (,array-name (foreign-alloc ',(arg-element-type arg)
                                                  ;; we used to base it on the count of whatever the spec said
                                                  #|:count ,(getf arg :size)|#
                                                  ;; but now, we'll use the user's sequence size, or just their content
                                                  ,@(if (eql (getf arg :direction) :in)
                                                        `(:initial-contents ,original-array-name)
                                                        `(:count (length ,original-array-name))))))
                 ;; (format t "Copying ~a elements of ~a: ~a into ~a~%"
                 ;; ,(getf arg :size) ',array-name ,original-array-name ,array-name)
                 (unwind-protect
                      (prog1
                          ;; recurse in case there are more
                          ,(expand-a-wrapping func-spec final-content)
                        ;; custom coersion of output values, after call
                        ,(when (eql (getf arg :direction) :out)
                           `(cond
                              ((listp ,original-array-name)
                               (loop for i from 0
                                  for cel = ,original-array-name then (cdr cel)
                                  while cel
                                  do (setf (car cel) (mem-aref ,array-name ',(arg-element-type arg) i))))
                              ((vectorp ,original-array-name)
                               (loop for i below (length ,original-array-name) do
                                    (setf (aref ,original-array-name i)
                                          (mem-aref ,array-name ',(arg-element-type arg) i)))))))
                   (foreign-free ,array-name)))
               ;; in the case the arg wasn't a sequence, pass it straight through
               ,(expand-a-wrapping func-spec final-content)))
        ;; in the case that there is no more wrapping to be done, emit the final content to start unwinding
        final-content)))

(defun wrapped-win32-gl-function-definition (func-spec)
  `(let ((fpointer (foreign-funcall "wglGetProcAddress"
                                    :string ,(concatenate 'cl:string "gl" (c-name-of func-spec))
                                    :pointer)))
     ;; I know the CFFI guide recommends against holding pointers, but for extensions on win,
     ;; function pointers are the only way to do it. I don't think the locations are compiled
     ;; in-to the fasl files, as it's a top-level form.
     (when (null-pointer-p fpointer)
       (warn "Can't find function ~a" (first func-spec)))
     (defun ,(lisp-name-of func-spec)
         ,(mapcar #'(lambda (arg) (final-arg-name arg))
           (args-of func-spec))
       ;; if there is more than 0 wrappable arrays
       ,(let ((args (args-of func-spec)))
          (if (some #'array-wrappable-p args)
              (expand-a-wrapping func-spec
                                 (gl-funcall-definition func-spec 'fpointer))
              (gl-funcall-definition func-spec 'fpointer))))))

(defun wrapped-gl-function-definition (func-spec)
  (let ((args (args-of func-spec)))
    ;; if there is more than 0 wrappable arrays
    (if (some #'array-wrappable-p args)
        `(progn
           ;; make an inlined function prefixed with %
           (declaim (inline ,(conc-symbols '#:% (lisp-name-of func-spec))))
           ,(gl-function-definition func-spec "gl" '#:%)
           ;; the exposed function with wrappings
           (defun ,(lisp-name-of func-spec) ,(mapcar #'final-arg-name (args-of func-spec))
             ,(expand-a-wrapping func-spec
                                 `(,(conc-symbols '#:% (lisp-name-of func-spec))
                                    ,@(mapcar #'final-arg-name (args-of func-spec))))))
        (gl-function-definition func-spec))))

(defmacro defglfun (&rest func-spec)
  (wrapped-gl-function-definition func-spec))

(defmacro defglextfun (&rest func-spec)
  #+win32 (wrapped-win32-gl-function-definition func-spec)
  #-win32 (wrapped-gl-function-definition func-spec))

