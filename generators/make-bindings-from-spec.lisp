;; proto-package for type-mappings only
(defpackage #:opengl
 (:use #:cl)
 (:nicknames #:gl)
 (:shadow boolean byte float char string)
 (:export
  enum boolean bitfield byte short int sizei ubyte ushort uint float clampf
  double clampd void uint64 int64 intptr sizeiptr handle char string half))

(defparameter *opengl-version-systems* '("cl-glfw-opengl-version_1_1"
					 "cl-glfw-opengl-version_1_2"
					 "cl-glfw-opengl-version_1_3"
					 "cl-glfw-opengl-version_1_4"
					 "cl-glfw-opengl-version_1_5"
					 "cl-glfw-opengl-version_2_0"
					 "cl-glfw-opengl-version_2_1")
  "List of versioned extensions for dependency generation. 
Must be in the correct order.")

(defun plist-keys (plist)
  (do* ((it plist (cddr it))
	(res nil))
       ((not it) (nreverse res))
    (push (car it) res)))

(defun plist-values (plist)
  (do* ((it (cdr plist) (cddr it))
	(res nil))
       ((not it) (nreverse res))
    (push (car it) res)))

(defun string-ends-with (string ending)
  (and (>= (length string) (length ending))
       (equal (subseq string (- (length string) (length ending))) ending)))
(defun string-strip-ending (string ending)
  (if (string-ends-with string ending)
      (subseq string 0 (- (length string) (length ending)))
      string))
(defun string-strip-endings (string &rest endings)
  (if (= 1 (length endings))
      (string-strip-ending string (first endings))
      (apply #'string-strip-endings (cons (string-strip-ending string (first endings)) (rest endings)))))

(defun type-map-type-to-gl-type (type-map-type)
  (let ((s (string-strip-endings (symbol-name type-map-type)
				 "NV" "ARB" "SGIX" "EXT" "ATI" "IBM" "3DFX" "SGIS" 
				 "SUNX" "HP" "GREMEDY" "APPLE" "MESA" "SUN" "INTEL"
				 "WIN")))
    (cond ((equal s "*") :void)
	  ((find #\* (format nil "~a" s)) :pointer)
	  ((equal (subseq s 0 2) "GL") (intern (string-upcase (subseq s 2)) (find-package '#:gl)))
	  ((equal s "_GLfuncptr") :pointer)
	  (t s))))

(defun constantize (symbol)
  (format nil "+~a+"
	  (map 'string #'(lambda (c) (if (alphanumericp c) c #\-))
	       (symbol-name symbol))))

(defun deconstant (symbol)
  (if (not (constantp symbol))
      symbol
      (deconstant (intern (concatenate 'string "_" (symbol-name symbol))))))

(defmacro func-spec-accessors (names)
  `(progn ,@(mapcar #'(lambda (k)
			`(defun ,k (func-spec)
			   (first
			    (getf (rest func-spec)
				  ,(intern (symbol-name k) '#:keyword)))))
		    names)))
(defun c-name (func-spec)
  (first (first func-spec)))
(defun lisp-name (func-spec)
  (second (first func-spec)))
(func-spec-accessors (offset wglflags glsopcode glxsingle version category dlflags param 
		       glxropcode glxflags glsflags vectorequiv extension glxvendorpriv glsalias
		       alias glfflags glxvectorequiv beginend))
(defun freturn (func-spec)
  (first (getf (rest func-spec) :return)))
(defun args (func-spec)
  (getf (rest func-spec) :args))


(defparameter *base* (merge-pathnames #P"../" *load-truename*))

(let* ((spec (with-open-file (in (merge-pathnames #P"src/gl.spec.lisp" *base*)) (read in)))
       (function-specs (rest (getf spec :functions)))
       (type-maps (getf spec :type-map))
       (enum-specs (getf spec :enum-spec))
       (base-categories '(|display-list| |drawing| |drawing-control| |feedback|
			  |framebuf| |misc| |modeling| |pixel-op| |pixel-rw| 
			  |state-req| |xform|))
       (function-categories)
       (predefined-enumerants)
       (exports))
  (declare (optimize (debug 3)))
  (remf enum-specs :extensions)

  ;; print out initial statistics
  (format t "~a functions~%" (length function-specs))
  (format t "~a type-maps~%" (/ (length type-maps) 2))
  (format t "~a enum-specs~%" (length enum-specs))
  

  ;; count up the properties of functions
  (let ((property-counts ()))
    (dolist (function-spec function-specs)
      (dolist (property (plist-keys (rest function-spec)))
	(setf (getf property-counts property) (1+ (getf property-counts property 0)))))
    (let ((*print-pretty* t))
      (format t "Property counts: ~a~%"  property-counts)))

  ;; resolve any missing enums in the enumerations
  (labels ((resolve-enum (value enum-name)
	     (cond ((listp value)
		    (do* ((all-enums (apply #'append (plist-values enum-specs)))
			  (cur-val (getf all-enums enum-name) (getf all-enums enum-name)))
			 ((or (null cur-val) (not (or (listp cur-val)
						      (symbolp cur-val))))
			  cur-val)
		      ;;(format t "cur-val ~a doesn't satisfy~%" cur-val)
		      (remf all-enums enum-name)))
		   ((symbolp value)
		    (resolve-enum nil value))
		   (t value))))
    (dolist (enum-group-name (plist-keys enum-specs))
      (symbol-macrolet ((enum-group (getf enum-specs enum-group-name)))
	(dolist (enum-name (plist-keys enum-group))
	  (symbol-macrolet ((enum (getf enum-group enum-name)))
	    (setf enum (resolve-enum enum enum-name)))))))

  ;; turn type mapping destinations into actual symbols
  (dolist (type-map-pname (plist-keys type-maps))
    (setf (getf type-maps type-map-pname)
	  (type-map-type-to-gl-type (getf type-maps type-map-pname))))

  ;; collect arguments of functions into ordered list with all meta-data attached
  (dolist (func-spec function-specs)
    (let ((arg-specs))
      (do* ((arg-spec (getf (rest func-spec) :param) (getf (rest func-spec) :param)))
	   ((not arg-spec))
	(setf (getf arg-specs (getf arg-spec :name))
	      arg-spec)
	(remf (rest func-spec) :param))
      (setf (getf (rest func-spec) :args)
	    (loop for arg-name in (args func-spec) collecting
		 (getf arg-specs arg-name)))))

  ;; categorize functions
  (dolist (function-spec function-specs)
    (push function-spec
	  (getf function-categories (intern (category function-spec)))))

  (defun gl-extension-function-definition (func-spec)
    (push (lisp-name func-spec) exports)
    `(defglextfun ,func-spec))

  (defun output-extension (category-name &optional (function-transform #'gl-extension-function-definition) extension-name)
    (unless extension-name (setf extension-name category-name)) 
    (with-open-file (out (merge-pathnames (format nil "lib/opengl-~a.lisp" extension-name) *base*)
			 :direction :output :if-exists :supersede) 
      (print '(in-package #:gl) out)
      (let ((enumerations 
	     (apply #'append 
		    (loop while (getf enum-specs category-name) collecting
			 (prog1
			     (mapcar #'(lambda (enum-name)
					 (gl-enumeration-definition category-name enum-name))
				     (remove-if 
				      #'(lambda (enum-name)
					  (find enum-name predefined-enumerants))
				      (plist-keys (getf enum-specs category-name))))
			   (remf enum-specs category-name)))))
	    (functions
	     (apply #'append 
		    (loop while (getf function-categories category-name) collecting
			 (prog1
			     (mapcar function-transform (getf function-categories category-name))
			   (remf function-categories category-name))))))
	(when (or enumerations functions)
	  (format out "~&~%;;;; ~a~&" (symbol-name category-name))
	  (dolist (enumeration enumerations) (print enumeration out))
	  (dolist (function functions) (print function out)))))
    (with-open-file (out (merge-pathnames (format nil "lib/cl-glfw-opengl-~a.asd" extension-name) *base*)
			 :direction :output :if-exists :supersede)
      (let* ((system-name (string-downcase (format nil "cl-glfw-opengl-~a" extension-name)))
	     (system-package (make-symbol (string-upcase (concatenate 'string system-name "-system")))))
       (print `(defpackage ,system-package (:use #:asdf #:cl)) out)
       (print `(in-package ,system-package) out)
       (print `(defsystem ,(intern (string-upcase system-name))
		 :description ,(concatenate 'string "cl-glfw's " system-name " Binding")
		 :author ,(format nil "Generated by cl-glfw's ~a" *load-truename*)
		 :license "Public Domain"
		 :depends-on (cl-glfw ,@(let ((pos (position system-name *opengl-version-systems* :test 'equal)))
					       (when (and pos (plusp pos))
						 (list (intern (elt *opengl-version-systems* (1- pos)))))))
		 :components ((:module lib
				       :components ((:file ,(concatenate 'string "opengl-"
									 (string-downcase (symbol-name extension-name))))))))
	      out))))

  (defun gl-function-definition (func-spec)
    (push (lisp-name func-spec) exports)
    `(defglfun ,func-spec))

  (defun gl-enumeration-definition (enumeration-group-name enumeration-name)
    (let ((constant-name 
	   (intern (string-upcase
		    (format nil "+~a+"
			    (map 'string #'(lambda (c) (if (alphanumericp c) c #\-))
				 (symbol-name enumeration-name)))))))
      (push constant-name exports)
      `(defconstant ,constant-name
	 ,(getf (getf enum-specs enumeration-group-name)
		enumeration-name))))

  (defun gl-enumeration-definitions (enumeration-group-name)
    (mapcar #'(lambda (enumeration-name)
		(gl-enumeration-definition enumeration-group-name enumeration-name))
	    (plist-keys (getf enum-specs enumeration-group-name))))


  (let ((*print-case* :downcase) (*print-radix* t) (*print-base* 16))
    (with-open-file (out (merge-pathnames #P"src/opengl-body.lisp" *base*) :direction :output :if-exists :supersede)

      (defun output-category (category-name)
	(format out "~&~%;;;; ~a~%" category-name)
	(dolist (func-spec (getf function-categories category-name))
	  (print (gl-function-definition func-spec) out))
	(remf function-categories category-name))

	
      (dolist (enumeration-group-name (plist-keys enum-specs))
	(when (or (not (getf function-categories enumeration-group-name))
		  (find enumeration-group-name base-categories))
	  (let ((enumeration-names (plist-keys (getf enum-specs enumeration-group-name))))
	    (when enumeration-names
	      (format out "~&~%;;;; Enumerations: ~a~%" (symbol-name enumeration-group-name))
	      (dolist (enumeration-name enumeration-names)
		(if (find enumeration-name predefined-enumerants)
		    (format out "~&;; ~a already defined" enumeration-name)
		    (let ((*print-radix* t) (*print-base* 16))
		      (push enumeration-name predefined-enumerants)
		      (print (gl-enumeration-definition enumeration-group-name enumeration-name) out))))))
	  (remf enum-specs enumeration-group-name)))

      ;; generate the functions for all of the 1.0 functions
      (dolist (category-name base-categories)
	(output-category category-name)))

    (output-extension '|1_1| #'gl-function-definition 'VERSION_1_1)

    (output-extension 'VERSION_1_2 #'gl-function-definition)
    (output-extension 'VERSION_1_3 #'gl-function-definition)
    (output-extension 'VERSION_1_4 #'gl-function-definition)
    (output-extension 'VERSION_1_5 #'gl-function-definition)
    (output-extension 'VERSION_2_0 #'gl-function-definition)
    (output-extension 'VERSION_2_1 #'gl-function-definition)

    (dolist (category-name (remove-duplicates
			    (union (plist-keys function-categories)
				   (plist-keys enum-specs))))
      (output-extension category-name))

    (with-open-file (out (merge-pathnames #P"src/opengl-type-maps.lisp" *base*) :direction :output :if-exists :supersede)
      (print type-maps out))

    (with-open-file (out (merge-pathnames #P"src/opengl-exports.lisp" *base*) :direction :output :if-exists :supersede) 
      (dolist (export (remove-duplicates (nreverse exports)))
	(print export out))))
  (format t "Leftovers functions: ~%~s~%Leftover enums:~s" function-categories enum-specs))
