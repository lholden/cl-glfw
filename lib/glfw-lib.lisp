
(in-package #:cl-glfw)


;; ECL's DFFI seems to have issues if you don't put the full path in
#+(and unix ecl)
(setf cffi:*foreign-library-directories* 
      (list "/usr/local/lib/" "/usr/lib/"))

(cffi:define-foreign-library libglfw
  (:darwin  (:framework "GLFW"))
  (:unix (:or "glfw" "libglfw.so"  #P"/usr/local/lib/libglfw.so"))
  (:windows (:or "glfw.dll" "libglfw.dll")) 
  (t (:default "libglfw")))

(cffi:use-foreign-library libglfw)
