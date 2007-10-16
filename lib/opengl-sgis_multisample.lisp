
(in-package #:gl) 

;;;; SGIS_multisample

(defglextfun
 (("SamplePatternSGIS" sample-pattern-sgis) :args
  ((:name |pattern| :type |SamplePatternSGIS| :direction :in)) :return ("void")
  :category ("SGIS_multisample") :version ("1.0") :glxropcode ("2049")
  :glxflags ("SGI") :extension nil :alias ("SamplePatternEXT") :glsalias
  ("SamplePatternEXT"))) 
(defglextfun
 (("SampleMaskSGIS" sample-mask-sgis) :args
  ((:name |value| :type |ClampedFloat32| :direction :in)
   (:name |invert| :type |Boolean| :direction :in))
  :return ("void") :category ("SGIS_multisample") :version ("1.1") :glxropcode
  ("2048") :glxflags ("SGI") :extension nil :alias ("SampleMaskEXT") :glsalias
  ("SampleMaskEXT"))) 