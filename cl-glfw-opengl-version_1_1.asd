
(defpackage #:cl-glfw-opengl-version_1_1-system (:use #:asdf #:cl)) 
(in-package #:cl-glfw-opengl-version_1_1-system) 
(defsystem "cl-glfw-opengl-version_1_1" :description
 "cl-glfw's cl-glfw-opengl-version_1_1 Binding" :author
 "Generated by cl-glfw's /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp"
 :license "Public Domain" :depends-on ("cl-glfw") :components
 ((:module "lib" :components ((:file "opengl-version_1_1"))))) 