
(in-package #:gl) 

;;;; SGIS_fog_function

(defglextfun
 (("GetFogFuncSGIS" get-fog-func-sgis) :args
  ((:name |points| :type |Float32| :direction :out :array t)) :return ("void")
  :category ("SGIS_fog_function") :version ("1.1") :dlflags ("notlistable")
  :glxflags ("ignore") :extension nil :glsflags ("get") :glsopcode ("0x0191")
  :offset nil)) 
(defglextfun
 (("FogFuncSGIS" fog-func-sgis) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |points| :type |Float32| :direction :in :array t :size n*2))
  :return ("void") :category ("SGIS_fog_function") :version ("1.1") :glxflags
  ("SGI") :glxropcode ("2067") :extension nil :glsopcode ("0x0179") :offset
  nil)) 