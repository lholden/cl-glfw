(in-package #:cl-glfw-opengl)

(cffi:define-foreign-library opengl 
  (:windows (:or "opengl32" "opengl32.dll" "opengl"))
  (:darwin (:framework "OpenGL"))
  (:unix (:or "libGL" "libGL.so" "libGL.so.2" "libGL.so.1.2" "libGL.so.1"))
  (t (:or "libGL" "GL")))

(cffi:use-foreign-library opengl)
