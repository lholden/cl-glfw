;; You should nominially invoke this file via ./generators/make-opengl-bindings.rb
;; as that performs the necessary setup.

(declaim (optimize (debug 3)))
;;; {{{ PARAMETERS

(defparameter *reports* '(:type-map nil
                          :property-counts nil
                          :leftover-functions t
                          :leftover-enums t
                          :files-output nil
                          :function-category-counts nil))


(defparameter *opengl-version-systems* '("cl-glfw-opengl-version_1_1"
					 "cl-glfw-opengl-version_1_2"
					 "cl-glfw-opengl-version_1_3"
					 "cl-glfw-opengl-version_1_4"
					 "cl-glfw-opengl-version_1_5"
					 "cl-glfw-opengl-version_2_0"
					 "cl-glfw-opengl-version_2_1")
  "List of versioned extensions for dependency generation. 
Must be in the correct order.")


(defparameter *base* (merge-pathnames #P"../" (load-time-value *load-truename*)))
(defparameter *spec* nil)
(defparameter *type-map* nil)

(defparameter *enum-specs* nil)
(defparameter *function-specs* nil)

(defparameter *base-categories* 
  '(|display-list| |drawing| |drawing-control| |feedback|
    |framebuf| |misc| |modeling| |pixel-op| |pixel-rw| 
    |state-req| |xform|))

(defparameter *exports* nil)

(defparameter *function-categories* nil)

(defparameter *predefined-enumerants* nil)
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
(defun category-of (func-spec) (getf (cddr func-spec) :category))
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
	  ((find #\* (format nil "~a" s)) :pointer)
	  ((equal (subseq s 0 2) "GL") (intern (string-upcase (subseq s 2))))
	  ((equal s "_GLfuncptr") :pointer)
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
                   :category (first (getf (rest func-spec) :category))
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
          (getf *function-categories* (intern (category-of function-spec)))))
  (when (getf *reports* :function-category-counts)
    (format t "Category counts:~%")
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
     (:shadowing-import-from #:cl-glfw-types #:boolean #:byte #:float #:char #:string)
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
     (format ,out ";;;; This file was automatically generated by ~a~%" (load-time-value *load-truename*))
     ,@forms
     (fresh-line ,out)))



(defun output-extension (category-name &optional (function-transform #'gl-extension-function-definition) (extension-name category-name))
  "write out the extension named by category name" 
  
  ;; collect up the elements of the extension, the enums and functions
  (let ((enumerations 
         (loop while (getf *enum-specs* category-name) nconcing
              (prog1 (loop for enum-name in (getf *enum-specs* category-name) by #'cddr
                        for enum-value in (cdr (getf *enum-specs* category-name)) by #'cddr
                        unless (find enum-name *predefined-enumerants*)
                        collecting
                        (let ((constant-name (constantize enum-name)))
                          (push constant-name *exports*)
                          `(defconstant ,constant-name ,enum-value)))
                (remf *enum-specs* category-name))))
        (functions
         (loop while (getf *function-categories* category-name) nconcing
              (prog1
                  (mapcar function-transform (getf *function-categories* category-name))
                (remf *function-categories* category-name)))))
    ;; only when we have either of these components, actually generate a system
    (when (or enumerations functions)
      ;; write out the ASD definition
      (with-output-file (out (format nil "lib/cl-glfw-opengl-~a.asd" extension-name))
        (let* ((system-name (string-downcase (format nil "cl-glfw-opengl-~a" extension-name)))
               (system-package (make-symbol (string-upcase (concatenate 'string system-name "-system")))))
          (print `(defpackage ,system-package (:use #:asdf #:cl)) out)
          (print `(in-package ,system-package) out)
          (print `(defsystem ,(intern (string-upcase system-name))
                    :description ,(format nil "cl-glfw's ~a binding" extension-name)
                    :author ,(format nil "Generated by cl-glfw's ~a" (load-time-value *load-truename*))
                    :licence "Public Domain"
                    :depends-on (cl-glfw-opengl
                                 ,@(let ((pos (position system-name *opengl-version-systems* :test 'equal)))
                                        (when (and pos (plusp pos))
                                          (list (intern (elt *opengl-version-systems* (1- pos)))))))
                    :components ((:file ,(concatenate 'string "opengl-"
                                                      (string-downcase (symbol-name extension-name))))))
                 out)))

      ;; write the enumerations and function bindings
      (with-output-file (out (format nil "lib/opengl-~a.lisp" extension-name)) 
        (print '(in-package #:cl-glfw-opengl) out)
        (format out "~&~%;;;; ~a~&" category-name)
        (dolist (enumeration enumerations) (print enumeration out))
        (dolist (function functions) (print function out))))))


(defun output-category (category-name out)
  "Output a whole category and remove it from the list."
  (dolist (func-spec (getf *function-categories* category-name))
    (print (gl-function-definition func-spec) out))
  (remf *function-categories* category-name))

(defun output-core ()
  ;; write the main bindings file...
  (with-output-file (out #P"lib/opengl.lisp")

    (print `(in-package #:cl-glfw-opengl) out)

    ;; dump all enumerations not in an extension
    (loop for enum-group-name in *enum-specs* by #'cddr 
       for enum-group in (cdr *enum-specs*) by #'cddr
       unless (getf *function-categories* enum-group-name)
       do
       ;; when this group is not empty and there is a name that isn't already defined
       (when (and enum-group
                  (loop for enum-name in enum-group by #'cddr
                       when (not (find enum-name *predefined-enumerants*))
                       return t))
         (format out "~&~%;;;; {{{ ~a~%" enum-group-name)
         (loop for enum-name in enum-group by #'cddr
            for enum-value in (cdr enum-group) by #'cddr
            unless (find enum-name *predefined-enumerants*)
            do
            (push enum-name *predefined-enumerants*)
            (let ((constant-name (constantize enum-name)))
              (push constant-name *exports*)
              (print `(defconstant ,constant-name ,enum-value) out)))
         (format out "~&~%;;;; }}}~%"))
       (remf *enum-specs* enum-group))
      
    ;; all base 1.0 categories
    (loop for category-name in *base-categories* 
       do
       (format out "~&~%;;;; {{{ ~a~%" category-name)
       (output-category category-name out)
       (format out "~&~%;;;; }}}~%"))))


(defun output-everything ()
  ;; some nice printing options
  (let ((*print-case* :downcase)
        (*print-radix* t)
        (*print-base* 16))
    
    (output-core)

    (output-extension '|1_1| #'gl-function-definition 'VERSION_1_1)

    (output-extension 'VERSION_1_2 #'gl-function-definition)
    (output-extension 'VERSION_1_3 #'gl-function-definition)
    (output-extension 'VERSION_1_4 #'gl-function-definition)
    (output-extension 'VERSION_1_5 #'gl-function-definition)
    (output-extension 'VERSION_2_0 #'gl-function-definition)
    (output-extension 'VERSION_2_1 #'gl-function-definition)

    (dolist (category-name (remove-duplicates
                            (nconc (plist-keys *function-categories*)
                                   (plist-keys *enum-specs*))))
      (output-extension category-name))

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
