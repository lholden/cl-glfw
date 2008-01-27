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
                        :serial t
                        :components 
                        ((:file "opengl-package")
                         (:file "opengl-types")
                         (:file "opengl")
                         (:file "opengl-convenience")
                         (:file "opengl-extensions")))))


(pushnew (merge-pathnames
          #P"lib/"
          (make-pathname :name nil 
                         :type nil 
                         :version nil
                         :defaults
                         (truename (asdf:system-definition-pathname '#:cl-glfw-opengl))))
         asdf:*central-registry*)