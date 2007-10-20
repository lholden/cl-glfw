(defpackage #:opengl-extensions
  (:nicknames #:gl-ext)
  (:use #:cl)
  (:export #:scan-available-extensions #:available-extensions #:extension-available-p #:load-extension))

(in-package #:gl-ext)

(defparameter *available* nil)

(defun scan-available-extensions ()
  (setf *available*
	(mapcar #'(lambda (ext-name) (subseq (symbol-name ext-name) 3))
		(let ((*readtable* (copy-readtable nil)))
		  (setf (readtable-case *readtable*) :preserve)
		  (read-from-string (format nil "(~a)" (gl:get-string gl:+extensions+)))))))

(defun available-extensions ()
  (if (and *available* (not (eql *available* '(nil))))
      *available*
      (scan-available-extensions)))

(defun extension-available-p (extension)
  (declare (type string extension))
  (find extension (available-extensions) :test 'equalp))

(defun load-extension (extension)
  "Try to load an opengl extension where the extension name is a string of the form
     \"ARB_vertex_buffer_object\". Returns t if the extension is available and loads,
     otherwise, nil."
  (let ((extension (extension-available-p extension)))
    (when extension
      (asdf:oos 'asdf:load-op (string-downcase (format nil "cl-glfw-opengl-~a" extension)))
      t)))