
(in-package #:gl) 

;;;; EXT_depth_bounds_test

(defconstant +depth-bounds-test-ext+ #x8890) 
(defconstant +depth-bounds-ext+ #x8891) 
(defglextfun
 (("DepthBoundsEXT" depth-bounds-ext) :args
  ((:name |zmin| :type |ClampedFloat64| :direction :in)
   (:name |zmax| :type |ClampedFloat64| :direction :in))
  :return ("void") :category ("EXT_depth_bounds_test") :version ("1.2")
  :extension nil :glxropcode ("4229") :glsopcode ("?") :offset ("699"))) 