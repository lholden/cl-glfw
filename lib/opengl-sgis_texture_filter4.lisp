
(in-package #:gl) 

;;;; SGIS_texture_filter4

(defglextfun
 (("TexFilterFuncSGIS" tex-filter-func-sgis) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |filter| :type |TextureFilterSGIS| :direction :in)
   (:name |n| :type |SizeI| :direction :in)
   (:name |weights| :type |Float32| :direction :in :array t :size n))
  :return ("void") :category ("SGIS_texture_filter4") :glxflags ("SGI")
  :version ("1.0") :glxropcode ("2064") :extension nil :glsopcode ("0x0176")
  :offset ("416"))) 
(defglextfun
 (("GetTexFilterFuncSGIS" get-tex-filter-func-sgis) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |filter| :type |TextureFilterSGIS| :direction :in)
   (:name |weights| :type |Float32| :direction :out :array t :size
    (|target| |filter|)))
  :return ("void") :category ("SGIS_texture_filter4") :dlflags ("notlistable")
  :version ("1.0") :glxflags ("SGI") :glxvendorpriv ("4101") :extension nil
  :glsflags ("get") :glsopcode ("0x0175") :offset ("415"))) 