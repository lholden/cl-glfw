(defpackage #:cl-glfw-glu-version_1_1-system
  (:use #:asdf #:cl))

(in-package #:cl-glfw-glu-version_1_1-system)
 
(defsystem cl-glfw-glu-version_1_1
  :description "Common Lisp bindings for GLFW - GLU 1.1 Extension Package"
  :version "0.1"
  :author "William Robinson <airbaggins@users.sf.net>"
  :licence "Public Domain"
  :depends-on (cl-glfw)
  :components ((:file "glu-version_1_1")))
