
(in-package #:gl) 

;;;; VERSION_1_2

(defconstant +max-elements-vertices+ #x80E8) 
(defconstant +max-elements-indices+ #x80E9) 
(defconstant +pack-skip-images+ #x806B) 
(defconstant +pack-image-height+ #x806C) 
(defconstant +unpack-skip-images+ #x806D) 
(defconstant +unpack-image-height+ #x806E) 
(defconstant +texture-3d+ #x806F) 
(defconstant +proxy-texture-3d+ #x8070) 
(defconstant +texture-depth+ #x8071) 
(defconstant +texture-wrap-r+ #x8072) 
(defconstant +max-3d-texture-size+ #x8073) 
(defconstant +max-elements-vertices+ #x80E8) 
(defconstant +max-elements-indices+ #x80E9) 
(defglfun
 (("CopyTexSubImage3D" copy-tex-sub-image-3d) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |xoffset| :type |CheckedInt32| :direction :in)
   (:name |yoffset| :type |CheckedInt32| :direction :in)
   (:name |zoffset| :type |CheckedInt32| :direction :in)
   (:name |x| :type |WinCoord| :direction :in)
   (:name |y| :type |WinCoord| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in))
  :return ("void") :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2")
  :glxropcode ("4123") :glsopcode ("0x0151") :offset ("373"))) 
(defglfun
 (("TexSubImage3D" tex-sub-image-3d) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |xoffset| :type |CheckedInt32| :direction :in)
   (:name |yoffset| :type |CheckedInt32| :direction :in)
   (:name |zoffset| :type |CheckedInt32| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |depth| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |pixels| :type |Void| :direction :in :array t :size
    (|format| |type| |width| |height| |depth|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode" "EXT") :version ("1.2") :glxropcode
  ("4115") :glsflags ("pixel-unpack") :glsopcode ("0x013D") :offset ("372"))) 
(defglfun
 (("TexImage3D" tex-image-3d) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |internalformat| :type |TextureComponentCount| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |depth| :type |SizeI| :direction :in)
   (:name |border| :type |CheckedInt32| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |pixels| :type |Void| :direction :in :array t :size
    (|format| |type| |width| |height| |depth|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode" "EXT") :version ("1.2") :glxropcode
  ("4114") :glsflags ("pixel-null" "pixel-unpack") :glsopcode ("0x013C")
  :offset ("371"))) 
(defglfun
 (("ResetMinmax" reset-minmax) :args
  ((:name |target| :type |MinmaxTarget| :direction :in)) :return ("void")
  :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2") :glxropcode
  ("4113") :glsopcode ("0x013B") :offset ("370"))) 
(defglfun
 (("ResetHistogram" reset-histogram) :args
  ((:name |target| :type |HistogramTarget| :direction :in)) :return ("void")
  :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2") :glxropcode
  ("4112") :glsopcode ("0x013A") :offset ("369"))) 
(defglfun
 (("Minmax" minmax) :args
  ((:name |target| :type |MinmaxTarget| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |sink| :type |Boolean| :direction :in))
  :return ("void") :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2")
  :glxropcode ("4111") :glsopcode ("0x0139") :offset ("368"))) 
(defglfun
 (("Histogram" histogram) :args
  ((:name |target| :type |HistogramTarget| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |sink| :type |Boolean| :direction :in))
  :return ("void") :category ("VERSION_1_2") :dlflags ("handcode") :glxflags
  ("EXT") :version ("1.2") :glxropcode ("4110") :glsopcode ("0x0138") :offset
  ("367"))) 
(defglfun
 (("GetMinmaxParameteriv" get-minmax-parameter-iv) :args
  ((:name |target| :type |MinmaxTarget| :direction :in)
   (:name |pname| :type |GetMinmaxParameterPName| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("notlistable") :version
  ("1.2") :glxsingle ("159") :glsflags ("get") :glsopcode ("0x0269") :offset
  ("366"))) 
(defglfun
 (("GetMinmaxParameterfv" get-minmax-parameter-fv) :args
  ((:name |target| :type |MinmaxTarget| :direction :in)
   (:name |pname| :type |GetMinmaxParameterPName| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("notlistable") :version
  ("1.2") :glxsingle ("158") :glsflags ("get") :glsopcode ("0x0268") :offset
  ("365"))) 
(defglfun
 (("GetMinmax" get-minmax) :args
  ((:name |target| :type |MinmaxTarget| :direction :in)
   (:name |reset| :type |Boolean| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |values| :type |Void| :direction :out :array t :size
    (|target| |format| |type|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode") :version ("1.2") :glxsingle ("157")
  :glsflags ("get" "pixel-pack") :glsopcode ("0x0267") :offset ("364"))) 
(defglfun
 (("GetHistogramParameteriv" get-histogram-parameter-iv) :args
  ((:name |target| :type |HistogramTarget| :direction :in)
   (:name |pname| :type |GetHistogramParameterPName| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("notlistable") :version
  ("1.2") :glxsingle ("156") :glsflags ("get") :glsopcode ("0x0266") :offset
  ("363"))) 
(defglfun
 (("GetHistogramParameterfv" get-histogram-parameter-fv) :args
  ((:name |target| :type |HistogramTarget| :direction :in)
   (:name |pname| :type |GetHistogramParameterPName| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("notlistable") :version
  ("1.2") :glxsingle ("155") :glsflags ("get") :glsopcode ("0x0265") :offset
  ("362"))) 
(defglfun
 (("GetHistogram" get-histogram) :args
  ((:name |target| :type |HistogramTarget| :direction :in)
   (:name |reset| :type |Boolean| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |values| :type |Void| :direction :out :array t :size
    (|target| |format| |type|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode") :version ("1.2") :glxsingle ("154")
  :glsflags ("get" "pixel-pack") :glsopcode ("0x0264") :offset ("361"))) 
(defglfun
 (("SeparableFilter2D" separable-filter-2d) :args
  ((:name |target| :type |SeparableTarget| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |row| :type |Void| :direction :in :array t :size
    (|target| |format| |type| |width|))
   (:name |column| :type |Void| :direction :in :array t :size
    (|target| |format| |type| |height|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode" "EXT") :version ("1.2") :glxropcode
  ("4109") :glsflags ("pixel-unpack") :glsopcode ("0x0131") :offset ("360"))) 
(defglfun
 (("GetSeparableFilter" get-separable-filter) :args
  ((:name |target| :type |SeparableTarget| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |row| :type |Void| :direction :out :array t :size
    (|target| |format| |type|))
   (:name |column| :type |Void| :direction :out :array t :size
    (|target| |format| |type|))
   (:name |span| :type |Void| :direction :out :array t :size
    (|target| |format| |type|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode") :version ("1.2") :glxsingle ("153")
  :glsflags ("get" "pixel-pack") :glsopcode ("0x0263") :offset ("359"))) 
(defglfun
 (("GetConvolutionParameteriv" get-convolution-parameter-iv) :args
  ((:name |target| :type |ConvolutionTarget| :direction :in)
   (:name |pname| :type |GetConvolutionParameterPName| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("notlistable") :version
  ("1.2") :glxsingle ("152") :glsflags ("get") :glsopcode ("0x0262") :offset
  ("358"))) 
(defglfun
 (("GetConvolutionParameterfv" get-convolution-parameter-fv) :args
  ((:name |target| :type |ConvolutionTarget| :direction :in)
   (:name |pname| :type |GetConvolutionParameterPName| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("notlistable") :version
  ("1.2") :glxsingle ("151") :glsflags ("get") :glsopcode ("0x0261") :offset
  ("357"))) 
(defglfun
 (("GetConvolutionFilter" get-convolution-filter) :args
  ((:name |target| :type |ConvolutionTarget| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |image| :type |Void| :direction :out :array t :size
    (|target| |format| |type|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode") :version ("1.2") :glxsingle ("150")
  :glsflags ("get" "pixel-pack") :glsopcode ("0x0260") :offset ("356"))) 
(defglfun
 (("CopyConvolutionFilter2D" copy-convolution-filter-2d) :args
  ((:name |target| :type |ConvolutionTarget| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |x| :type |WinCoord| :direction :in)
   (:name |y| :type |WinCoord| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in))
  :return ("void") :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2")
  :glxropcode ("4108") :glsopcode ("0x012C") :offset ("355"))) 
(defglfun
 (("CopyConvolutionFilter1D" copy-convolution-filter-1d) :args
  ((:name |target| :type |ConvolutionTarget| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |x| :type |WinCoord| :direction :in)
   (:name |y| :type |WinCoord| :direction :in)
   (:name |width| :type |SizeI| :direction :in))
  :return ("void") :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2")
  :glxropcode ("4107") :glsopcode ("0x012B") :offset ("354"))) 
(defglfun
 (("ConvolutionParameteriv" convolution-parameter-iv) :args
  ((:name |target| :type |ConvolutionTarget| :direction :in)
   (:name |pname| :type |ConvolutionParameter| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2")
  :glxropcode ("4106") :glsflags ("gl-enum") :glsopcode ("0x012A") :offset
  ("353"))) 
(defglfun
 (("ConvolutionParameteri" convolution-parameter-i) :args
  ((:name |target| :type |ConvolutionTarget| :direction :in)
   (:name |pname| :type |ConvolutionParameter| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2")
  :glxropcode ("4105") :glsflags ("gl-enum") :glsopcode ("0x0129") :offset
  ("352"))) 
(defglfun
 (("ConvolutionParameterfv" convolution-parameter-fv) :args
  ((:name |target| :type |ConvolutionTarget| :direction :in)
   (:name |pname| :type |ConvolutionParameter| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2")
  :glxropcode ("4104") :glsflags ("gl-enum") :glsopcode ("0x0128") :offset
  ("351"))) 
(defglfun
 (("ConvolutionParameterf" convolution-parameter-f) :args
  ((:name |target| :type |ConvolutionTarget| :direction :in)
   (:name |pname| :type |ConvolutionParameter| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in))
  :return ("void") :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2")
  :glxropcode ("4103") :glsflags ("gl-enum") :glsopcode ("0x0127") :offset
  ("350"))) 
(defglfun
 (("ConvolutionFilter2D" convolution-filter-2d) :args
  ((:name |target| :type |ConvolutionTarget| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |image| :type |Void| :direction :in :array t :size
    (|format| |type| |width| |height|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode" "EXT") :version ("1.2") :glxropcode
  ("4102") :glsflags ("pixel-unpack") :glsopcode ("0x0126") :offset ("349"))) 
(defglfun
 (("ConvolutionFilter1D" convolution-filter-1d) :args
  ((:name |target| :type |ConvolutionTarget| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |image| :type |Void| :direction :in :array t :size
    (|format| |type| |width|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode" "EXT") :version ("1.2") :glxropcode
  ("4101") :glsflags ("pixel-unpack") :glsopcode ("0x0125") :offset ("348"))) 
(defglfun
 (("CopyColorSubTable" copy-color-sub-table) :args
  ((:name |target| :type |ColorTableTarget| :direction :in)
   (:name |start| :type |SizeI| :direction :in)
   (:name |x| :type |WinCoord| :direction :in)
   (:name |y| :type |WinCoord| :direction :in)
   (:name |width| :type |SizeI| :direction :in))
  :return ("void") :category ("VERSION_1_2") :version ("1.2") :glxropcode
  ("196") :glsopcode ("0x018F") :offset ("347"))) 
(defglfun
 (("ColorSubTable" color-sub-table) :args
  ((:name |target| :type |ColorTableTarget| :direction :in)
   (:name |start| :type |SizeI| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |data| :type |Void| :direction :in :array t :size
    (|format| |type| |count|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode") :version ("1.2") :glxropcode ("195")
  :glsflags ("pixel-unpack") :glsopcode ("0x018E") :offset ("346"))) 
(defglfun
 (("GetColorTableParameteriv" get-color-table-parameter-iv) :args
  ((:name |target| :type |ColorTableTarget| :direction :in)
   (:name |pname| :type |GetColorTableParameterPName| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("notlistable") :version
  ("1.2") :glxsingle ("149") :glsflags ("get") :glsopcode ("0x025F") :offset
  ("345"))) 
(defglfun
 (("GetColorTableParameterfv" get-color-table-parameter-fv) :args
  ((:name |target| :type |ColorTableTarget| :direction :in)
   (:name |pname| :type |GetColorTableParameterPName| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("notlistable") :version
  ("1.2") :glxsingle ("148") :glsflags ("get") :glsopcode ("0x025E") :offset
  ("344"))) 
(defglfun
 (("GetColorTable" get-color-table) :args
  ((:name |target| :type |ColorTableTarget| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |table| :type |Void| :direction :out :array t :size
    (|target| |format| |type|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode") :version ("1.2") :glxsingle ("147")
  :glsflags ("get" "pixel-pack") :glsopcode ("0x025D") :offset ("343"))) 
(defglfun
 (("CopyColorTable" copy-color-table) :args
  ((:name |target| :type |ColorTableTarget| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |x| :type |WinCoord| :direction :in)
   (:name |y| :type |WinCoord| :direction :in)
   (:name |width| :type |SizeI| :direction :in))
  :return ("void") :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2")
  :glxropcode ("2056") :glsopcode ("0x016A") :offset ("342"))) 
(defglfun
 (("ColorTableParameteriv" color-table-parameter-iv) :args
  ((:name |target| :type |ColorTableTarget| :direction :in)
   (:name |pname| :type |ColorTableParameterPName| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2")
  :glxropcode ("2055") :glsopcode ("0x0169") :offset ("341"))) 
(defglfun
 (("ColorTableParameterfv" color-table-parameter-fv) :args
  ((:name |target| :type |ColorTableTarget| :direction :in)
   (:name |pname| :type |ColorTableParameterPName| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2")
  :glxropcode ("2054") :glsopcode ("0x0168") :offset ("340"))) 
(defglfun
 (("ColorTable" color-table) :args
  ((:name |target| :type |ColorTableTarget| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |table| :type |Void| :direction :in :array t :size
    (|format| |type| |width|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode" "EXT") :version ("1.2") :glxropcode
  ("2053") :glsflags ("pixel-unpack") :glsopcode ("0x0167") :offset ("339"))) 
(defglfun
 (("DrawRangeElements" draw-range-elements) :args
  ((:name |mode| :type |BeginMode| :direction :in)
   (:name |start| :type |UInt32| :direction :in)
   (:name |end| :type |UInt32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |type| :type |DrawElementsType| :direction :in)
   (:name |indices| :type |Void| :direction :in :array t :size
    (|count| |type|)))
  :return ("void") :category ("VERSION_1_2") :dlflags ("handcode") :glxflags
  ("client-handcode" "client-intercept" "server-handcode") :version ("1.2")
  :glsopcode ("0x0190") :offset ("338"))) 
(defglfun
 (("BlendEquation" blend-equation) :args
  ((:name |mode| :type |BlendEquationMode| :direction :in)) :return ("void")
  :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2") :glxropcode
  ("4097") :glsopcode ("0x0121") :offset ("337"))) 
(defglfun
 (("BlendColor" blend-color) :args
  ((:name |red| :type |ClampedColorF| :direction :in)
   (:name |green| :type |ClampedColorF| :direction :in)
   (:name |blue| :type |ClampedColorF| :direction :in)
   (:name |alpha| :type |ClampedColorF| :direction :in))
  :return ("void") :category ("VERSION_1_2") :glxflags ("EXT") :version ("1.2")
  :glxropcode ("4096") :glsopcode ("0x0120") :offset ("336"))) 