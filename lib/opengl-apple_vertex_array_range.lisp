
(in-package #:gl) 

;;;; APPLE_vertex_array_range

(defconstant +vertex-array-range-apple+ #x851D) 
(defconstant +vertex-array-range-length-apple+ #x851E) 
(defconstant +vertex-array-storage-hint-apple+ #x851F) 
(defconstant +vertex-array-range-pointer-apple+ #x8521) 
(defconstant +storage-cached-apple+ #x85BE) 
(defconstant +storage-shared-apple+ #x85BF) 
(defglextfun
 (("VertexArrayParameteriAPPLE" vertex-array-parameteri-apple) :args
  ((:name |pname| :type |VertexArrayPNameAPPLE| :direction :in)
   (:name |param| :type |Int32| :direction :in))
  :return ("void") :category ("APPLE_vertex_array_range") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?")
  :offset ("?"))) 
(defglextfun
 (("FlushVertexArrayRangeAPPLE" flush-vertex-array-range-apple) :args
  ((:name |length| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :out :array t :size length))
  :return ("void") :category ("APPLE_vertex_array_range") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?")
  :offset ("?"))) 
(defglextfun
 (("VertexArrayRangeAPPLE" vertex-array-range-apple) :args
  ((:name |length| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :out :array t :size length))
  :return ("void") :category ("APPLE_vertex_array_range") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?")
  :offset ("?"))) 