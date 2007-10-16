
(in-package #:gl) 

;;;; NV_evaluators

(defconstant +eval-2d-nv+ #x86C0) 
(defconstant +eval-triangular-2d-nv+ #x86C1) 
(defconstant +map-tessellation-nv+ #x86C2) 
(defconstant +map-attrib-u-order-nv+ #x86C3) 
(defconstant +map-attrib-v-order-nv+ #x86C4) 
(defconstant +eval-fractional-tessellation-nv+ #x86C5) 
(defconstant +eval-vertex-attrib0-nv+ #x86C6) 
(defconstant +eval-vertex-attrib1-nv+ #x86C7) 
(defconstant +eval-vertex-attrib2-nv+ #x86C8) 
(defconstant +eval-vertex-attrib3-nv+ #x86C9) 
(defconstant +eval-vertex-attrib4-nv+ #x86CA) 
(defconstant +eval-vertex-attrib5-nv+ #x86CB) 
(defconstant +eval-vertex-attrib6-nv+ #x86CC) 
(defconstant +eval-vertex-attrib7-nv+ #x86CD) 
(defconstant +eval-vertex-attrib8-nv+ #x86CE) 
(defconstant +eval-vertex-attrib9-nv+ #x86CF) 
(defconstant +eval-vertex-attrib10-nv+ #x86D0) 
(defconstant +eval-vertex-attrib11-nv+ #x86D1) 
(defconstant +eval-vertex-attrib12-nv+ #x86D2) 
(defconstant +eval-vertex-attrib13-nv+ #x86D3) 
(defconstant +eval-vertex-attrib14-nv+ #x86D4) 
(defconstant +eval-vertex-attrib15-nv+ #x86D5) 
(defconstant +max-map-tessellation-nv+ #x86D6) 
(defconstant +max-rational-eval-order-nv+ #x86D7) 
(defglextfun
 (("EvalMapsNV" eval-maps-nv) :args
  ((:name |target| :type |EvalTargetNV| :direction :in)
   (:name |mode| :type |EvalMapsModeNV| :direction :in))
  :return ("void") :category ("NV_evaluators") :version ("1.1") :extension
  ("soft" "WINSOFT" "NV10") :glxflags ("ignore") :glsopcode ("0x0224") :offset
  ("?"))) 
(defglextfun
 (("GetMapAttribParameterfvNV" get-map-attrib-parameter-fv-nv) :args
  ((:name |target| :type |EvalTargetNV| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |pname| :type |MapAttribParameterNV| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("NV_evaluators") :dlflags ("notlistable")
  :version ("1.1") :extension ("soft" "WINSOFT" "NV10") :glxflags ("ignore")
  :glsflags ("get") :glsopcode ("0x0223") :offset ("?"))) 
(defglextfun
 (("GetMapAttribParameterivNV" get-map-attrib-parameter-iv-nv) :args
  ((:name |target| :type |EvalTargetNV| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |pname| :type |MapAttribParameterNV| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("NV_evaluators") :dlflags ("notlistable")
  :version ("1.1") :extension ("soft" "WINSOFT" "NV10") :glxflags ("ignore")
  :glsflags ("get") :glsopcode ("0x0222") :offset ("?"))) 
(defglextfun
 (("GetMapParameterfvNV" get-map-parameter-fv-nv) :args
  ((:name |target| :type |EvalTargetNV| :direction :in)
   (:name |pname| :type |MapParameterNV| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size
    (|target| |pname|)))
  :return ("void") :category ("NV_evaluators") :dlflags ("notlistable")
  :version ("1.1") :extension ("soft" "WINSOFT" "NV10") :glxflags ("ignore")
  :glsflags ("get") :glsopcode ("0x0221") :offset ("?"))) 
(defglextfun
 (("GetMapParameterivNV" get-map-parameter-iv-nv) :args
  ((:name |target| :type |EvalTargetNV| :direction :in)
   (:name |pname| :type |MapParameterNV| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size
    (|target| |pname|)))
  :return ("void") :category ("NV_evaluators") :dlflags ("notlistable")
  :version ("1.1") :extension ("soft" "WINSOFT" "NV10") :glxflags ("ignore")
  :glsflags ("get") :glsopcode ("0x0220") :offset ("?"))) 
(defglextfun
 (("GetMapControlPointsNV" get-map-control-points-nv) :args
  ((:name |target| :type |EvalTargetNV| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |type| :type |MapTypeNV| :direction :in)
   (:name |ustride| :type |SizeI| :direction :in)
   (:name |vstride| :type |SizeI| :direction :in)
   (:name |packed| :type |Boolean| :direction :in)
   (:name |points| :type |Void| :direction :out :array t :size (|target|)))
  :return ("void") :category ("NV_evaluators") :dlflags ("notlistable")
  :version ("1.1") :extension ("soft" "WINSOFT" "NV10") :glxflags ("ignore")
  :glsflags ("get") :glsopcode ("0x021F") :offset ("?"))) 
(defglextfun
 (("MapParameterfvNV" map-parameter-fv-nv) :args
  ((:name |target| :type |EvalTargetNV| :direction :in)
   (:name |pname| :type |MapParameterNV| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|target| |pname|)))
  :return ("void") :category ("NV_evaluators") :version ("1.1") :extension
  ("soft" "WINSOFT" "NV10") :glxflags ("ignore") :glsflags ("ignore")
  :glsopcode ("0x021E") :offset ("?"))) 
(defglextfun
 (("MapParameterivNV" map-parameter-iv-nv) :args
  ((:name |target| :type |EvalTargetNV| :direction :in)
   (:name |pname| :type |MapParameterNV| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|target| |pname|)))
  :return ("void") :category ("NV_evaluators") :version ("1.1") :extension
  ("soft" "WINSOFT" "NV10") :glxflags ("ignore") :glsflags ("ignore")
  :glsopcode ("0x021D") :offset ("?"))) 
(defglextfun
 (("MapControlPointsNV" map-control-points-nv) :args
  ((:name |target| :type |EvalTargetNV| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |type| :type |MapTypeNV| :direction :in)
   (:name |ustride| :type |SizeI| :direction :in)
   (:name |vstride| :type |SizeI| :direction :in)
   (:name |uorder| :type |CheckedInt32| :direction :in)
   (:name |vorder| :type |CheckedInt32| :direction :in)
   (:name |packed| :type |Boolean| :direction :in)
   (:name |points| :type |Void| :direction :in :array t :size
    (|target| |uorder| |vorder|)))
  :return ("void") :category ("NV_evaluators") :dlflags ("handcode") :version
  ("1.1") :extension ("soft" "WINSOFT" "NV10") :glxflags ("ignore") :glsflags
  ("ignore") :glsopcode ("0x021C") :offset ("?"))) 