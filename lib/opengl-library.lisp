(in-package #:cl-glfw-opengl)

#+ecl
(ffi:load-foreign-library #+unix "GL"
			  #+windows "opengl32"
			  :system-library t)

#-ecl
(cffi:define-foreign-library opengl 
  (:windows (:or "opengl32" "opengl32.dll" "opengl"))
  (:darwin (:framework "OpenGL"))
  (:unix (:or "libGL" "libGL.so" "libGL.so.2" "libGL.so.1.2" "libGL.so.1"))
  (t (:or "libGL" "GL")))

#-ecl
(cffi:use-foreign-library opengl)


;;This is key to loading anything after OpenGL 1.1 on Windows
#+win32
(cffi:defcfun (get-proc-address "wglGetProcAddress") :pointer (name :string))
