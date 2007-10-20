
(in-package #:gl) 

;;;; NV_register_combiners2

(defconstant +per-stage-constants-nv+ #x8535) 
(defglextfun
 (("GetCombinerStageParameterfvNV" get-combiner-stage-parameter-fv-nv) :args
  ((:name |stage| :type |CombinerStageNV| :direction :in)
   (:name |pname| :type |CombinerParameterNV| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :dlflags ("notlistable") :category
  ("NV_register_combiners2") :version ("1.1") :extension nil :glxflags
  ("ignore") :glsflags ("get") :glsopcode ("0x0226") :offset ("?"))) 
(defglextfun
 (("CombinerStageParameterfvNV" combiner-stage-parameter-fv-nv) :args
  ((:name |stage| :type |CombinerStageNV| :direction :in)
   (:name |pname| :type |CombinerParameterNV| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("NV_register_combiners2") :version ("1.1")
  :extension nil :glxflags ("ignore") :glsopcode ("0x0225") :offset ("?"))) 