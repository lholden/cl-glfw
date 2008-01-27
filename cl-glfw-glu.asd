(defpackage #:cl-glfw-glu-system
  (:use #:asdf #:cl))

(in-package #:cl-glfw-glu-system)
 
(defsystem cl-glfw-glu
  :description "Common Lisp bindings for GLU (cl-glfw version)"
  :version "0.3"
  :author "William Robinson <airbaggins@users.sf.net>"
  :licence "Public Domain"
  :depends-on (cffi cl-glfw-types)
  :components ((:module lib :components ((:file "glu")))))

(pushnew (merge-pathnames
          #P"lib/"
          (make-pathname :name nil 
                         :type nil 
                         :version nil
                         :defaults
                         (truename (asdf:system-definition-pathname '#:cl-glfw-glu))))
         asdf:*central-registry*)