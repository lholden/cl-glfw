
(defpackage #:cl-glfw-opengl-sgix_instruments-system (:use #:asdf #:cl)) 
(in-package #:cl-glfw-opengl-sgix_instruments-system) 
(defsystem "cl-glfw-opengl-sgix_instruments" :description
 "cl-glfw's cl-glfw-opengl-sgix_instruments Binding" :author
 "Generated by cl-glfw's /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp"
 :license "Public Domain" :depends-on ("cl-glfw") :components
 ((:module "lib" :components ((:file "opengl-sgix_instruments"))))) 