(defpackage #:cl-glfw-opengl-extensions
  (:nicknames #:gl-ext)
  (:use #:cl)
  (:export #:scan-available-extensions #:available-extensions #:extension-available-p #:load-extension))

(in-package #:gl-ext)

(declaim (optimize (debug 3) (speed 0) (space 0)))

(defparameter *available* nil)

(defun scan-available-extensions ()
  (setf *available*
	(let ((extensions-string (gl:get-string gl:+extensions+)))
	  (when (and extensions-string
		     (stringp extensions-string)
		     (plusp (length extensions-string)))
	    (loop for i = 0 then (1+ j)
	       as j = (position #\Space extensions-string :start i)
	       while (< i (length extensions-string))
	       collect (subseq extensions-string (+ i 3) j)
	       while j)))))

(defun available-extensions ()
  (or *available* (scan-available-extensions)))

(defun extension-available-p (extension)
  (declare (type string extension))
  (find extension (available-extensions) :test 'equalp))