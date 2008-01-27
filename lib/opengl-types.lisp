
(in-package #:cl-glfw-opengl)

(cffi:load-foreign-library '(:or (:framework "OpenGL")
                             "opengl32.dll"
                             (:default "libGL")
                             (:default "opengl")
                             (:default "opengl32")
                             (:default "GL")
                             (:default "gl")
                             (:default "libOpenGL")
                             (:default "OpenGL")))

;; TYPES

(defctype enum :uint32)
(defctype boolean :uint8)
(defctype bitfield :uint32)
(defctype byte :int8)
(defctype short :int16)
(defctype int :int32)
(defctype sizei :int32)
(defctype ubyte :uint8)
(defctype ushort :uint16)
(defctype uint :uint32)
(defctype float :float)
(defctype clampf :float)
(defctype double :double)
(defctype clampd :double)
(defctype void :void)

#-cffi-features:no-long-long
(defctype uint64 :uint64)
#-cffi-features:no-long-long
(defctype int64 :int64)

(defctype intptr #.(find-symbol (format nil "INT~d" (* 8 (cffi:foreign-type-size :pointer))) (find-package '#:keyword)))
(defctype sizeiptr #.(find-symbol (format nil "INT~d" (* 8 (cffi:foreign-type-size :pointer))) (find-package '#:keyword)))

(defctype handle :unsigned-int)

(defctype char :char)

(defctype string :string)

(defctype half :unsigned-short) ; this is how glext.h defines it anyway

(defmethod cffi:expand-to-foreign (value (type (eql 'boolean)))
  `(if ,value gl:+true+ gl:+false+))

(defmethod cffi:expand-from-foreign (value (type (eql 'boolean)))
  `(not (= ,value gl:+false+)))

(defmethod cffi:expand-to-foreign (value (type (eql 'clampf)))
  `(coerce ,value 'single-float))

(defmethod cffi:expand-to-foreign (value (type (eql 'clampd)))
  `(coerce ,value 'double-float))

(defmethod cffi:expand-to-foreign (value (type (eql 'float)))
  `(coerce ,value 'single-float))

(defmethod cffi:expand-to-foreign (value (type (eql 'double)))
  `(coerce ,value 'double-float))

(defparameter *type-maps*
  '(|AccumOp| cl-glfw-opengl:enum |AlphaFunction| cl-glfw-opengl:enum |AttribMask| cl-glfw-opengl:bitfield
    |BeginMode| cl-glfw-opengl:enum |BinormalPointerTypeEXT| cl-glfw-opengl:enum
    |BlendEquationMode| cl-glfw-opengl:enum |BlendEquationModeEXT| cl-glfw-opengl:enum
    |BlendFuncSeparateParameterEXT| cl-glfw-opengl:enum |BlendingFactorDest| cl-glfw-opengl:enum
    |BlendingFactorSrc| cl-glfw-opengl:enum |Boolean| cl-glfw-opengl:boolean |BooleanPointer|
    :pointer |Char| cl-glfw-opengl:char |CharPointer| :pointer |CheckedFloat32|
    cl-glfw-opengl:float |CheckedInt32| cl-glfw-opengl:int |ClampColorTargetARB| cl-glfw-opengl:enum
    |ClampColorModeARB| cl-glfw-opengl:enum |ClampedColorF| cl-glfw-opengl:clampf |ClampedFloat32|
    cl-glfw-opengl:clampf |ClampedFloat64| cl-glfw-opengl:clampd |ClampedStencilValue| cl-glfw-opengl:int
    |ClearBufferMask| cl-glfw-opengl:bitfield |ClientAttribMask| cl-glfw-opengl:bitfield
    |ClipPlaneName| cl-glfw-opengl:enum |ColorB| cl-glfw-opengl:byte |ColorD| cl-glfw-opengl:double
    |ColorF| cl-glfw-opengl:float |ColorI| cl-glfw-opengl:int |ColorIndexValueD| cl-glfw-opengl:double
    |ColorIndexValueF| cl-glfw-opengl:float |ColorIndexValueI| cl-glfw-opengl:int
    |ColorIndexValueS| cl-glfw-opengl:short |ColorIndexValueUB| cl-glfw-opengl:ubyte
    |ColorMaterialParameter| cl-glfw-opengl:enum |ColorPointerType| cl-glfw-opengl:enum |ColorS|
    cl-glfw-opengl:short |ColorTableParameterPName| cl-glfw-opengl:enum
    |ColorTableParameterPNameSGI| cl-glfw-opengl:enum |ColorTableTarget| cl-glfw-opengl:enum
    |ColorTableTargetSGI| cl-glfw-opengl:enum |ColorUB| cl-glfw-opengl:ubyte |ColorUI| cl-glfw-opengl:uint
    |ColorUS| cl-glfw-opengl:ushort |CombinerBiasNV| cl-glfw-opengl:enum
    |CombinerComponentUsageNV| cl-glfw-opengl:enum |CombinerMappingNV| cl-glfw-opengl:enum
    |CombinerParameterNV| cl-glfw-opengl:enum |CombinerPortionNV| cl-glfw-opengl:enum
    |CombinerRegisterNV| cl-glfw-opengl:enum |CombinerScaleNV| cl-glfw-opengl:enum
    |CombinerStageNV| cl-glfw-opengl:enum |CombinerVariableNV| cl-glfw-opengl:enum
    |CompressedTextureARB| cl-glfw-opengl:void |ControlPointNV| cl-glfw-opengl:void
    |ControlPointTypeNV| cl-glfw-opengl:enum |ConvolutionParameter| cl-glfw-opengl:enum
    |ConvolutionParameterEXT| cl-glfw-opengl:enum |ConvolutionTarget| cl-glfw-opengl:enum
    |ConvolutionTargetEXT| cl-glfw-opengl:enum |CoordD| cl-glfw-opengl:double |CoordF|
    cl-glfw-opengl:float |CoordI| cl-glfw-opengl:int |CoordS| cl-glfw-opengl:short |CullFaceMode|
    cl-glfw-opengl:enum |CullParameterEXT| cl-glfw-opengl:enum |DepthFunction| cl-glfw-opengl:enum
    |DrawBufferMode| cl-glfw-opengl:enum |DrawElementsType| cl-glfw-opengl:enum
    |ElementPointerTypeATI| cl-glfw-opengl:enum |EnableCap| cl-glfw-opengl:enum |ErrorCode|
    cl-glfw-opengl:enum |EvalMapsModeNV| cl-glfw-opengl:enum |EvalTargetNV| cl-glfw-opengl:enum
    |FeedbackElement| cl-glfw-opengl:float |FeedbackType| cl-glfw-opengl:enum |FenceNV|
    cl-glfw-opengl:uint |FenceConditionNV| cl-glfw-opengl:enum |FenceParameterNameNV| cl-glfw-opengl:enum
    |FfdMaskSGIX| cl-glfw-opengl:bitfield |FfdTargetSGIX| cl-glfw-opengl:enum |Float32|
    cl-glfw-opengl:float |Float32Pointer| :pointer |Float64| cl-glfw-opengl:double
    |Float64Pointer| :pointer |FogParameter| cl-glfw-opengl:enum |FogPointerTypeEXT|
    cl-glfw-opengl:enum |FogPointerTypeIBM| cl-glfw-opengl:enum |FragmentLightModelParameterSGIX|
    cl-glfw-opengl:enum |FragmentLightNameSGIX| cl-glfw-opengl:enum |FragmentLightParameterSGIX|
    cl-glfw-opengl:enum |FramebufferAttachment| cl-glfw-opengl:enum |FramebufferTarget|
    cl-glfw-opengl:enum |FrontFaceDirection| cl-glfw-opengl:enum |FunctionPointer| :pointer
    |GetColorTableParameterPName| cl-glfw-opengl:enum |GetColorTableParameterPNameSGI|
    cl-glfw-opengl:enum |GetConvolutionParameterPName| cl-glfw-opengl:enum
    |GetHistogramParameterPName| cl-glfw-opengl:enum |GetHistogramParameterPNameEXT|
    cl-glfw-opengl:enum |GetMapQuery| cl-glfw-opengl:enum |GetMinmaxParameterPName| cl-glfw-opengl:enum
    |GetMinmaxParameterPNameEXT| cl-glfw-opengl:enum |GetPName| cl-glfw-opengl:enum
    |GetPointervPName| cl-glfw-opengl:enum |GetTextureParameter| cl-glfw-opengl:enum |HintMode|
    cl-glfw-opengl:enum |HintTarget| cl-glfw-opengl:enum |HintTargetPGI| cl-glfw-opengl:enum
    |HistogramTarget| cl-glfw-opengl:enum |HistogramTargetEXT| cl-glfw-opengl:enum
    |IglooFunctionSelectSGIX| cl-glfw-opengl:enum |IglooParameterSGIX| cl-glfw-opengl:void
    |ImageTransformPNameHP| cl-glfw-opengl:enum |ImageTransformTargetHP| cl-glfw-opengl:enum
    |IndexFunctionEXT| cl-glfw-opengl:enum |IndexMaterialParameterEXT| cl-glfw-opengl:enum
    |IndexPointerType| cl-glfw-opengl:enum |Int16| cl-glfw-opengl:short |Int32| cl-glfw-opengl:int |Int8|
    cl-glfw-opengl:byte |InterleavedArrayFormat| cl-glfw-opengl:enum |LightEnvParameterSGIX|
    cl-glfw-opengl:enum |LightModelParameter| cl-glfw-opengl:enum |LightName| cl-glfw-opengl:enum
    |LightParameter| cl-glfw-opengl:enum |LightTextureModeEXT| cl-glfw-opengl:enum
    |LightTexturePNameEXT| cl-glfw-opengl:enum |LineStipple| cl-glfw-opengl:ushort |List|
    cl-glfw-opengl:uint |ListMode| cl-glfw-opengl:enum |ListNameType| cl-glfw-opengl:enum
    |ListParameterName| cl-glfw-opengl:enum |LogicOp| cl-glfw-opengl:enum |MapAttribParameterNV|
    cl-glfw-opengl:enum |MapParameterNV| cl-glfw-opengl:enum |MapTarget| cl-glfw-opengl:enum |MapTargetNV|
    cl-glfw-opengl:enum |MapTypeNV| cl-glfw-opengl:enum |MaskedColorIndexValueF| cl-glfw-opengl:float
    |MaskedColorIndexValueI| cl-glfw-opengl:uint |MaskedStencilValue| cl-glfw-opengl:uint
    |MaterialFace| cl-glfw-opengl:enum |MaterialParameter| cl-glfw-opengl:enum
    |MatrixIndexPointerTypeARB| cl-glfw-opengl:enum |MatrixMode| cl-glfw-opengl:enum
    |MatrixTransformNV| cl-glfw-opengl:enum |MeshMode1| cl-glfw-opengl:enum |MeshMode2|
    cl-glfw-opengl:enum |MinmaxTarget| cl-glfw-opengl:enum |MinmaxTargetEXT| cl-glfw-opengl:enum
    |NormalPointerType| cl-glfw-opengl:enum |NurbsCallback| cl-glfw-opengl:enum |NurbsObj|
    :pointer |NurbsProperty| cl-glfw-opengl:enum |NurbsTrim| cl-glfw-opengl:enum
    |OcclusionQueryParameterNameNV| cl-glfw-opengl:enum |PixelCopyType| cl-glfw-opengl:enum
    |PixelFormat| cl-glfw-opengl:enum |PixelInternalFormat| cl-glfw-opengl:enum |PixelMap|
    cl-glfw-opengl:enum |PixelStoreParameter| cl-glfw-opengl:enum |PixelTexGenModeSGIX|
    cl-glfw-opengl:enum |PixelTexGenParameterNameSGIS| cl-glfw-opengl:enum
    |PixelTransferParameter| cl-glfw-opengl:enum |PixelTransformPNameEXT| cl-glfw-opengl:enum
    |PixelTransformTargetEXT| cl-glfw-opengl:enum |PixelType| cl-glfw-opengl:enum
    |PointParameterNameARB| cl-glfw-opengl:enum |PolygonMode| cl-glfw-opengl:enum |ProgramNV|
    cl-glfw-opengl:uint |ProgramCharacterNV| cl-glfw-opengl:ubyte |ProgramParameterNV| cl-glfw-opengl:enum
    |ProgramParameterPName| cl-glfw-opengl:enum |QuadricCallback| cl-glfw-opengl:enum
    |QuadricDrawStyle| cl-glfw-opengl:enum |QuadricNormal| cl-glfw-opengl:enum |QuadricObj|
    :pointer |QuadricOrientation| cl-glfw-opengl:enum |ReadBufferMode| cl-glfw-opengl:enum
    |RenderbufferTarget| cl-glfw-opengl:enum |RenderingMode| cl-glfw-opengl:enum
    |ReplacementCodeSUN| cl-glfw-opengl:uint |ReplacementCodeTypeSUN| cl-glfw-opengl:enum
    |SamplePassARB| cl-glfw-opengl:enum |SamplePatternEXT| cl-glfw-opengl:enum |SamplePatternSGIS|
    cl-glfw-opengl:enum |SecondaryColorPointerTypeIBM| cl-glfw-opengl:enum |SelectName|
    cl-glfw-opengl:uint |SeparableTarget| cl-glfw-opengl:enum |SeparableTargetEXT| cl-glfw-opengl:enum
    |ShadingModel| cl-glfw-opengl:enum |SizeI| cl-glfw-opengl:sizei |SpriteParameterNameSGIX|
    cl-glfw-opengl:enum |StencilFunction| cl-glfw-opengl:enum |StencilFaceDirection| cl-glfw-opengl:enum
    |StencilOp| cl-glfw-opengl:enum |StencilValue| cl-glfw-opengl:int |String| cl-glfw-opengl:string
    |StringName| cl-glfw-opengl:enum |TangentPointerTypeEXT| cl-glfw-opengl:enum |TessCallback|
    cl-glfw-opengl:enum |TessContour| cl-glfw-opengl:enum |TessProperty| cl-glfw-opengl:enum
    |TesselatorObj| :pointer |TexCoordPointerType| cl-glfw-opengl:enum |Texture|
    cl-glfw-opengl:uint |TextureComponentCount| cl-glfw-opengl:int |TextureCoordName| cl-glfw-opengl:enum
    |TextureEnvParameter| cl-glfw-opengl:enum |TextureEnvTarget| cl-glfw-opengl:enum
    |TextureFilterSGIS| cl-glfw-opengl:enum |TextureGenParameter| cl-glfw-opengl:enum
    |TextureNormalModeEXT| cl-glfw-opengl:enum |TextureParameterName| cl-glfw-opengl:enum
    |TextureTarget| cl-glfw-opengl:enum |TextureUnit| cl-glfw-opengl:enum |UInt16| cl-glfw-opengl:ushort
    |UInt32| cl-glfw-opengl:uint |UInt8| cl-glfw-opengl:ubyte |VertexAttribEnum| cl-glfw-opengl:enum
    |VertexAttribEnumNV| cl-glfw-opengl:enum |VertexAttribPointerTypeNV| cl-glfw-opengl:enum
    |VertexPointerType| cl-glfw-opengl:enum |VertexWeightPointerTypeEXT| cl-glfw-opengl:enum
    |Void| cl-glfw-opengl:void |VoidPointer| :pointer |ConstVoidPointer| :pointer
    |WeightPointerTypeARB| cl-glfw-opengl:enum |WinCoord| cl-glfw-opengl:int |void| :void
    |ArrayObjectPNameATI| cl-glfw-opengl:enum |ArrayObjectUsageATI| cl-glfw-opengl:enum
    |ConstFloat32| cl-glfw-opengl:float |ConstInt32| cl-glfw-opengl:int |ConstUInt32| cl-glfw-opengl:uint
    |ConstVoid| cl-glfw-opengl:void |DataTypeEXT| cl-glfw-opengl:enum |FragmentOpATI| cl-glfw-opengl:enum
    |GetTexBumpParameterATI| cl-glfw-opengl:enum |GetVariantValueEXT| cl-glfw-opengl:enum
    |ParameterRangeEXT| cl-glfw-opengl:enum |PreserveModeATI| cl-glfw-opengl:enum
    |ProgramFormatARB| cl-glfw-opengl:enum |ProgramTargetARB| cl-glfw-opengl:enum |ProgramTarget|
    cl-glfw-opengl:enum |ProgramPropertyARB| cl-glfw-opengl:enum |ProgramStringPropertyARB|
    cl-glfw-opengl:enum |ScalarType| cl-glfw-opengl:enum |SwizzleOpATI| cl-glfw-opengl:enum
    |TexBumpParameterATI| cl-glfw-opengl:enum |VariantCapEXT| cl-glfw-opengl:enum
    |VertexAttribPointerPropertyARB| cl-glfw-opengl:enum |VertexAttribPointerTypeARB|
    cl-glfw-opengl:enum |VertexAttribPropertyARB| cl-glfw-opengl:enum |VertexShaderCoordOutEXT|
    cl-glfw-opengl:enum |VertexShaderOpEXT| cl-glfw-opengl:enum |VertexShaderParameterEXT|
    cl-glfw-opengl:enum |VertexShaderStorageTypeEXT| cl-glfw-opengl:enum
    |VertexShaderTextureUnitParameter| cl-glfw-opengl:enum |VertexShaderWriteMaskEXT|
    cl-glfw-opengl:enum |VertexStreamATI| cl-glfw-opengl:enum |PNTrianglesPNameATI| cl-glfw-opengl:enum
    |BufferOffset| cl-glfw-opengl:intptr |BufferSize| cl-glfw-opengl:sizeiptr |BufferAccessARB|
    cl-glfw-opengl:enum |BufferOffsetARB| cl-glfw-opengl:intptr |BufferPNameARB| cl-glfw-opengl:enum
    |BufferPointerNameARB| cl-glfw-opengl:enum |BufferSizeARB| cl-glfw-opengl:sizeiptr
    |BufferTargetARB| cl-glfw-opengl:enum |BufferUsageARB| cl-glfw-opengl:enum |ObjectTypeAPPLE|
    cl-glfw-opengl:enum |VertexArrayPNameAPPLE| cl-glfw-opengl:enum |DrawBufferModeATI|
    cl-glfw-opengl:enum |Half16NV| cl-glfw-opengl:half |PixelDataRangeTargetNV| cl-glfw-opengl:enum
    |GLenum| cl-glfw-opengl:enum |handleARB| cl-glfw-opengl:handle |charARB| cl-glfw-opengl:char
    |charPointerARB| :pointer |Int64EXT| cl-glfw-opengl:int64 |UInt64EXT| cl-glfw-opengl:uint64))

(defun c-name (func-spec)    (first (first func-spec)))
(defun lisp-name (func-spec) (second (first func-spec)))
(defun freturn (func-spec)   (first (getf (rest func-spec) :return)))
(defun args (func-spec)      (getf (rest func-spec) :args))

(defun deconstant (symbol)
  (if (not (constantp symbol))
      symbol
      (deconstant (intern (concatenate 'cl:string "_" (symbol-name symbol))))))

(defun final-arg-name (arg)
  (deconstant (intern (string-upcase (symbol-name (getf arg :name))))))

(defun final-arg-type (arg)
  (let ((type (getf *type-maps* (getf arg :type))))
    (cond
      ((eql 'void type) :pointer)
      ((getf arg :array) (if (eql type 'char) :string :pointer))
      (t type))))

(defun arg-element-type (arg)
  (getf *type-maps* (getf arg :type)))

(defun conc-symbols (&rest symbols)
  (intern (apply #'concatenate (cons 'cl:string (mapcar #'symbol-name symbols)))))

(defun array-wrappable-p (arg #|args|#)
  (let ((resolved-type (getf *type-maps* (getf arg :type))))
    (and (getf arg :array)
         ;; we must have a type, ie. not a void* pointer
         (not (eql 'void resolved-type))
         (not (eql :void resolved-type))
         ;; opengl cannot retain this pointer, as we would destroy it after passing it
         (not (getf arg :retained))
         ;; can we guarantee a size? - used to do this, but the app programmer must get it right himself for OpenGL anyway
         ;; so doing it this way is consistent with the C-interface, though more dangerous
         #|
         (or (integerp (getf arg :size))
         (and (symbolp (getf arg :size))
         (find-if #'(lambda (other-arg)
         (eql (getf arg :size) (final-arg-name other-arg)))
         args)))|#
         ;; our own hook
         (not (getf arg :wrapped)))))

(defun gl-function-definition (func-spec &optional (c-prefix "gl") (lisp-prefix '#:||))
  `(defcfun (,(concatenate 'cl:string c-prefix (c-name func-spec))
              ,(conc-symbols lisp-prefix (lisp-name func-spec)))
       ,(getf *type-maps* (intern (freturn func-spec)))
     ,@(mapcar #'(lambda (arg) (list (final-arg-name arg) (final-arg-type arg)))
               (args func-spec))))

(defun gl-funcall-definition (func-spec fpointer)
  `(foreign-funcall ,fpointer
                    ,@(mapcan #'(lambda (arg)
                                  `(,(final-arg-type arg) ,(final-arg-name arg)))
                              (args func-spec))
                    ,(getf *type-maps* (intern (freturn func-spec)))))

(defun expand-a-wrapping (func-spec final-content)
  (let* ((func-spec (copy-tree func-spec)) ; duplicate because we're not supposed to modify macro params
         (args (args func-spec))
         (first-wrappable (position-if #'array-wrappable-p args)))
    (if first-wrappable
        (let* ((arg (elt (args func-spec) first-wrappable))
               (original-array-name (gensym (symbol-name (final-arg-name arg))))
               (array-name (final-arg-name arg)))
          ;; set it wrapped by non-consingly attaching a wrapped property on the end
          (nconc arg (list :wrapped t))
          `(if (and (typep ,array-name 'sequence) (not (stringp ,array-name)))
               ;; the actual allocation
               (let* ((,original-array-name ,array-name)
                      (,array-name (foreign-alloc ',(arg-element-type arg)
                                                  ;; we used to base it on the count of whatever the spec said
                                                  #|:count ,(getf arg :size)|#
                                                  ;; but now, we'll use the user's sequence size, or just their content
                                                  ,@(if (eql (getf arg :direction) :in)
                                                        `(:initial-contents ,original-array-name)
                                                        `(:count (length ,original-array-name))))))
                 ;; (format t "Copying ~a elements of ~a: ~a into ~a~%"
                 ;; ,(getf arg :size) ',array-name ,original-array-name ,array-name)
                 (unwind-protect
                      (prog1
                          #| as input values are set above, we don't use this now (and above is a prog1, it was prog2 before)
                          ;; custom coersion of input values, before call ; ; ; ; ; ; ; ; ; ; ;
         ,(when (eql (getf arg :direction) :in)
                          `(cond
                          ((listp ,original-array-name)
                          (loop for i upfrom 0 for e in ,original-array-name
                          do (setf (mem-aref ,array-name ',(arg-element-type arg) i) e)))
                          ((vectorp ,original-array-name)
                          (loop for i upfrom 0 for e across ,original-array-name
                          do (setf (mem-aref ,array-name ',(arg-element-type arg) i) e)))))
         |#
                          ;; recurse in case there are more
                          ,(expand-a-wrapping func-spec final-content)
                        ;; custom coersion of output values, after call
                        ,(when (eql (getf arg :direction) :out)
                           `(cond
                              ((listp ,original-array-name)
                               (do ((i 0 (1+ i))
                                    (ce ,original-array-name (cdr ce)))
                                   ((not ce))
                                 #|((or (not ce)
                                 (>= i ,(getf arg :size))))|#
                                 (setf (car ce)
                                       (mem-aref ,array-name ',(arg-element-type arg) i))))
                              ((vectorp ,original-array-name)
                               (do ((i 0 (1+ i)))
                                   ((>= i (length ,original-array-name)))
                                 #|((or (>= i (length ,original-array-name))
                                 (>= i ,(getf arg :size))))|#
                                 (setf (aref ,original-array-name i)
                                       (mem-aref ,array-name ',(arg-element-type arg) i)))))))
                   (foreign-free ,array-name)))
               ;; in the case the arg wasn't a sequence, pass it straight through
               ,(expand-a-wrapping func-spec final-content)))
        ;; in the case that there is no more wrapping to be done, emit the final content to start unwinding
        final-content)))

(defun wrapped-win32-gl-function-definition (func-spec)
  `(let ((fpointer (foreign-funcall "wglGetProcAddress"
                                    :string ,(concatenate 'cl:string "gl" (c-name func-spec))
                                    :pointer)))
     ;; I know the CFFI guide recommends against holding pointers, but for extensions on win,
     ;; function pointers are the only way to do it. I don't think the locations are compiled
     ;; in-to the fasl files, as it's a top-level form.
     (when (null-pointer-p fpointer)
       (error 'simple-error "Error! Can't find function ~a" (first func-spec)))
     (defun ,(lisp-name func-spec)
         ,(mapcar #'(lambda (arg) (final-arg-name arg))
           (args func-spec))
       ;; if there is more than 0 wrappable arrays
       ,(let ((args (args func-spec)))
          (if (some #'array-wrappable-p args)
              (expand-a-wrapping func-spec
                                 (gl-funcall-definition func-spec 'fpointer))
              (gl-funcall-definition func-spec 'fpointer))))))

(defun wrapped-gl-function-definition (func-spec)
  (let ((args (args func-spec)))
    ;; if there is more than 0 wrappable arrays
    (if (some #'array-wrappable-p args)
        `(progn
           ;; make an inlined function prefixed with %
           (declaim (inline ,(conc-symbols '#:% (lisp-name func-spec))))
           ,(gl-function-definition func-spec "gl" '#:%)
           ;; the exposed function with wrappings
           (defun ,(lisp-name func-spec) ,(mapcar #'final-arg-name (args func-spec))
             ,(expand-a-wrapping func-spec
                                 `(,(conc-symbols '#:% (lisp-name func-spec))
                                    ,@(mapcar #'final-arg-name (args func-spec))))))
        (gl-function-definition func-spec))))
