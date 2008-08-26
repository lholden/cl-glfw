(in-package #:cl-glfw-opengl)


(cffi:define-foreign-library opengl 
  (:unix (:or "libGL" "libGL.so" "libGL.so.1.2"))
  (:windows (:or "opengl" "opengl32" "opengl32.dll"))
  (:framework "OpenGL")
  (t "libGL" "GL"))

(use-foreign-library opengl)
