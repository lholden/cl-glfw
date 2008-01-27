(defpackage #:cl-glfw-types-system
  (:use #:asdf #:cl))

(in-package #:cl-glfw-types-system)
 
(defsystem cl-glfw-types
  :description "Common Lisp bindings for GLFW: Base CFFI type definitions and expanders package"
  :version "0.3"
  :author "William Robinson <airbaggins@users.sf.net>"
  :licence "Public Domain"
  :depends-on (cffi)
  :components ((:module lib :components ((:file "types")))))