(defpackage #:cl-glfw-opengl-system
  (:use #:asdf #:cl))

(in-package #:cl-glfw-opengl-system)
 
(defsystem cl-glfw-opengl
  :description "Common Lisp bindings for OpenGL (cl-glfw version)"
  :version "0.3"
  :author "William Robinson <airbaggins@users.sf.net>"
  :licence "Public Domain"
  :depends-on (cffi)
  :components ((:module lib 
                        :components 
                        ((:file "opengl")
                         (:file "opengl-convenience" :depends-on ("opengl"))
                         (:file "opengl-extensions" :depends-on ("opengl"))))))


(push (merge-pathnames
       #P"lib/"
       (make-pathname :name nil 
                      :type nil 
                      :version nil
                      :defaults
                      (truename (asdf:system-definition-pathname '#:cl-glfw-opengl))))
      *central-registry*)