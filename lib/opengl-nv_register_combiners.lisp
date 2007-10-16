
(in-package #:gl) 

;;;; NV_register_combiners

(defconstant +register-combiners-nv+ #x8522) 
(defconstant +variable-a-nv+ #x8523) 
(defconstant +variable-b-nv+ #x8524) 
(defconstant +variable-c-nv+ #x8525) 
(defconstant +variable-d-nv+ #x8526) 
(defconstant +variable-e-nv+ #x8527) 
(defconstant +variable-f-nv+ #x8528) 
(defconstant +variable-g-nv+ #x8529) 
(defconstant +constant-color0-nv+ #x852A) 
(defconstant +constant-color1-nv+ #x852B) 
(defconstant +primary-color-nv+ #x852C) 
(defconstant +secondary-color-nv+ #x852D) 
(defconstant +spare0-nv+ #x852E) 
(defconstant +spare1-nv+ #x852F) 
(defconstant +discard-nv+ #x8530) 
(defconstant +e-times-f-nv+ #x8531) 
(defconstant +spare0-plus-secondary-color-nv+ #x8532) 
(defconstant +unsigned-identity-nv+ #x8536) 
(defconstant +unsigned-invert-nv+ #x8537) 
(defconstant +expand-normal-nv+ #x8538) 
(defconstant +expand-negate-nv+ #x8539) 
(defconstant +half-bias-normal-nv+ #x853A) 
(defconstant +half-bias-negate-nv+ #x853B) 
(defconstant +signed-identity-nv+ #x853C) 
(defconstant +signed-negate-nv+ #x853D) 
(defconstant +scale-by-two-nv+ #x853E) 
(defconstant +scale-by-four-nv+ #x853F) 
(defconstant +scale-by-one-half-nv+ #x8540) 
(defconstant +bias-by-negative-one-half-nv+ #x8541) 
(defconstant +combiner-input-nv+ #x8542) 
(defconstant +combiner-mapping-nv+ #x8543) 
(defconstant +combiner-component-usage-nv+ #x8544) 
(defconstant +combiner-ab-dot-product-nv+ #x8545) 
(defconstant +combiner-cd-dot-product-nv+ #x8546) 
(defconstant +combiner-mux-sum-nv+ #x8547) 
(defconstant +combiner-scale-nv+ #x8548) 
(defconstant +combiner-bias-nv+ #x8549) 
(defconstant +combiner-ab-output-nv+ #x854A) 
(defconstant +combiner-cd-output-nv+ #x854B) 
(defconstant +combiner-sum-output-nv+ #x854C) 
(defconstant +max-general-combiners-nv+ #x854D) 
(defconstant +num-general-combiners-nv+ #x854E) 
(defconstant +color-sum-clamp-nv+ #x854F) 
(defconstant +combiner0-nv+ #x8550) 
(defconstant +combiner1-nv+ #x8551) 
(defconstant +combiner2-nv+ #x8552) 
(defconstant +combiner3-nv+ #x8553) 
(defconstant +combiner4-nv+ #x8554) 
(defconstant +combiner5-nv+ #x8555) 
(defconstant +combiner6-nv+ #x8556) 
(defconstant +combiner7-nv+ #x8557) 
(defconstant +texture0-arb+ #x84C0) 
(defconstant +texture1-arb+ #x84C1) 
(defglextfun
 (("GetFinalCombinerInputParameterivNV"
   get-final-combiner-input-parameter-iv-nv)
  :args
  ((:name |variable| :type |CombinerVariableNV| :direction :in)
   (:name |pname| :type |CombinerParameterNV| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :dlflags ("notlistable") :category ("NV_register_combiners")
  :version ("1.1") :extension ("soft" "WINSOFT" "NV10") :glxvendorpriv ("1275")
  :glxflags ("ignore") :glsflags ("get") :glsopcode ("0x01EE") :offset ("511"))) 
(defglextfun
 (("GetFinalCombinerInputParameterfvNV"
   get-final-combiner-input-parameter-fv-nv)
  :args
  ((:name |variable| :type |CombinerVariableNV| :direction :in)
   (:name |pname| :type |CombinerParameterNV| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :dlflags ("notlistable") :category ("NV_register_combiners")
  :version ("1.1") :extension ("soft" "WINSOFT" "NV10") :glxvendorpriv ("1274")
  :glxflags ("ignore") :glsflags ("get") :glsopcode ("0x01ED") :offset ("510"))) 
(defglextfun
 (("GetCombinerOutputParameterivNV" get-combiner-output-parameter-iv-nv) :args
  ((:name |stage| :type |CombinerStageNV| :direction :in)
   (:name |portion| :type |CombinerPortionNV| :direction :in)
   (:name |pname| :type |CombinerParameterNV| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :dlflags ("notlistable") :category ("NV_register_combiners")
  :version ("1.1") :extension ("soft" "WINSOFT" "NV10") :glxvendorpriv ("1273")
  :glxflags ("ignore") :glsflags ("get") :glsopcode ("0x01EC") :offset ("509"))) 
(defglextfun
 (("GetCombinerOutputParameterfvNV" get-combiner-output-parameter-fv-nv) :args
  ((:name |stage| :type |CombinerStageNV| :direction :in)
   (:name |portion| :type |CombinerPortionNV| :direction :in)
   (:name |pname| :type |CombinerParameterNV| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :dlflags ("notlistable") :category ("NV_register_combiners")
  :version ("1.1") :extension ("soft" "WINSOFT" "NV10") :glxvendorpriv ("1272")
  :glxflags ("ignore") :glsflags ("get") :glsopcode ("0x01EB") :offset ("508"))) 
(defglextfun
 (("GetCombinerInputParameterivNV" get-combiner-input-parameter-iv-nv) :args
  ((:name |stage| :type |CombinerStageNV| :direction :in)
   (:name |portion| :type |CombinerPortionNV| :direction :in)
   (:name |variable| :type |CombinerVariableNV| :direction :in)
   (:name |pname| :type |CombinerParameterNV| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :dlflags ("notlistable") :category ("NV_register_combiners")
  :version ("1.1") :extension ("soft" "WINSOFT" "NV10") :glxvendorpriv ("1271")
  :glxflags ("ignore") :glsflags ("get") :glsopcode ("0x01EA") :offset ("507"))) 
(defglextfun
 (("GetCombinerInputParameterfvNV" get-combiner-input-parameter-fv-nv) :args
  ((:name |stage| :type |CombinerStageNV| :direction :in)
   (:name |portion| :type |CombinerPortionNV| :direction :in)
   (:name |variable| :type |CombinerVariableNV| :direction :in)
   (:name |pname| :type |CombinerParameterNV| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :dlflags ("notlistable") :category ("NV_register_combiners")
  :version ("1.1") :extension ("soft" "WINSOFT" "NV10") :glxvendorpriv ("1270")
  :glxflags ("ignore") :glsflags ("get") :glsopcode ("0x01E9") :offset ("506"))) 
(defglextfun
 (("FinalCombinerInputNV" final-combiner-input-nv) :args
  ((:name |variable| :type |CombinerVariableNV| :direction :in)
   (:name |input| :type |CombinerRegisterNV| :direction :in)
   (:name |mapping| :type |CombinerMappingNV| :direction :in)
   (:name |componentUsage| :type |CombinerComponentUsageNV| :direction :in))
  :return ("void") :category ("NV_register_combiners") :version ("1.1")
  :extension ("soft" "WINSOFT" "NV10") :glxropcode ("4142") :glxflags
  ("ignore") :glsopcode ("0x01E8") :offset ("505"))) 
(defglextfun
 (("CombinerOutputNV" combiner-output-nv) :args
  ((:name |stage| :type |CombinerStageNV| :direction :in)
   (:name |portion| :type |CombinerPortionNV| :direction :in)
   (:name |abOutput| :type |CombinerRegisterNV| :direction :in)
   (:name |cdOutput| :type |CombinerRegisterNV| :direction :in)
   (:name |sumOutput| :type |CombinerRegisterNV| :direction :in)
   (:name |scale| :type |CombinerScaleNV| :direction :in)
   (:name |bias| :type |CombinerBiasNV| :direction :in)
   (:name |abDotProduct| :type |Boolean| :direction :in)
   (:name |cdDotProduct| :type |Boolean| :direction :in)
   (:name |muxSum| :type |Boolean| :direction :in))
  :return ("void") :category ("NV_register_combiners") :version ("1.1")
  :extension ("soft" "WINSOFT" "NV10") :glxropcode ("4141") :glxflags
  ("ignore") :glsopcode ("0x01E7") :offset ("504"))) 
(defglextfun
 (("CombinerInputNV" combiner-input-nv) :args
  ((:name |stage| :type |CombinerStageNV| :direction :in)
   (:name |portion| :type |CombinerPortionNV| :direction :in)
   (:name |variable| :type |CombinerVariableNV| :direction :in)
   (:name |input| :type |CombinerRegisterNV| :direction :in)
   (:name |mapping| :type |CombinerMappingNV| :direction :in)
   (:name |componentUsage| :type |CombinerComponentUsageNV| :direction :in))
  :return ("void") :category ("NV_register_combiners") :version ("1.1")
  :extension ("soft" "WINSOFT" "NV10") :glxropcode ("4140") :glxflags
  ("ignore") :glsopcode ("0x01E6") :offset ("503"))) 
(defglextfun
 (("CombinerParameteriNV" combiner-parameter-i-nv) :args
  ((:name |pname| :type |CombinerParameterNV| :direction :in)
   (:name |param| :type |Int32| :direction :in))
  :return ("void") :category ("NV_register_combiners") :version ("1.1")
  :extension ("soft" "WINSOFT" "NV10") :glxropcode ("4138") :glxflags
  ("ignore") :glsflags ("gl-enum") :glsopcode ("0x01E5") :offset ("502"))) 
(defglextfun
 (("CombinerParameterivNV" combiner-parameter-iv-nv) :args
  ((:name |pname| :type |CombinerParameterNV| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("NV_register_combiners") :version ("1.1")
  :extension ("soft" "WINSOFT" "NV10") :glxropcode ("4139") :glxflags
  ("ignore") :glsflags ("gl-enum") :glsopcode ("0x01E4") :offset ("501"))) 
(defglextfun
 (("CombinerParameterfNV" combiner-parameter-f-nv) :args
  ((:name |pname| :type |CombinerParameterNV| :direction :in)
   (:name |param| :type |Float32| :direction :in))
  :return ("void") :category ("NV_register_combiners") :version ("1.1")
  :extension ("soft" "WINSOFT" "NV10") :glxropcode ("4136") :glxflags
  ("ignore") :glsflags ("gl-enum") :glsopcode ("0x01E3") :offset ("500"))) 
(defglextfun
 (("CombinerParameterfvNV" combiner-parameter-fv-nv) :args
  ((:name |pname| :type |CombinerParameterNV| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("NV_register_combiners") :version ("1.1")
  :extension ("soft" "WINSOFT" "NV10") :glxropcode ("4137") :glxflags
  ("ignore") :glsflags ("gl-enum") :glsopcode ("0x01E2") :offset ("499"))) 