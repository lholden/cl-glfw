(defpackage #:cl-glfw-system
  (:use #:asdf #:cl))

(in-package #:cl-glfw-system)
 
(defsystem "cl-glfw"
  :description "Common Lisp bindings for GLFW"
  :version "0.1"
  :author "William Robinson <airbaggins@users.sf.net>"
  :licence "Public Domain"
  :depends-on ("cffi")
  :components ((:module "lib"
			:components ((:file "opengl")
				     (:file "opengl-version_1_1" :depends-on ("opengl"))
				     (:file "glu" :depends-on ("opengl-version_1_1"))
				     (:file "glfw" :depends-on ("opengl-version_1_1"))))))