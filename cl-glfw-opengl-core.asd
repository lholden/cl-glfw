(defpackage #:cl-glfw-opengl-system
  (:use #:asdf #:cl))

(in-package #:cl-glfw-opengl-system)
 
(defsystem cl-glfw-opengl-core
  :description "Common Lisp bindings for OpenGL (cl-glfw version)"
  :version "0.3"
  :author "William Robinson <airbaggins@users.sf.net>"
  :licence "Public Domain"
  :depends-on (cffi cl-glfw-types)
  :components ((:module lib 
                        :serial t
                        :components 
                        ((:file "scaffolding")
                         (:file "opengl-package") ; template-expanded
                         (:file "opengl-type-map") ; template-expanded
                         (:file "opengl-library")
                         (:file "opengl-core") ; template-expanded
                         (:file "opengl-convenience")
                         (:file "opengl-extensions")))))


(pushnew (merge-pathnames
          #P"lib/"
          (make-pathname :name nil 
                         :type nil 
                         :version nil
                         :defaults
                         (truename (asdf:system-definition-pathname '#:cl-glfw-opengl-core))))
         asdf:*central-registry*)