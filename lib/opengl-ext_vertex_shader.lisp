
(in-package #:gl) 

;;;; EXT_vertex_shader

(defconstant +vertex-shader-ext+ #x8780) 
(defconstant +vertex-shader-binding-ext+ #x8781) 
(defconstant +op-index-ext+ #x8782) 
(defconstant +op-negate-ext+ #x8783) 
(defconstant +op-dot3-ext+ #x8784) 
(defconstant +op-dot4-ext+ #x8785) 
(defconstant +op-mul-ext+ #x8786) 
(defconstant +op-add-ext+ #x8787) 
(defconstant +op-madd-ext+ #x8788) 
(defconstant +op-frac-ext+ #x8789) 
(defconstant +op-max-ext+ #x878A) 
(defconstant +op-min-ext+ #x878B) 
(defconstant +op-set-ge-ext+ #x878C) 
(defconstant +op-set-lt-ext+ #x878D) 
(defconstant +op-clamp-ext+ #x878E) 
(defconstant +op-floor-ext+ #x878F) 
(defconstant +op-round-ext+ #x8790) 
(defconstant +op-exp-base-2-ext+ #x8791) 
(defconstant +op-log-base-2-ext+ #x8792) 
(defconstant +op-power-ext+ #x8793) 
(defconstant +op-recip-ext+ #x8794) 
(defconstant +op-recip-sqrt-ext+ #x8795) 
(defconstant +op-sub-ext+ #x8796) 
(defconstant +op-cross-product-ext+ #x8797) 
(defconstant +op-multiply-matrix-ext+ #x8798) 
(defconstant +op-mov-ext+ #x8799) 
(defconstant +output-vertex-ext+ #x879A) 
(defconstant +output-color0-ext+ #x879B) 
(defconstant +output-color1-ext+ #x879C) 
(defconstant +output-texture-coord0-ext+ #x879D) 
(defconstant +output-texture-coord1-ext+ #x879E) 
(defconstant +output-texture-coord2-ext+ #x879F) 
(defconstant +output-texture-coord3-ext+ #x87A0) 
(defconstant +output-texture-coord4-ext+ #x87A1) 
(defconstant +output-texture-coord5-ext+ #x87A2) 
(defconstant +output-texture-coord6-ext+ #x87A3) 
(defconstant +output-texture-coord7-ext+ #x87A4) 
(defconstant +output-texture-coord8-ext+ #x87A5) 
(defconstant +output-texture-coord9-ext+ #x87A6) 
(defconstant +output-texture-coord10-ext+ #x87A7) 
(defconstant +output-texture-coord11-ext+ #x87A8) 
(defconstant +output-texture-coord12-ext+ #x87A9) 
(defconstant +output-texture-coord13-ext+ #x87AA) 
(defconstant +output-texture-coord14-ext+ #x87AB) 
(defconstant +output-texture-coord15-ext+ #x87AC) 
(defconstant +output-texture-coord16-ext+ #x87AD) 
(defconstant +output-texture-coord17-ext+ #x87AE) 
(defconstant +output-texture-coord18-ext+ #x87AF) 
(defconstant +output-texture-coord19-ext+ #x87B0) 
(defconstant +output-texture-coord20-ext+ #x87B1) 
(defconstant +output-texture-coord21-ext+ #x87B2) 
(defconstant +output-texture-coord22-ext+ #x87B3) 
(defconstant +output-texture-coord23-ext+ #x87B4) 
(defconstant +output-texture-coord24-ext+ #x87B5) 
(defconstant +output-texture-coord25-ext+ #x87B6) 
(defconstant +output-texture-coord26-ext+ #x87B7) 
(defconstant +output-texture-coord27-ext+ #x87B8) 
(defconstant +output-texture-coord28-ext+ #x87B9) 
(defconstant +output-texture-coord29-ext+ #x87BA) 
(defconstant +output-texture-coord30-ext+ #x87BB) 
(defconstant +output-texture-coord31-ext+ #x87BC) 
(defconstant +output-fog-ext+ #x87BD) 
(defconstant +scalar-ext+ #x87BE) 
(defconstant +vector-ext+ #x87BF) 
(defconstant +matrix-ext+ #x87C0) 
(defconstant +variant-ext+ #x87C1) 
(defconstant +invariant-ext+ #x87C2) 
(defconstant +local-constant-ext+ #x87C3) 
(defconstant +local-ext+ #x87C4) 
(defconstant +max-vertex-shader-instructions-ext+ #x87C5) 
(defconstant +max-vertex-shader-variants-ext+ #x87C6) 
(defconstant +max-vertex-shader-invariants-ext+ #x87C7) 
(defconstant +max-vertex-shader-local-constants-ext+ #x87C8) 
(defconstant +max-vertex-shader-locals-ext+ #x87C9) 
(defconstant +max-optimized-vertex-shader-instructions-ext+ #x87CA) 
(defconstant +max-optimized-vertex-shader-variants-ext+ #x87CB) 
(defconstant +max-optimized-vertex-shader-local-constants-ext+ #x87CC) 
(defconstant +max-optimized-vertex-shader-invariants-ext+ #x87CD) 
(defconstant +max-optimized-vertex-shader-locals-ext+ #x87CE) 
(defconstant +vertex-shader-instructions-ext+ #x87CF) 
(defconstant +vertex-shader-variants-ext+ #x87D0) 
(defconstant +vertex-shader-invariants-ext+ #x87D1) 
(defconstant +vertex-shader-local-constants-ext+ #x87D2) 
(defconstant +vertex-shader-locals-ext+ #x87D3) 
(defconstant +vertex-shader-optimized-ext+ #x87D4) 
(defconstant +x-ext+ #x87D5) 
(defconstant +y-ext+ #x87D6) 
(defconstant +z-ext+ #x87D7) 
(defconstant +w-ext+ #x87D8) 
(defconstant +negative-x-ext+ #x87D9) 
(defconstant +negative-y-ext+ #x87DA) 
(defconstant +negative-z-ext+ #x87DB) 
(defconstant +negative-w-ext+ #x87DC) 
(defconstant +zero-ext+ #x87DD) 
(defconstant +one-ext+ #x87DE) 
(defconstant +negative-one-ext+ #x87DF) 
(defconstant +normalized-range-ext+ #x87E0) 
(defconstant +full-range-ext+ #x87E1) 
(defconstant +current-vertex-ext+ #x87E2) 
(defconstant +mvp-matrix-ext+ #x87E3) 
(defconstant +variant-value-ext+ #x87E4) 
(defconstant +variant-datatype-ext+ #x87E5) 
(defconstant +variant-array-stride-ext+ #x87E6) 
(defconstant +variant-array-type-ext+ #x87E7) 
(defconstant +variant-array-ext+ #x87E8) 
(defconstant +variant-array-pointer-ext+ #x87E9) 
(defconstant +invariant-value-ext+ #x87EA) 
(defconstant +invariant-datatype-ext+ #x87EB) 
(defconstant +local-constant-value-ext+ #x87EC) 
(defconstant +local-constant-datatype-ext+ #x87ED) 
(defglextfun
 (("GetLocalConstantFloatvEXT" get-local-constant-floatv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |value| :type |GetVariantValueEXT| :direction :in)
   (:name |data| :type |Float32| :direction :out :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("GetLocalConstantIntegervEXT" get-local-constant-integerv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |value| :type |GetVariantValueEXT| :direction :in)
   (:name |data| :type |Int32| :direction :out :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("GetLocalConstantBooleanvEXT" get-local-constant-booleanv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |value| :type |GetVariantValueEXT| :direction :in)
   (:name |data| :type |Boolean| :direction :out :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("GetInvariantFloatvEXT" get-invariant-floatv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |value| :type |GetVariantValueEXT| :direction :in)
   (:name |data| :type |Float32| :direction :out :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("GetInvariantIntegervEXT" get-invariant-integerv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |value| :type |GetVariantValueEXT| :direction :in)
   (:name |data| :type |Int32| :direction :out :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("GetInvariantBooleanvEXT" get-invariant-booleanv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |value| :type |GetVariantValueEXT| :direction :in)
   (:name |data| :type |Boolean| :direction :out :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("GetVariantPointervEXT" get-variant-pointerv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |value| :type |GetVariantValueEXT| :direction :in)
   (:name |data| :type |VoidPointer| :direction :out :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("GetVariantFloatvEXT" get-variant-floatv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |value| :type |GetVariantValueEXT| :direction :in)
   (:name |data| :type |Float32| :direction :out :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("GetVariantIntegervEXT" get-variant-integerv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |value| :type |GetVariantValueEXT| :direction :in)
   (:name |data| :type |Int32| :direction :out :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("GetVariantBooleanvEXT" get-variant-booleanv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |value| :type |GetVariantValueEXT| :direction :in)
   (:name |data| :type |Boolean| :direction :out :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("IsVariantEnabledEXT" is-variant-enabled-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |cap| :type |VariantCapEXT| :direction :in))
  :return ("Boolean") :category ("EXT_vertex_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("BindParameterEXT" bind-parameter-ext) :args
  ((:name |value| :type |VertexShaderParameterEXT| :direction :in)) :return
  ("UInt32") :category ("EXT_vertex_shader") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("BindTextureUnitParameterEXT" bind-texture-unit-parameter-ext) :args
  ((:name |unit| :type |TextureUnit| :direction :in)
   (:name |value| :type |VertexShaderTextureUnitParameter| :direction :in))
  :return ("UInt32") :category ("EXT_vertex_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("BindTexGenParameterEXT" bind-tex-gen-parameter-ext) :args
  ((:name |unit| :type |TextureUnit| :direction :in)
   (:name |coord| :type |TextureCoordName| :direction :in)
   (:name |value| :type |TextureGenParameter| :direction :in))
  :return ("UInt32") :category ("EXT_vertex_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("BindMaterialParameterEXT" bind-material-parameter-ext) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |value| :type |MaterialParameter| :direction :in))
  :return ("UInt32") :category ("EXT_vertex_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("BindLightParameterEXT" bind-light-parameter-ext) :args
  ((:name |light| :type |LightName| :direction :in)
   (:name |value| :type |LightParameter| :direction :in))
  :return ("UInt32") :category ("EXT_vertex_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("DisableVariantClientStateEXT" disable-variant-client-state-ext) :args
  ((:name |id| :type |UInt32| :direction :in)) :return ("void") :category
  ("EXT_vertex_shader") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("EnableVariantClientStateEXT" enable-variant-client-state-ext) :args
  ((:name |id| :type |UInt32| :direction :in)) :return ("void") :category
  ("EXT_vertex_shader") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("VariantPointerEXT" variant-pointer-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |type| :type |ScalarType| :direction :in)
   (:name |stride| :type |UInt32| :direction :in)
   (:name |addr| :type |Void| :direction :in :array t :size
    (|id| |type| |stride|)))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VariantuivEXT" variant-uiv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |addr| :type |UInt32| :direction :in :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VariantusvEXT" variant-usv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |addr| :type |UInt16| :direction :in :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VariantubvEXT" variant-ubv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |addr| :type |UInt8| :direction :in :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VariantdvEXT" variant-dv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |addr| :type |Float64| :direction :in :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VariantfvEXT" variant-fv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |addr| :type |Float32| :direction :in :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VariantivEXT" variant-iv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |addr| :type |Int32| :direction :in :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VariantsvEXT" variant-sv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |addr| :type |Int16| :direction :in :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VariantbvEXT" variant-bv-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |addr| :type |Int8| :direction :in :array t :size (|id|)))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("SetLocalConstantEXT" set-local-constant-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |type| :type |ScalarType| :direction :in)
   (:name |addr| :type |Void| :direction :in :array t :size (|id| |type|)))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("SetInvariantEXT" set-invariant-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |type| :type |ScalarType| :direction :in)
   (:name |addr| :type |Void| :direction :in :array t :size (|id| |type|)))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("GenSymbolsEXT" gen-symbols-ext) :args
  ((:name |datatype| :type |DataTypeEXT| :direction :in)
   (:name |storagetype| :type |VertexShaderStorageTypeEXT| :direction :in)
   (:name |range| :type |ParameterRangeEXT| :direction :in)
   (:name |components| :type |UInt32| :direction :in))
  :return ("UInt32") :category ("EXT_vertex_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("ExtractComponentEXT" extract-component-ext) :args
  ((:name |res| :type |UInt32| :direction :in)
   (:name |src| :type |UInt32| :direction :in)
   (:name |num| :type |UInt32| :direction :in))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("InsertComponentEXT" insert-component-ext) :args
  ((:name |res| :type |UInt32| :direction :in)
   (:name |src| :type |UInt32| :direction :in)
   (:name |num| :type |UInt32| :direction :in))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("WriteMaskEXT" write-mask-ext) :args
  ((:name |res| :type |UInt32| :direction :in)
   (:name |in| :type |UInt32| :direction :in)
   (:name |outX| :type |VertexShaderWriteMaskEXT| :direction :in)
   (:name |outY| :type |VertexShaderWriteMaskEXT| :direction :in)
   (:name |outZ| :type |VertexShaderWriteMaskEXT| :direction :in)
   (:name |outW| :type |VertexShaderWriteMaskEXT| :direction :in))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("SwizzleEXT" swizzle-ext) :args
  ((:name |res| :type |UInt32| :direction :in)
   (:name |in| :type |UInt32| :direction :in)
   (:name |outX| :type |VertexShaderCoordOutEXT| :direction :in)
   (:name |outY| :type |VertexShaderCoordOutEXT| :direction :in)
   (:name |outZ| :type |VertexShaderCoordOutEXT| :direction :in)
   (:name |outW| :type |VertexShaderCoordOutEXT| :direction :in))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("ShaderOp3EXT" shader-op-3-ext) :args
  ((:name |op| :type |VertexShaderOpEXT| :direction :in)
   (:name |res| :type |UInt32| :direction :in)
   (:name |arg1| :type |UInt32| :direction :in)
   (:name |arg2| :type |UInt32| :direction :in)
   (:name |arg3| :type |UInt32| :direction :in))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("ShaderOp2EXT" shader-op-2-ext) :args
  ((:name |op| :type |VertexShaderOpEXT| :direction :in)
   (:name |res| :type |UInt32| :direction :in)
   (:name |arg1| :type |UInt32| :direction :in)
   (:name |arg2| :type |UInt32| :direction :in))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("ShaderOp1EXT" shader-op-1-ext) :args
  ((:name |op| :type |VertexShaderOpEXT| :direction :in)
   (:name |res| :type |UInt32| :direction :in)
   (:name |arg1| :type |UInt32| :direction :in))
  :return ("void") :category ("EXT_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("DeleteVertexShaderEXT" delete-vertex-shader-ext) :args
  ((:name |id| :type |UInt32| :direction :in)) :return ("void") :category
  ("EXT_vertex_shader") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("GenVertexShadersEXT" gen-vertex-shaders-ext) :args
  ((:name |range| :type |UInt32| :direction :in)) :return ("UInt32") :category
  ("EXT_vertex_shader") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("BindVertexShaderEXT" bind-vertex-shader-ext) :args
  ((:name |id| :type |UInt32| :direction :in)) :return ("void") :category
  ("EXT_vertex_shader") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("EndVertexShaderEXT" end-vertex-shader-ext) :args nil :return ("void")
  :category ("EXT_vertex_shader") :version ("1.2") :extension nil :glxropcode
  ("?") :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("BeginVertexShaderEXT" begin-vertex-shader-ext) :args nil :return ("void")
  :category ("EXT_vertex_shader") :version ("1.2") :extension nil :glxropcode
  ("?") :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 