
(in-package #:gl) 

;;;; NV_occlusion_query

(defconstant +pixel-counter-bits-nv+ #x8864) 
(defconstant +current-occlusion-query-id-nv+ #x8865) 
(defconstant +pixel-count-nv+ #x8866) 
(defconstant +pixel-count-available-nv+ #x8867) 
(defglextfun
 (("GetOcclusionQueryuivNV" get-occlusion-query-uiv-nv) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |pname| :type |OcclusionQueryParameterNameNV| :direction :in)
   (:name |params| :type |UInt32| :direction :out :array t :size (|pname|)))
  :return ("void") :dlflags ("notlistable") :category ("NV_occlusion_query")
  :version ("1.2") :extension ("soft" "WINSOFT" "NV20") :glsflags ("ignore")
  :glxflags ("ignore"))) 
(defglextfun
 (("GetOcclusionQueryivNV" get-occlusion-query-iv-nv) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |pname| :type |OcclusionQueryParameterNameNV| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :dlflags ("notlistable") :category ("NV_occlusion_query")
  :version ("1.2") :extension ("soft" "WINSOFT" "NV20") :glsflags ("ignore")
  :glxflags ("ignore"))) 
(defglextfun
 (("EndOcclusionQueryNV" end-occlusion-query-nv) :args nil :return ("void")
  :category ("NV_occlusion_query") :version ("1.2") :extension
  ("soft" "WINSOFT" "NV20") :glsflags ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("BeginOcclusionQueryNV" begin-occlusion-query-nv) :args
  ((:name |id| :type |UInt32| :direction :in)) :return ("void") :category
  ("NV_occlusion_query") :version ("1.2") :extension ("soft" "WINSOFT" "NV20")
  :glsflags ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("IsOcclusionQueryNV" is-occlusion-query-nv) :args
  ((:name |id| :type |UInt32| :direction :in)) :return ("Boolean") :dlflags
  ("notlistable") :category ("NV_occlusion_query") :version ("1.2") :extension
  ("soft" "WINSOFT" "NV20") :glsflags ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("DeleteOcclusionQueriesNV" delete-occlusion-queries-nv) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |ids| :type |UInt32| :direction :in :array t :size n))
  :return ("void") :dlflags ("notlistable") :category ("NV_occlusion_query")
  :version ("1.2") :extension ("soft" "WINSOFT" "NV20") :glsflags ("ignore")
  :glxflags ("ignore"))) 
(defglextfun
 (("GenOcclusionQueriesNV" gen-occlusion-queries-nv) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |ids| :type |UInt32| :direction :out :array t :size n))
  :return ("void") :dlflags ("notlistable") :category ("NV_occlusion_query")
  :version ("1.2") :extension ("soft" "WINSOFT" "NV20") :glsflags ("ignore")
  :glxflags ("ignore"))) 