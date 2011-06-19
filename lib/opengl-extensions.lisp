(defpackage #:cl-glfw-opengl-extensions
  (:nicknames #:gl-ext)
  (:use #:cl)
  (:export #:scan-available-extensions #:available-extensions #:extension-available-p #:load-extension))

(in-package #:gl-ext)

(defparameter *available* nil)

(defun scan-available-extensions ()
  (let ((*readtable* (copy-readtable nil)))
    (setf (readtable-case *readtable*) :preserve)
    (setf *available*
          (mapcar #'(lambda (ext-name) (subseq (symbol-name ext-name) 3))
                  (read-from-string (format nil "(~a)" (gl:get-string gl:+extensions+)))))))

(defun available-extensions ()
  (if (and *available* (not (equal *available* '(""))) (not (eql *available* '(nil))))
      *available*
      (scan-available-extensions)))

(defun extension-available-p (extension)
  (declare (type string extension))
  (find extension (available-extensions) :test 'equalp))