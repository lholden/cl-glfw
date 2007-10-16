
(in-package #:gl) 

;;;; VERSION_1_4

(defconstant +blend-dst-rgb+ #x80C8) 
(defconstant +blend-src-rgb+ #x80C9) 
(defconstant +blend-dst-alpha+ #x80CA) 
(defconstant +blend-src-alpha+ #x80CB) 
(defconstant +point-size-min+ #x8126) 
(defconstant +point-size-max+ #x8127) 
(defconstant +point-fade-threshold-size+ #x8128) 
(defconstant +point-distance-attenuation+ #x8129) 
(defconstant +mirrored-repeat+ #x8370) 
(defconstant +fog-coordinate-source+ #x8450) 
(defconstant +fog-coordinate+ #x8451) 
(defconstant +fragment-depth+ #x8452) 
(defconstant +current-fog-coordinate+ #x8453) 
(defconstant +fog-coordinate-array-type+ #x8454) 
(defconstant +fog-coordinate-array-stride+ #x8455) 
(defconstant +fog-coordinate-array-pointer+ #x8456) 
(defconstant +fog-coordinate-array+ #x8457) 
(defconstant +color-sum+ #x8458) 
(defconstant +current-secondary-color+ #x8459) 
(defconstant +secondary-color-array-size+ #x845A) 
(defconstant +secondary-color-array-type+ #x845B) 
(defconstant +secondary-color-array-stride+ #x845C) 
(defconstant +secondary-color-array-pointer+ #x845D) 
(defconstant +secondary-color-array+ #x845E) 
(defconstant +max-texture-lod-bias+ #x84FD) 
(defconstant +texture-filter-control+ #x8500) 
(defconstant +texture-lod-bias+ #x8501) 
(defconstant +incr-wrap+ #x8507) 
(defconstant +decr-wrap+ #x8508) 
(defconstant +texture-depth-size+ #x884A) 
(defconstant +depth-texture-mode+ #x884B) 
(defconstant +texture-compare-mode+ #x884C) 
(defconstant +texture-compare-func+ #x884D) 
(defconstant +compare-r-to-texture+ #x884E) 
(defglfun
 (("WindowPos3sv" window-pos-3sv) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x3)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :glsopcode ("0x01F7") :offset
  ("528"))) 
(defglfun
 (("WindowPos3s" window-pos-3s) :args
  ((:name |x| :type |CoordS| :direction :in)
   (:name |y| :type |CoordS| :direction :in)
   (:name |z| :type |CoordS| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv ("WindowPos3sv")
  :version ("1.4") :offset ("527"))) 
(defglfun
 (("WindowPos3iv" window-pos-3iv) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x3)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :glsopcode ("0x01F6") :offset
  ("526"))) 
(defglfun
 (("WindowPos3i" window-pos-3i) :args
  ((:name |x| :type |CoordI| :direction :in)
   (:name |y| :type |CoordI| :direction :in)
   (:name |z| :type |CoordI| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv ("WindowPos3iv")
  :version ("1.4") :offset ("525"))) 
(defglfun
 (("WindowPos3fv" window-pos-3fv) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x3)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :glsopcode ("0x01F5") :offset
  ("524"))) 
(defglfun
 (("WindowPos3f" window-pos-3f) :args
  ((:name |x| :type |CoordF| :direction :in)
   (:name |y| :type |CoordF| :direction :in)
   (:name |z| :type |CoordF| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv ("WindowPos3fv")
  :version ("1.4") :offset ("523"))) 
(defglfun
 (("WindowPos3dv" window-pos-3dv) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x3)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :glsopcode ("0x01F4") :offset
  ("522"))) 
(defglfun
 (("WindowPos3d" window-pos-3d) :args
  ((:name |x| :type |CoordD| :direction :in)
   (:name |y| :type |CoordD| :direction :in)
   (:name |z| :type |CoordD| :direction :in))
  :return ("void") :vectorequiv ("WindowPos3dv") :category ("VERSION_1_4")
  :version ("1.4") :offset ("521"))) 
(defglfun
 (("WindowPos2sv" window-pos-2sv) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x2)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :glsopcode ("0x01F3") :offset
  ("520"))) 
(defglfun
 (("WindowPos2s" window-pos-2s) :args
  ((:name |x| :type |CoordS| :direction :in)
   (:name |y| :type |CoordS| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv ("WindowPos2sv")
  :version ("1.4") :offset ("519"))) 
(defglfun
 (("WindowPos2iv" window-pos-2iv) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x2)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :glsopcode ("0x01F2") :offset
  ("518"))) 
(defglfun
 (("WindowPos2i" window-pos-2i) :args
  ((:name |x| :type |CoordI| :direction :in)
   (:name |y| :type |CoordI| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv ("WindowPos2iv")
  :version ("1.4") :offset ("517"))) 
(defglfun
 (("WindowPos2fv" window-pos-2fv) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x2)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :glsopcode ("0x01F1") :offset
  ("516"))) 
(defglfun
 (("WindowPos2f" window-pos-2f) :args
  ((:name |x| :type |CoordF| :direction :in)
   (:name |y| :type |CoordF| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv ("WindowPos2fv")
  :version ("1.4") :offset ("515"))) 
(defglfun
 (("WindowPos2dv" window-pos-2dv) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x2)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :glsopcode ("0x01F0") :offset
  ("514"))) 
(defglfun
 (("WindowPos2d" window-pos-2d) :args
  ((:name |x| :type |CoordD| :direction :in)
   (:name |y| :type |CoordD| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv ("WindowPos2dv")
  :version ("1.4") :offset ("513"))) 
(defglfun
 (("SecondaryColorPointer" secondary-color-pointer) :args
  ((:name |size| :type |Int32| :direction :in)
   (:name |type| :type |ColorPointerType| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size
    (|size| |type| |stride|) :retained t))
  :return ("void") :category ("VERSION_1_4") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode") :version ("1.4") :extension nil
  :glsflags ("client") :glsopcode ("0x0205") :offset ("577"))) 
(defglfun
 (("SecondaryColor3usv" secondary-color-3usv) :args
  ((:name |v| :type |ColorUS| :direction :in :array t :size #x3)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("4132")
  :glsopcode ("0x0204") :offset ("576"))) 
(defglfun
 (("SecondaryColor3us" secondary-color-3us) :args
  ((:name |red| :type |ColorUS| :direction :in)
   (:name |green| :type |ColorUS| :direction :in)
   (:name |blue| :type |ColorUS| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv
  ("SecondaryColor3usv") :version ("1.4") :offset ("575"))) 
(defglfun
 (("SecondaryColor3uiv" secondary-color-3uiv) :args
  ((:name |v| :type |ColorUI| :direction :in :array t :size #x3)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("4133")
  :glsopcode ("0x0203") :offset ("574"))) 
(defglfun
 (("SecondaryColor3ui" secondary-color-3ui) :args
  ((:name |red| :type |ColorUI| :direction :in)
   (:name |green| :type |ColorUI| :direction :in)
   (:name |blue| :type |ColorUI| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv
  ("SecondaryColor3uiv") :version ("1.4") :offset ("573"))) 
(defglfun
 (("SecondaryColor3ubv" secondary-color-3ubv) :args
  ((:name |v| :type |ColorUB| :direction :in :array t :size #x3)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("4131")
  :glsopcode ("0x0202") :offset ("572"))) 
(defglfun
 (("SecondaryColor3ub" secondary-color-3ub) :args
  ((:name |red| :type |ColorUB| :direction :in)
   (:name |green| :type |ColorUB| :direction :in)
   (:name |blue| :type |ColorUB| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv
  ("SecondaryColor3ubv") :version ("1.4") :offset ("571"))) 
(defglfun
 (("SecondaryColor3sv" secondary-color-3sv) :args
  ((:name |v| :type |ColorS| :direction :in :array t :size #x3)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("4127")
  :glsopcode ("0x0201") :offset ("570"))) 
(defglfun
 (("SecondaryColor3s" secondary-color-3s) :args
  ((:name |red| :type |ColorS| :direction :in)
   (:name |green| :type |ColorS| :direction :in)
   (:name |blue| :type |ColorS| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv ("SecondaryColor3sv")
  :version ("1.4") :offset ("569"))) 
(defglfun
 (("SecondaryColor3iv" secondary-color-3iv) :args
  ((:name |v| :type |ColorI| :direction :in :array t :size #x3)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("4128")
  :glsopcode ("0x0200") :offset ("568"))) 
(defglfun
 (("SecondaryColor3i" secondary-color-3i) :args
  ((:name |red| :type |ColorI| :direction :in)
   (:name |green| :type |ColorI| :direction :in)
   (:name |blue| :type |ColorI| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv ("SecondaryColor3iv")
  :version ("1.4") :offset ("567"))) 
(defglfun
 (("SecondaryColor3fv" secondary-color-3fv) :args
  ((:name |v| :type |ColorF| :direction :in :array t :size #x3)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("4129")
  :glsopcode ("0x01FF") :offset ("566"))) 
(defglfun
 (("SecondaryColor3f" secondary-color-3f) :args
  ((:name |red| :type |ColorF| :direction :in)
   (:name |green| :type |ColorF| :direction :in)
   (:name |blue| :type |ColorF| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv ("SecondaryColor3fv")
  :version ("1.4") :offset ("565"))) 
(defglfun
 (("SecondaryColor3dv" secondary-color-3dv) :args
  ((:name |v| :type |ColorD| :direction :in :array t :size #x3)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("4130")
  :glsopcode ("0x01FE") :offset ("564"))) 
(defglfun
 (("SecondaryColor3d" secondary-color-3d) :args
  ((:name |red| :type |ColorD| :direction :in)
   (:name |green| :type |ColorD| :direction :in)
   (:name |blue| :type |ColorD| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv ("SecondaryColor3dv")
  :version ("1.4") :offset ("563"))) 
(defglfun
 (("SecondaryColor3bv" secondary-color-3bv) :args
  ((:name |v| :type |ColorB| :direction :in :array t :size #x3)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("4126")
  :glsopcode ("0x01FD") :offset ("562"))) 
(defglfun
 (("SecondaryColor3b" secondary-color-3b) :args
  ((:name |red| :type |ColorB| :direction :in)
   (:name |green| :type |ColorB| :direction :in)
   (:name |blue| :type |ColorB| :direction :in))
  :return ("void") :category ("VERSION_1_4") :vectorequiv ("SecondaryColor3bv")
  :version ("1.4") :offset ("561"))) 
(defglfun
 (("PointParameteriv" point-parameter-iv) :args
  ((:name |pname| :type |PointParameterNameARB| :direction :in)
   (:name |params| :type |Int32| :direction :in :array t :size (|pname|)))
  :return ("void") :category ("VERSION_1_4") :version ("1.4") :extension
  ("soft" "WINSOFT" "NV20") :glxropcode ("4222re") :glsflags ("ignore") :offset
  ("643"))) 
(defglfun
 (("PointParameteri" point-parameter-i) :args
  ((:name |pname| :type |PointParameterNameARB| :direction :in)
   (:name |param| :type |Int32| :direction :in))
  :return ("void") :category ("VERSION_1_4") :version ("1.4") :extension
  ("soft" "WINSOFT" "NV20") :glxropcode ("4221") :glsflags ("ignore") :offset
  ("642"))) 
(defglfun
 (("PointParameterfv" point-parameter-fv) :args
  ((:name |pname| :type |PointParameterNameARB| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode
  ("2066") :extension nil :glsopcode ("0x0178") :offset ("459"))) 
(defglfun
 (("PointParameterf" point-parameter-f) :args
  ((:name |pname| :type |PointParameterNameARB| :direction :in)
   (:name |param| :type |CheckedFloat32| :direction :in))
  :return ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode
  ("2065") :extension nil :glsopcode ("0x0177") :offset ("458"))) 
(defglfun
 (("MultiDrawElements" multi-draw-elements) :args
  ((:name |mode| :type |BeginMode| :direction :in)
   (:name |count| :type |SizeI| :direction :in :array t :size (|primcount|))
   (:name |type| :type |DrawElementsType| :direction :in)
   (:name |indices| :type |VoidPointer| :direction :in :array t :size
    (|primcount|))
   (:name |primcount| :type |SizeI| :direction :in))
  :return ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("?")
  :glsflags ("ignore") :offset ("645"))) 
(defglfun
 (("MultiDrawArrays" multi-draw-arrays) :args
  ((:name |mode| :type |BeginMode| :direction :in)
   (:name |first| :type |Int32| :direction :out :array t :size (|count|))
   (:name |count| :type |SizeI| :direction :out :array t :size (|primcount|))
   (:name |primcount| :type |SizeI| :direction :in))
  :return ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("?")
  :glsflags ("ignore") :offset ("644"))) 
(defglfun
 (("FogCoordPointer" fog-coord-pointer) :args
  ((:name |type| :type |FogPointerTypeEXT| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size
    (|type| |stride|) :retained t))
  :return ("void") :category ("VERSION_1_4") :dlflags ("notlistable") :version
  ("1.4") :glxflags ("client-handcode" "server-handcode") :glsflags ("client")
  :glsopcode ("0x01DB") :offset ("549"))) 
(defglfun
 (("FogCoorddv" fog-coord-dv) :args
  ((:name |coord| :type |CoordD| :direction :in :array t :size #x1)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("4125")
  :glsopcode ("0x01DA") :offset ("548"))) 
(defglfun
 (("FogCoordd" fog-coord-d) :args
  ((:name |coord| :type |CoordD| :direction :in)) :return ("void") :category
  ("VERSION_1_4") :vectorequiv ("FogCoorddv") :version ("1.4") :offset ("547"))) 
(defglfun
 (("FogCoordfv" fog-coord-fv) :args
  ((:name |coord| :type |CoordF| :direction :in :array t :size #x1)) :return
  ("void") :category ("VERSION_1_4") :version ("1.4") :glxropcode ("4124")
  :glsopcode ("0x01D8") :offset ("546"))) 
(defglfun
 (("FogCoordf" fog-coord-f) :args
  ((:name |coord| :type |CoordF| :direction :in)) :return ("void") :category
  ("VERSION_1_4") :vectorequiv ("FogCoordfv") :version ("1.4") :offset ("545"))) 
(defglfun
 (("BlendFuncSeparate" blend-func-separate) :args
  ((:name |sfactorRGB| :type |BlendFuncSeparateParameterEXT| :direction :in)
   (:name |dfactorRGB| :type |BlendFuncSeparateParameterEXT| :direction :in)
   (:name |sfactorAlpha| :type |BlendFuncSeparateParameterEXT| :direction :in)
   (:name |dfactorAlpha| :type |BlendFuncSeparateParameterEXT| :direction :in))
  :return ("void") :category ("VERSION_1_4") :glxropcode ("4134") :version
  ("1.4") :extension nil :glsopcode ("0x01DC") :offset ("537"))) 