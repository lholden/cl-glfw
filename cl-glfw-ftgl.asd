(defpackage #:cl-glfw-ftgl-system
  (:use #:cl #:asdf))
(in-package #:cl-glfw-ftgl-system)

(defsystem cl-glfw-ftgl
  :depends-on (cffi)
  :components ((:module lib
			:components ((:file "ftgl")))))
