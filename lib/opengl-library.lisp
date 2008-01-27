(in-package #:cl-glfw-opengl)

(cffi:load-foreign-library '(:or (:framework "OpenGL")
                             "opengl32.dll"
                             (:default "libGL")
                             (:default "opengl")
                             (:default "opengl32")
                             (:default "GL")
                             (:default "gl")
                             (:default "libOpenGL")
                             (:default "OpenGL")))