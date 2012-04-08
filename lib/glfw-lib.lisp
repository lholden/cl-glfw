
(in-package #:cl-glfw)

#+ecl
(ffi:load-foreign-library "glfw" :system-library t)

#-ecl
(cffi:define-foreign-library libglfw
  (:darwin (:or "libglfw.dylib" (:framework "GLFW")))
  (:unix (:or "glfw" "libglfw.so" "libglfw.so.2"  #P"/usr/local/lib/libglfw.so"))
  (:windows (:or "glfw.dll" "libglfw.dll")) 
  (t (:default "libglfw")))

#-ecl
(cffi:use-foreign-library libglfw)
