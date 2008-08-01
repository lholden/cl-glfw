(defpackage #:cl-glfw-system
  (:use #:asdf #:cl))

(in-package #:cl-glfw-system)
 
(defsystem cl-glfw
  :description "Common Lisp bindings for GLFW"
  :version "0.3"
  :author "William Robinson <airbaggins@users.sf.net>"
  :licence "Public Domain"
  :depends-on (cffi cl-glfw-types)
  :components ((:module lib :serial t 
                        :components ((:file "glfw-package")
                                     (:file "glfw-lib")
                                     (:file "glfw-macros")
                                     (:file "glfw")))))