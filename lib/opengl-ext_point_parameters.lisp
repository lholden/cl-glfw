
(in-package #:gl) 

;;;; EXT_point_parameters

(defconstant +point-size-min-ext+ #x8126) 
(defconstant +point-size-max-ext+ #x8127) 
(defconstant +point-fade-threshold-size-ext+ #x8128) 
(defconstant +distance-attenuation-ext+ #x8129) 
(defglextfun
 (("PointParameterfvEXT" point-parameter-fv-ext) :args
  ((:name |pname| :type |PointParameterNameARB| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("EXT_point_parameters") :version ("1.0")
  :glxflags ("SGI") :extension nil :alias ("PointParameterfvARB") :glsalias
  ("PointParameterfvARB"))) 
(defglextfun
 (("PointParameterfEXT" point-parameter-f-ext) :args
  ((:name |pname| :type |PointParameterNameARB| :direction :in)
   (:name |param| :type |CheckedFloat32| :direction :in))
  :return ("void") :category ("EXT_point_parameters") :version ("1.0")
  :glxflags ("SGI") :extension nil :alias ("PointParameterfARB") :glsalias
  ("PointParameterfARB"))) 