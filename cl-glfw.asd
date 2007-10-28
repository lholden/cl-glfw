(defpackage #:cl-glfw-system
  (:use #:asdf #:cl))

(in-package #:cl-glfw-system)
 
(defsystem cl-glfw
  :description "Common Lisp bindings for GLFW"
  :version "0.1"
  :author "William Robinson <airbaggins@users.sf.net>"
  :licence "Public Domain"
  :depends-on (cffi)
  :components ((:module lib
			:components ((:file "opengl")
				     (:file "opengl-convenience" :depends-on ("opengl"))
				     (:file "opengl-extensions" :depends-on ("opengl"))
				     (:file "glu" :depends-on ("opengl"))
				     (:file "glfw" :depends-on ("opengl"))))))
