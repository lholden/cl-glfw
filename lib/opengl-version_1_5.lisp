
(in-package #:gl) 

;;;; VERSION_1_5

(defconstant +buffer-size+ #x8764) 
(defconstant +buffer-usage+ #x8765) 
(defconstant +query-counter-bits+ #x8864) 
(defconstant +current-query+ #x8865) 
(defconstant +query-result+ #x8866) 
(defconstant +query-result-available+ #x8867) 
(defconstant +array-buffer+ #x8892) 
(defconstant +element-array-buffer+ #x8893) 
(defconstant +array-buffer-binding+ #x8894) 
(defconstant +element-array-buffer-binding+ #x8895) 
(defconstant +vertex-array-buffer-binding+ #x8896) 
(defconstant +normal-array-buffer-binding+ #x8897) 
(defconstant +color-array-buffer-binding+ #x8898) 
(defconstant +index-array-buffer-binding+ #x8899) 
(defconstant +texture-coord-array-buffer-binding+ #x889A) 
(defconstant +edge-flag-array-buffer-binding+ #x889B) 
(defconstant +secondary-color-array-buffer-binding+ #x889C) 
(defconstant +fog-coordinate-array-buffer-binding+ #x889D) 
(defconstant +weight-array-buffer-binding+ #x889E) 
(defconstant +vertex-attrib-array-buffer-binding+ #x889F) 
(defconstant +read-only+ #x88B8) 
(defconstant +write-only+ #x88B9) 
(defconstant +read-write+ #x88BA) 
(defconstant +buffer-access+ #x88BB) 
(defconstant +buffer-mapped+ #x88BC) 
(defconstant +buffer-map-pointer+ #x88BD) 
(defconstant +stream-draw+ #x88E0) 
(defconstant +stream-read+ #x88E1) 
(defconstant +stream-copy+ #x88E2) 
(defconstant +static-draw+ #x88E4) 
(defconstant +static-read+ #x88E5) 
(defconstant +static-copy+ #x88E6) 
(defconstant +dynamic-draw+ #x88E8) 
(defconstant +dynamic-read+ #x88E9) 
(defconstant +dynamic-copy+ #x88EA) 
(defconstant +samples-passed+ #x8914) 
(defconstant +fog-coord-src+ #x8450) 
(defconstant +fog-coord+ #x8451) 
(defconstant +current-fog-coord+ #x8453) 
(defconstant +fog-coord-array-type+ #x8454) 
(defconstant +fog-coord-array-stride+ #x8455) 
(defconstant +fog-coord-array-pointer+ #x8456) 
(defconstant +fog-coord-array+ #x8457) 
(defconstant +fog-coord-array-buffer-binding+ #x889D) 
(defconstant +src0-rgb+ #x8580) 
(defconstant +src1-rgb+ #x8581) 
(defconstant +src2-rgb+ #x8582) 
(defconstant +src0-alpha+ #x8588) 
(defconstant +src1-alpha+ #x8589) 
(defconstant +src2-alpha+ #x858A) 
(defglfun
 (("GetBufferPointerv" get-buffer-pointerv) :args
  ((:name |target| :type |BufferTargetARB| :direction :in)
   (:name |pname| :type |BufferPointerNameARB| :direction :in)
   (:name |params| :type |VoidPointer| :direction :out :array t :size #x1))
  :return ("void") :category ("VERSION_1_5") :dlflags ("notlistable") :version
  ("1.5") :extension nil :glxsingle ("?") :glxflags ("ignore") :glsflags
  ("get") :glsopcode ("?") :offset ("694"))) 
(defglfun
 (("GetBufferParameteriv" get-buffer-parameteriv) :args
  ((:name |target| :type |BufferTargetARB| :direction :in)
   (:name |pname| :type |BufferPNameARB| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("VERSION_1_5") :dlflags ("notlistable") :version
  ("1.5") :extension nil :glxsingle ("?") :glxflags ("ignore") :glsflags
  ("get") :glsopcode ("?") :offset ("693"))) 
(defglfun
 (("UnmapBuffer" unmap-buffer) :args
  ((:name |target| :type |BufferTargetARB| :direction :in)) :return ("Boolean")
  :category ("VERSION_1_5") :version ("1.5") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsopcode ("?") :offset ("698"))) 
(defglfun
 (("MapBuffer" map-buffer) :args
  ((:name |target| :type |BufferTargetARB| :direction :in)
   (:name |access| :type |BufferAccessARB| :direction :in))
  :return ("VoidPointer") :category ("VERSION_1_5") :version ("1.5") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("697"))) 
(defglfun
 (("GetBufferSubData" get-buffer-sub-data) :args
  ((:name |target| :type |BufferTargetARB| :direction :in)
   (:name |offset| :type |BufferOffset| :direction :in)
   (:name |size| :type |BufferSize| :direction :in)
   (:name |data| :type |Void| :direction :out :array t :size size))
  :return ("void") :category ("VERSION_1_5") :dlflags ("notlistable") :version
  ("1.5") :extension nil :glxsingle ("?") :glxflags ("ignore") :glsflags
  ("get") :glsopcode ("?") :offset ("695"))) 
(defglfun
 (("BufferSubData" buffer-sub-data) :args
  ((:name |target| :type |BufferTargetARB| :direction :in)
   (:name |offset| :type |BufferOffset| :direction :in)
   (:name |size| :type |BufferSize| :direction :in)
   (:name |data| :type |ConstVoid| :direction :in :array t :size size))
  :return ("void") :category ("VERSION_1_5") :version ("1.5") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("690"))) 
(defglfun
 (("BufferData" buffer-data) :args
  ((:name |target| :type |BufferTargetARB| :direction :in)
   (:name |size| :type |BufferSize| :direction :in)
   (:name |data| :type |ConstVoid| :direction :in :array t :size size)
   (:name |usage| :type |BufferUsageARB| :direction :in))
  :return ("void") :category ("VERSION_1_5") :version ("1.5") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("689"))) 
(defglfun
 (("IsBuffer" is-buffer) :args ((:name |buffer| :type |UInt32| :direction :in))
  :return ("Boolean") :category ("VERSION_1_5") :version ("1.5") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("696"))) 
(defglfun
 (("GenBuffers" gen-buffers) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |buffers| :type |UInt32| :direction :out :array t :size n))
  :return ("void") :category ("VERSION_1_5") :version ("1.5") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("692"))) 
(defglfun
 (("DeleteBuffers" delete-buffers) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |buffers| :type |ConstUInt32| :direction :in :array t :size n))
  :return ("void") :category ("VERSION_1_5") :version ("1.5") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("691"))) 
(defglfun
 (("BindBuffer" bind-buffer) :args
  ((:name |target| :type |BufferTargetARB| :direction :in)
   (:name |buffer| :type |UInt32| :direction :in))
  :return ("void") :category ("VERSION_1_5") :version ("1.5") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("688"))) 
(defglfun
 (("GetQueryObjectuiv" get-query-object-uiv) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |pname| :type |GLenum| :direction :in)
   (:name |params| :type |UInt32| :direction :out :array t :size pname))
  :return ("void") :category ("VERSION_1_5") :dlflags ("notlistable") :version
  ("1.5") :extension nil :glxsingle ("166") :glxflags ("ignore") :glsflags
  ("get") :glsopcode ("?") :offset ("707"))) 
(defglfun
 (("GetQueryObjectiv" get-query-object-iv) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |pname| :type |GLenum| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size pname))
  :return ("void") :category ("VERSION_1_5") :dlflags ("notlistable") :version
  ("1.5") :extension nil :glxsingle ("165") :glxflags ("ignore") :glsflags
  ("get") :glsopcode ("?") :offset ("706"))) 
(defglfun
 (("GetQueryiv" get-queryiv) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |pname| :type |GLenum| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size pname))
  :return ("void") :category ("VERSION_1_5") :dlflags ("notlistable") :version
  ("1.5") :extension nil :glxsingle ("164") :glxflags ("ignore") :glsflags
  ("get") :glsopcode ("?") :offset ("705"))) 
(defglfun
 (("EndQuery" end-query) :args ((:name |target| :type |GLenum| :direction :in))
  :return ("void") :category ("VERSION_1_5") :version ("1.5") :extension nil
  :glxropcode ("232") :glxflags ("ignore") :glsopcode ("?") :offset ("704"))) 
(defglfun
 (("BeginQuery" begin-query) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |id| :type |UInt32| :direction :in))
  :return ("void") :category ("VERSION_1_5") :version ("1.5") :extension nil
  :glxropcode ("231") :glxflags ("ignore") :glsopcode ("?") :offset ("703"))) 
(defglfun
 (("IsQuery" is-query) :args ((:name |id| :type |UInt32| :direction :in))
  :return ("Boolean") :category ("VERSION_1_5") :version ("1.5") :extension nil
  :glxsingle ("163") :glxflags ("ignore") :glsopcode ("?") :offset ("702"))) 
(defglfun
 (("DeleteQueries" delete-queries) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |ids| :type |UInt32| :direction :in :array t :size n))
  :return ("void") :category ("VERSION_1_5") :version ("1.5") :extension nil
  :glxsingle ("161") :glxflags ("ignore") :glsopcode ("?") :offset ("701"))) 
(defglfun
 (("GenQueries" gen-queries) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |ids| :type |UInt32| :direction :out :array t :size n))
  :return ("void") :category ("VERSION_1_5") :version ("1.5") :extension nil
  :glxsingle ("162") :glxflags ("ignore") :glsopcode ("?") :offset ("700"))) 