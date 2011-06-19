;; You should nominially invoke this file via ./generators/make-opengl-bindings.rb
;; as that performs the necessary setup.

(declaim (optimize (speed 0) (space 0) (debug 3)))
;;; {{{ PARAMETERS

(defparameter *reports* '(:type-map nil
                          :property-counts nil
                          :leftover-functions t
                          :leftover-enums t
                          :files-output nil
                          :function-category-counts nil))

(defun make-version-syms (&rest versions)
  (loop for version in versions
     collecting (intern (concatenate 'string "VERSION_" version))))

(defparameter *core-opengl-versions* 
  (make-version-syms "1_0" "1_1"))

(defparameter *opengl-versions* 
  (make-version-syms "1_0" "1_1" "1_2" "1_3" "1_4" "1_5"
		     "2_0" "2_1"
		     "3_0" "3_1" "3_2" "3_3"
		     "4_0" "4_1")
  "List of versioned extensions for dependency generation. 
Must be in the correct order.")

(defparameter *source-filename* (or #.*compile-file-truename*
				    (load-time-value *load-truename*)))

(defparameter *extension-names* nil)

(defparameter *base* (merge-pathnames #P"../" *source-filename*))
(defparameter *spec* nil)
(defparameter *type-map* nil)

(defparameter *enum-specs* nil)
(defparameter *function-specs* nil)

(defparameter *exports* (list '#:check-linked-program-arb '#:with-push-attrib '#:with-new-list
			      '#:check-linked-program '#:fallback-synchronizing-program
			      '#:check-compiled-shader '#:*fallback-synchronizing-program-arb*
			      '#:*fallback-synchronizing-program* '#:with-begin-query
			      '#:shader-source-from-stream-arb '#:with-setup-projection
			      '#:with-bind-buffer '#:with-use-program-arb '#:with-push-client-attrib
			      '#:fallback-synchronizing-program-arb '#:shader-source-from-stream
			      '#:with-use-program '#:synchronizing-program-arb '#:with-begin
			      '#:with-push-matrix '#:make-program '#:make-program-arb '#:make-shader
			      '#:synchronizing-shader-arb '#:with-projection-matrix
			      '#:clear-synchronizing-shaders '#:make-shader-arb
			      '#:check-compiled-shader-arb '#:with-map-buffer-arb
			      '#:with-bind-buffer-arb '#:with-push-name '#:with-map-buffer
			      '#:synchronizing-shader '#:synchronizing-program))

(defparameter *function-categories* nil)

(defparameter *predefined-enumerants* (make-hash-table))
;;; }}}


;;; {{{ UTILITY
(defun plist-keys (plist)
  "Return all of the keys of a plist"
  (loop for key in plist by #'cddr collect key))

(defun plist-values (plist)
  "Return all of the values of a plist"
  (loop for key in (cdr plist) by #'cddr collect key))

(defun constantize (symbol)
  "Converts a symbol into a nice constant-style symbol,
changing non-alphanumeric characters to - and surrounding it
with +s."
  (intern (format nil "+~a+"
                  (map 'string #'(lambda (c) (if (alphanumericp c) c #\-))
                       (string-upcase (string symbol))))))

(defun deconstant (symbol)
  "Sometimes argument names of OpenGL™ functions have silly names like
't', this is a generalised way to rename them to something more sensible."
  (if (not (constantp symbol))
      symbol
      (deconstant (intern (concatenate 'string "_" (symbol-name symbol))))))

;;}}}

;;; {{{ FUNC-SPEC 
(defun c-name-of (func-spec) (first func-spec))
(defun lisp-name-of (func-spec) (second func-spec))
(defun freturn-of (func-spec) (getf (cddr func-spec) :return))
(defun args-of (func-spec) (getf (cddr func-spec) :args))
(defun category-of (func-spec) (intern (getf (cddr func-spec) :category)))
;;; }}}

;;; {{{ FIX TYPE-MAPS 
(defparameter *strippable-type-endings*
  (list "NV" "ARB" "SGIX" "EXT" "ATI" "IBM" "3DFX" "SGIS" 
        "SUNX" "HP" "GREMEDY" "APPLE" "MESA" "SUN" "INTEL"
        "WIN"))

(defun string-ends-with (string ending)
  "Returns t if string ends with ending."
  (and (>= (length string) (length ending))
       (string= string ending :start1 (- (length string) (length ending)))))

(defun string-strip-ending (string ending)
  "Returns string (with ending removed, if it was there)."
  (if (string-ends-with string ending)
      (subseq string 0 (- (length string) (length ending)))
      string))

(defun string-strip-endings (string endings)
  "Removes any of multiple endings from string, if it has any of them."
  (if (cdr endings)
      (string-strip-endings (string-strip-ending string (car endings)) (cdr endings))
      (string-strip-ending string (first endings))))

(defun type-map-type-to-gl-type (type-map-type)
  "Strips the extension suffix off a type and returns an appropriate type symbol
suitable for cl-glfw-types or CFFI."
  (let ((s (string-strip-endings (symbol-name type-map-type) *strippable-type-endings*)))
    (cond ((equal s "*") :void)
	  ((equal s "const GLubyte *") 'string)
	  ((find #\* (format nil "~a" s)) 'pointer)
	  ((equal (subseq s 0 2) "GL") (intern (string-upcase (subseq s 2))))
	  ((equal s "_GLfuncptr") 'pointer)
	  (t s))))

(defun set-type-maps ()
  "Fix mappings of specification type names onto valid cl-glfw-types/CFFI symbols."
  (setf
   *type-map*
   (loop for src-type in (getf *spec* :type-map) by #'cddr
      for dst-type in (cdr (getf *spec* :type-map)) by #'cddr
      nconc (list src-type (type-map-type-to-gl-type dst-type)))))

;;; }}}

;;; {{{ FIX ENUM SPECS 
(defun set-enum-specs ()
  "Extract the enum specs from *spec* and resolve all the values"
  (setf
   *enum-specs*
   (labels ((resolve-enum (enum-name enum-value &optional used-groups)
              (cond
                ;; the only end-value type (there are no strings or anything)
                ((numberp enum-value) enum-value)
                ;; nil value means we have to look everywhere for a value
                ((null enum-value)
                 (resolve-enum
                  enum-name
                  (block find-value
                    (loop for enum-group-name in (getf *spec* :enum-spec) by #'cddr
                       for enum-group in (cdr (getf *spec* :enum-spec)) by #'cddr
                       do (unless (find enum-group-name used-groups)
                            (let ((resolved-value (getf enum-group enum-name)))
                              (when resolved-value
                                (push enum-group-name used-groups)
                                (return-from find-value resolved-value)))))
                    (return-from resolve-enum :unable-to-resolve))
                  used-groups))
                ;; it's a name of another symbol, re-resolve with that name
                ((symbolp enum-value) (resolve-enum enum-value nil))
                ;; a use list means we look in another group for it
                ((and (listp enum-value)
                      (eql (first enum-value) :use))
                 (resolve-enum 
                  enum-name
                  (getf (getf (getf *spec* :enum-spec) (second enum-value))
                        enum-name)
                  used-groups))
                (t (error "I don't know what to do with the enum definition ~s -> ~s" enum-name enum-value)))))
     (loop for enum-group-name in (getf *spec* :enum-spec) by #'cddr
        for enum-group in (cdr (getf *spec* :enum-spec)) by #'cddr
        unless (eql enum-group-name :extensions)
        when enum-group
        nconcing
        (list enum-group-name
              (loop for enum-name in enum-group by #'cddr
                 for enum-value in (cdr enum-group) by #'cddr
                 nconcing 
                 (list enum-name
                       (resolve-enum enum-name enum-value (list enum-group-name)))))))))
;;; }}}

;;; {{{ SET FUNC SPECS
(defun set-func-specs ()
  (setf *function-specs*
        (loop for func-spec in (getf *spec* :functions) 
             when func-spec
           collect
             (list (first (first func-spec))
                   (second (first func-spec))
                   :return (first (getf (rest func-spec) :return))
                   :args (loop while (getf (rest func-spec) :param) collect
                              (prog1 (getf (rest func-spec) :param)
                                (remf (rest func-spec) :param)))
                   :category (string-strip-ending (first (getf (rest func-spec) :category)) "_DEPRECATED")
		   :deprecated (first (getf (rest func-spec) :deprecated))
                   :version (first (getf (rest func-spec) :version))))))
;;; }}}

;;; {{{ LOAD
(defun load-spec ()
  (setf *spec* (with-open-file (in (merge-pathnames #P"src/gl.spec.lisp" *base*)) (read in)))
  (set-type-maps)
  (set-func-specs)
  (when (getf *reports* :type-map)
    (loop for n-v in
         (sort (loop for name in *type-map* by #'cddr
                  for value in (cdr *type-map*) by #'cddr
                  collect (cons name value))
               #'(lambda (a b)
                   (string-lessp (string (cdr a)) (string (cdr b)))))
         do (format t "~&  ~s:~40t~s~%" (car n-v) (cdr n-v))))
  
  (set-enum-specs)

  (remf *enum-specs* :extensions)

  ;; print out initial statistics
  (format t "~a functions~%" (length *function-specs*))
  (format t "~a type-maps~%" (/ (length *type-map*) 2))
  (format t "~a enum-specs~%" (length *enum-specs*))
  

  (when (getf *reports* :property-counts)
    ;; count up the properties of functions, what's useful for parsing?
    (let ((property-counts ()))
      (dolist (function-spec *function-specs*)
        (dolist (property (plist-keys (rest function-spec)))
          (incf (getf property-counts property 0))))
      (let ((*print-pretty* t))
        (format t "Property counts: ~a~%"  property-counts))))

  ;; categorize functions
  (dolist (function-spec *function-specs*)
    (push function-spec
          (getf *function-categories* (category-of function-spec))))

  ;;Work out which categories are actually extensions we want
  (dolist (category-sym (nconc (plist-keys *function-categories*)
				(plist-keys *enum-specs*)))
    (let* ((category-string (string category-sym))
	   (underscore-pos (position #\_ category-string)))
      (when (and (integerp underscore-pos)
		 (plusp underscore-pos)
		 (every (lambda (char)
			  (or (upper-case-p char)
			      (digit-char-p char)))
			(subseq category-string 0 underscore-pos))
		 (not (find category-sym *extension-names*)))
	(push category-sym *extension-names*))))

  (when (getf *reports* :function-category-counts)
    (format t "Category function counts:~%")
    (loop for cat-name in *function-categories* by #'cddr
         for cat-contents in (cdr *function-categories*) by #'cddr
         do (format t "  ~S: ~S~%" cat-name (length cat-contents)))))
;;; }}}


(defun gl-extension-function-definition (func-spec)
  (push (lisp-name-of func-spec) *exports*)
  `(defglextfun ,@func-spec))

(defun gl-function-definition (func-spec)
  (push (lisp-name-of func-spec) *exports*)
  `(defglfun ,@func-spec))


;;; {{{ EMIT OUTPUT 


;; this is the real template opengl defpackage
(defun make-opengl-defpackage (exports)
  "Returns the defpackage for opengl with the exports list given."
  `(defpackage #:cl-glfw-opengl
     (:use #:cffi #:cl #:cl-glfw-types #:cl-glfw-scaffolding)
     (:nicknames #:gl #:opengl)
     (:shadowing-import-from #:cl-glfw-types #:boolean #:byte #:float #:char #:string #:pointer)
     (:export
      #:enum #:boolean #:bitfield #:byte #:short #:int #:sizei #:ubyte #:ushort #:uint 
      #:float #:clampf #:double #:clampd #:void #:uint64 #:int64 
      #:intptr #:sizeiptr 
      #:handle
      #:char #:string
      #:half
      ,@(mapcar #'make-symbol (mapcar #'string-upcase (mapcar #'string exports))))))


(defmacro with-output-file ((out name) &body forms)
  (declare (type symbol out))
  `(with-open-file (,out (merge-pathnames ,name *base*) :direction :output :if-exists :supersede) 
     (when (getf *reports* :files-output)
       (format t "Generating ~s~%" (truename ,out)))
     (format ,out ";;;; This file was automatically generated by ~a~%" *source-filename*)
     ,@forms
     (fresh-line ,out)))







(defun output-core ()
  ;; write the main bindings file...
  (with-output-file (out #P"lib/opengl-core.lisp")

    (print `(in-package #:cl-glfw-opengl) out)

    ;; dump all enumerations not in an extension
    (loop for enum-group-name in *enum-specs* by #'cddr 
       for enum-group in (cdr *enum-specs*) by #'cddr
       unless (find enum-group-name *extension-names*)
       do
	 (let ((enums-to-define
		(loop for enum-name in enum-group by #'cddr
		   for enum-value in (cdr enum-group) by #'cddr
		   nconcing
		     (let ((existing (gethash enum-name *predefined-enumerants*)))
		       (cond
			 ((not existing)
			  (setf (gethash enum-name *predefined-enumerants*) enum-value)
			  (list (cons enum-name enum-value)))
			 ((eql existing enum-value)
			  nil)
			 (t
			  (warn "Won't redefine enum ~A as ~A, because it is already ~A"
				enum-name enum-value existing)
			  nil))))))
	  ;; when this group is not empty and there is a name that isn't already defined
	  (when enums-to-define
	    (format out "~&~%;;;; {{{ ~A~%" (string enum-group-name))
	    (loop for (enum-name . enum-value) in enums-to-define do 
		 (let ((constant-name (constantize enum-name)))
		   (push constant-name *exports*)
		   (print `(defconstant ,constant-name ,enum-value) out)))
	    (format out "~&~%;;;; }}}~%"))
	  (remf *enum-specs* enum-group-name)))))

(defun output-category (name category-names)
  "write out the extension named by category name" 

  (let ((enum-specs (copy-tree *enum-specs*))
	(function-categories (copy-tree *function-categories*)))

    ;; collect up the elements of the extension, the enums and functions
    (let* ((enumerations 
	    (loop for category-name in category-names nconcing
		 (loop while (getf enum-specs category-name) nconcing
		      (prog1 (loop for enum-name in (getf enum-specs category-name) by #'cddr
				for enum-value in (cdr (getf enum-specs category-name)) by #'cddr
				unless (gethash enum-name *predefined-enumerants*)
				collecting
				(let ((constant-name (constantize enum-name)))
				  (push constant-name *exports*)
				  `(defconstant ,constant-name ,enum-value)))
			(remf enum-specs category-name)))))
	   (function-specs
	    (loop for category-name in category-names nconcing
		 (loop while (getf function-categories category-name) nconcing
		      (prog1
			  (loop for function in (getf function-categories category-name)
			     unless (let ((deprecated-at (getf function :deprecated))) 
				      (and deprecated-at
					   (find (intern (concatenate 'string "VERSION_" (substitute #\_ #\. deprecated-at)))
						 category-names)))
			     collect function)
			(remf function-categories category-name)))))
	   (extension-specs)
	   (core-definitions)
	   (extension-definitions))

      ;;
      (loop for function-spec in function-specs do
	   (cond
	     ((find (category-of function-spec) *core-opengl-versions*)
	      (push (gl-function-definition function-spec) core-definitions))
	     (t
	      (push function-spec extension-specs)
	      (push (gl-extension-function-definition function-spec) extension-definitions))))

      (setf extension-specs (nreverse extension-specs)
	    core-definitions (nreverse core-definitions)
	    extension-definitions (nreverse extension-definitions))

      (format t "~A from ~A:~D functions, ~D enumerations~%" 
	      (string name) (mapcar 'string category-names)
	      (+ (length core-definitions)
		 (length extension-definitions))
	      (length enumerations))

      ;; only when we have either of these components, actually generate a system
      (when (or enumerations core-definitions extension-definitions)
	(let* ((core-version (find name *opengl-versions*))
	       (top-level-asd core-version))
	  ;; write out the ASD definition
	  (with-output-file (out (format nil "~acl-glfw-opengl-~a.asd" (if top-level-asd "" "lib/") name))
	    (let* ((system-name (string-downcase (format nil "cl-glfw-opengl-~a" name)))
		   (system-package (make-symbol (string-upcase (concatenate 'string system-name "-system")))))
	      (print `(defpackage ,system-package (:use #:asdf #:cl)) out)
	      (print `(in-package ,system-package) out)
	      (print `(defsystem ,(intern (string-upcase system-name))
			:description ,(format nil "cl-glfw's ~a binding" name)
			:author ,(format nil "Generated by cl-glfw's ~a" *source-filename*)
			:licence "Public Domain"
			:depends-on (cl-glfw-opengl-core)
			:components ((:file ,(concatenate 'string (if top-level-asd "lib/" "") "opengl-" (string-downcase (symbol-name name))))))
		     out)))

	  ;; write the enumerations and function bindings
	  (with-output-file (out (format nil "lib/opengl-~a.lisp" name)) 
	    (print '(in-package #:cl-glfw-opengl) out)
	    (format out "~&~%;;;; ~a~&" name)
	    (when core-version
	      (print `(eval-when (:load-toplevel)
			(when (and (boundp '*version-loaded*)
				   (not (eq ',name *version-loaded*)))
			  (warn "Loading cl-glfw-opengl-~a over the top of already-loaded cl-glfw-opengl-~a~%" ',name *version-loaded*))
			(defparameter *version-loaded* ',name)) out))
	    (dolist (enumeration enumerations) (print enumeration out))
	    (dolist (function core-definitions) (print function out))
	    (dolist (function extension-definitions) (print function out))
	    (when extension-specs
	      (push (format nil "LOAD-~A" name) *exports*)
	      (print `(make-extension-loader ,name ,extension-specs) out))))))))


(defun output-everything ()
  ;; some nice printing options
  (let ((*print-case* :downcase)
        (*print-radix* t)
        (*print-base* 16))
    
    (output-core)

    ;;Write the bindings for the core versions
    (let (current-categories)
      (loop for extension-name in *opengl-versions* do 
	   (let ((deprecated-extension-name (intern (concatenate 'string (string extension-name) "_DEPRECATED")))
		 output)
	     (when (find extension-name *extension-names*)
	       (push extension-name current-categories)
	       (setf output t))
	     (when (find deprecated-extension-name *extension-names*)
	       (push deprecated-extension-name current-categories)
	       (setf output t))
	     (when output
	       (output-category extension-name (reverse current-categories)))))
      ;;Remove them from the lists to be processed
      (loop for name in current-categories do
	   (loop while (getf *function-categories* name) do (remf *function-categories* name))
	   (loop while (getf *enum-specs* name) do (remf *enum-specs* name))))

    ;;Process all the extension categories
    (dolist (category-name *extension-names*)
      (output-category category-name (list category-name))
      (loop while (getf *function-categories* category-name) do (remf *function-categories* category-name))
      (loop while (getf *enum-specs* category-name) do (remf *enum-specs* category-name)))

    (with-output-file (out #P"lib/opengl-type-map.lisp")
      (print `(in-package #:cl-glfw-opengl) out)
      (print `(setf *type-map* ',*type-map*) out))

    (with-output-file (out #P"lib/opengl-package.lisp") 
      (print (make-opengl-defpackage (remove-duplicates (nreverse *exports*))) out)))

  (when (and (getf *reports* :leftover-functions)
             *function-categories*)
    (format t "~&Leftover functions:~%  ~s~%" *function-categories*))

  (when (and (getf *reports* :leftover-enums)
             *enum-specs*)
    (format t "~&Leftover enums:~%  ~s~%" *enum-specs*)))

;;; }}}

(defun main ()
  (load-spec)
  (output-everything)
  (fresh-line))
