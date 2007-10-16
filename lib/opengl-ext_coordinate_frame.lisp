
(in-package #:gl) 

;;;; EXT_coordinate_frame

(defconstant +tangent-array-ext+ #x8439) 
(defconstant +binormal-array-ext+ #x843A) 
(defconstant +current-tangent-ext+ #x843B) 
(defconstant +current-binormal-ext+ #x843C) 
(defconstant +tangent-array-type-ext+ #x843E) 
(defconstant +tangent-array-stride-ext+ #x843F) 
(defconstant +binormal-array-type-ext+ #x8440) 
(defconstant +binormal-array-stride-ext+ #x8441) 
(defconstant +tangent-array-pointer-ext+ #x8442) 
(defconstant +binormal-array-pointer-ext+ #x8443) 
(defconstant +map1-tangent-ext+ #x8444) 
(defconstant +map2-tangent-ext+ #x8445) 
(defconstant +map1-binormal-ext+ #x8446) 
(defconstant +map2-binormal-ext+ #x8447) 
(defglextfun
 (("BinormalPointerEXT" binormal-pointer-ext) :args
  ((:name |type| :type |BinormalPointerTypeEXT| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size
    (|type| |stride|) :retained t))
  :return ("void") :category ("EXT_coordinate_frame") :dlflags ("notlistable")
  :glxflags ("client-handcode" "client-intercept" "server-handcode") :version
  ("1.1") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TangentPointerEXT" tangent-pointer-ext) :args
  ((:name |type| :type |TangentPointerTypeEXT| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size
    (|type| |stride|) :retained t))
  :return ("void") :category ("EXT_coordinate_frame") :dlflags ("notlistable")
  :glxflags ("client-handcode" "client-intercept" "server-handcode") :version
  ("1.1") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Binormal3svEXT" binormal-3sv-ext) :args
  ((:name |v| :type |Int16| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_coordinate_frame") :version ("1.1") :glxropcode
  ("?") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Binormal3sEXT" binormal-3s-ext) :args
  ((:name |bx| :type |Int16| :direction :in)
   (:name |by| :type |Int16| :direction :in)
   (:name |bz| :type |Int16| :direction :in))
  :return ("void") :category ("EXT_coordinate_frame") :vectorequiv
  ("Binormal3svEXT") :version ("1.1") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Binormal3ivEXT" binormal-3iv-ext) :args
  ((:name |v| :type |Int32| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_coordinate_frame") :version ("1.1") :glxropcode
  ("?") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Binormal3iEXT" binormal-3i-ext) :args
  ((:name |bx| :type |Int32| :direction :in)
   (:name |by| :type |Int32| :direction :in)
   (:name |bz| :type |Int32| :direction :in))
  :return ("void") :category ("EXT_coordinate_frame") :vectorequiv
  ("Binormal3ivEXT") :version ("1.1") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Binormal3fvEXT" binormal-3fv-ext) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_coordinate_frame") :version ("1.1") :glxropcode
  ("?") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Binormal3fEXT" binormal-3f-ext) :args
  ((:name |bx| :type |CoordF| :direction :in)
   (:name |by| :type |CoordF| :direction :in)
   (:name |bz| :type |CoordF| :direction :in))
  :return ("void") :category ("EXT_coordinate_frame") :vectorequiv
  ("Binormal3fvEXT") :version ("1.1") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Binormal3dvEXT" binormal-3dv-ext) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_coordinate_frame") :version ("1.1") :glxropcode
  ("?") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Binormal3dEXT" binormal-3d-ext) :args
  ((:name |bx| :type |CoordD| :direction :in)
   (:name |by| :type |CoordD| :direction :in)
   (:name |bz| :type |CoordD| :direction :in))
  :return ("void") :category ("EXT_coordinate_frame") :vectorequiv
  ("Binormal3dvEXT") :version ("1.1") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Binormal3bvEXT" binormal-3bv-ext) :args
  ((:name |v| :type |Int8| :direction :in :array t :size #x3)) :return ("void")
  :category ("EXT_coordinate_frame") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Binormal3bEXT" binormal-3b-ext) :args
  ((:name |bx| :type |Int8| :direction :in)
   (:name |by| :type |Int8| :direction :in)
   (:name |bz| :type |Int8| :direction :in))
  :return ("void") :category ("EXT_coordinate_frame") :vectorequiv
  ("Binormal3bvEXT") :version ("1.1") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Tangent3svEXT" tangent-3sv-ext) :args
  ((:name |v| :type |Int16| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_coordinate_frame") :version ("1.1") :glxropcode
  ("?") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Tangent3sEXT" tangent-3s-ext) :args
  ((:name |tx| :type |Int16| :direction :in)
   (:name |ty| :type |Int16| :direction :in)
   (:name |tz| :type |Int16| :direction :in))
  :return ("void") :category ("EXT_coordinate_frame") :vectorequiv
  ("Tangent3svEXT") :version ("1.1") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Tangent3ivEXT" tangent-3iv-ext) :args
  ((:name |v| :type |Int32| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_coordinate_frame") :version ("1.1") :glxropcode
  ("?") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Tangent3iEXT" tangent-3i-ext) :args
  ((:name |tx| :type |Int32| :direction :in)
   (:name |ty| :type |Int32| :direction :in)
   (:name |tz| :type |Int32| :direction :in))
  :return ("void") :category ("EXT_coordinate_frame") :vectorequiv
  ("Tangent3ivEXT") :version ("1.1") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Tangent3fvEXT" tangent-3fv-ext) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_coordinate_frame") :version ("1.1") :glxropcode
  ("?") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Tangent3fEXT" tangent-3f-ext) :args
  ((:name |tx| :type |CoordF| :direction :in)
   (:name |ty| :type |CoordF| :direction :in)
   (:name |tz| :type |CoordF| :direction :in))
  :return ("void") :category ("EXT_coordinate_frame") :vectorequiv
  ("Tangent3fvEXT") :version ("1.1") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Tangent3dvEXT" tangent-3dv-ext) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_coordinate_frame") :version ("1.1") :glxropcode
  ("?") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Tangent3dEXT" tangent-3d-ext) :args
  ((:name |tx| :type |CoordD| :direction :in)
   (:name |ty| :type |CoordD| :direction :in)
   (:name |tz| :type |CoordD| :direction :in))
  :return ("void") :category ("EXT_coordinate_frame") :vectorequiv
  ("Tangent3dvEXT") :version ("1.1") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Tangent3bvEXT" tangent-3bv-ext) :args
  ((:name |v| :type |Int8| :direction :in :array t :size #x3)) :return ("void")
  :category ("EXT_coordinate_frame") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Tangent3bEXT" tangent-3b-ext) :args
  ((:name |tx| :type |Int8| :direction :in)
   (:name |ty| :type |Int8| :direction :in)
   (:name |tz| :type |Int8| :direction :in))
  :return ("void") :category ("EXT_coordinate_frame") :vectorequiv
  ("Tangent3bvEXT") :version ("1.1") :glsflags ("ignore") :offset ("?"))) 