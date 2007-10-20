
(in-package #:gl) 

;;;; NV_depth_buffer_float

(defconstant +depth-component32f-nv+ #x8DAB) 
(defconstant +depth32f-stencil8-nv+ #x8DAC) 
(defconstant +float-32-unsigned-int-24-8-rev-nv+ #x8DAD) 
(defconstant +depth-buffer-float-mode-nv+ #x8DAF) 
(defglextfun
 (("DepthBoundsdNV" depth-bounds-d-nv) :args
  ((:name |zmin| :type |Float64| :direction :in)
   (:name |zmax| :type |Float64| :direction :in))
  :return ("void") :category ("NV_depth_buffer_float") :extension
  ("soft" "WINSOFT" "NV50") :version ("2.0") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("ClearDepthdNV" clear-depth-d-nv) :args
  ((:name |depth| :type |Float64| :direction :in)) :return ("void") :category
  ("NV_depth_buffer_float") :extension ("soft" "WINSOFT" "NV50") :version
  ("2.0") :glfflags ("ignore") :glsflags ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("DepthRangedNV" depth-ranged-nv) :args
  ((:name |zNear| :type |Float64| :direction :in)
   (:name |zFar| :type |Float64| :direction :in))
  :return ("void") :category ("NV_depth_buffer_float") :extension
  ("soft" "WINSOFT" "NV50") :version ("2.0") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 