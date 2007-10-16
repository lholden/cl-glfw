
(in-package #:gl) 

;;;; NV_vertex_array_range

(defconstant +vertex-array-range-nv+ #x851D) 
(defconstant +vertex-array-range-length-nv+ #x851E) 
(defconstant +vertex-array-range-valid-nv+ #x851F) 
(defconstant +max-vertex-array-range-element-nv+ #x8520) 
(defconstant +vertex-array-range-pointer-nv+ #x8521) 
(defglextfun
 (("VertexArrayRangeNV" vertex-array-range-nv) :args
  ((:name |length| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size (|length|)
    :retained t))
  :return ("void") :category ("NV_vertex_array_range") :version ("1.1")
  :extension ("soft" "WINSOFT" "NV10") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode" "ignore") :glsflags ("client")
  :glsopcode ("0x01E1") :offset ("498"))) 
(defglextfun
 (("FlushVertexArrayRangeNV" flush-vertex-array-range-nv) :args nil :return
  ("void") :category ("NV_vertex_array_range") :version ("1.1") :extension
  ("soft" "WINSOFT" "NV10") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode" "ignore") :glsflags ("client")
  :glsopcode ("0x01E0") :offset ("497"))) 