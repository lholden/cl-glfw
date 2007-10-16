
(in-package #:gl) 

;;;; NV_transform_feedback

(defconstant +back-primary-color-nv+ #x8C77) 
(defconstant +back-secondary-color-nv+ #x8C78) 
(defconstant +texture-coord-nv+ #x8C79) 
(defconstant +clip-distance-nv+ #x8C7A) 
(defconstant +vertex-id-nv+ #x8C7B) 
(defconstant +primitive-id-nv+ #x8C7C) 
(defconstant +generic-attrib-nv+ #x8C7D) 
(defconstant +transform-feedback-attribs-nv+ #x8C7E) 
(defconstant +transform-feedback-buffer-mode-nv+ #x8C7F) 
(defconstant +max-transform-feedback-separate-components-nv+ #x8C80) 
(defconstant +active-varyings-nv+ #x8C81) 
(defconstant +active-varying-max-length-nv+ #x8C82) 
(defconstant +transform-feedback-varyings-nv+ #x8C83) 
(defconstant +transform-feedback-buffer-start-nv+ #x8C84) 
(defconstant +transform-feedback-buffer-size-nv+ #x8C85) 
(defconstant +transform-feedback-record-nv+ #x8C86) 
(defconstant +primitives-generated-nv+ #x8C87) 
(defconstant +transform-feedback-primitives-written-nv+ #x8C88) 
(defconstant +rasterizer-discard-nv+ #x8C89) 
(defconstant +max-transform-feedback-interleaved-attribs-nv+ #x8C8A) 
(defconstant +max-transform-feedback-separate-attribs-nv+ #x8C8B) 
(defconstant +interleaved-attribs-nv+ #x8C8C) 
(defconstant +separate-attribs-nv+ #x8C8D) 
(defconstant +transform-feedback-buffer-nv+ #x8C8E) 
(defconstant +transform-feedback-buffer-binding-nv+ #x8C8F) 
(defglextfun
 (("GetTransformFeedbackVaryingNV" get-transform-feedback-varying-nv) :args
  ((:name |program| :type |UInt32| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |location| :type |Int32| :direction :out :array t :size #x1))
  :return ("void") :category ("NV_transform_feedback") :dlflags ("notlistable")
  :version ("1.5") :extension ("soft" "WINSOFT") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("GetActiveVaryingNV" get-active-varying-nv) :args
  ((:name |program| :type |UInt32| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |bufSize| :type |SizeI| :direction :in)
   (:name |length| :type |SizeI| :direction :out :array t :size #x1)
   (:name |size| :type |SizeI| :direction :out :array t :size #x1)
   (:name |type| :type |GLenum| :direction :out :array t :size #x1)
   (:name |name| :type |Char| :direction :out :array t :size
    (|program| |index| |bufSize|)))
  :return ("void") :category ("NV_transform_feedback") :dlflags ("notlistable")
  :version ("1.5") :extension ("soft" "WINSOFT") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("GetVaryingLocationNV" get-varying-location-nv) :args
  ((:name |program| :type |UInt32| :direction :in)
   (:name |name| :type |Char| :direction :in :array t :size (|name|)))
  :return ("Int32") :category ("NV_transform_feedback") :dlflags
  ("notlistable") :version ("1.5") :glfflags ("ignore") :glsflags ("ignore")
  :glxflags ("ignore") :extension ("soft" "WINSOFT"))) 
(defglextfun
 (("ActiveVaryingNV" active-varying-nv) :args
  ((:name |program| :type |UInt32| :direction :in)
   (:name |name| :type |Char| :direction :in :array t :size (|name|)))
  :return ("void") :category ("NV_transform_feedback") :version ("1.5")
  :dlflags ("notlistable") :glxflags ("ignore") :glfflags ("ignore") :glsflags
  ("ignore") :extension ("soft" "WINSOFT"))) 
(defglextfun
 (("TransformFeedbackVaryingsNV" transform-feedback-varyings-nv) :args
  ((:name |program| :type |UInt32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |locations| :type |Int32| :direction :in :array t :size (|count|))
   (:name |bufferMode| :type |GLenum| :direction :in))
  :return ("void") :category ("NV_transform_feedback") :version ("1.5")
  :dlflags ("notlistable") :glxflags ("ignore") :glfflags ("ignore") :glsflags
  ("ignore") :extension ("soft" "WINSOFT"))) 
(defglextfun
 (("BindBufferBaseNV" bind-buffer-base-nv) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |buffer| :type |UInt32| :direction :in))
  :return ("void") :category ("NV_transform_feedback") :version ("1.5")
  :dlflags ("notlistable") :glxflags ("ignore") :glfflags ("ignore") :glsflags
  ("ignore") :extension ("soft" "WINSOFT"))) 
(defglextfun
 (("BindBufferOffsetNV" bind-buffer-offset-nv) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |buffer| :type |UInt32| :direction :in)
   (:name |offset| :type |BufferOffset| :direction :in))
  :return ("void") :category ("NV_transform_feedback") :version ("1.5")
  :dlflags ("notlistable") :glxflags ("ignore") :glfflags ("ignore") :glsflags
  ("ignore") :extension ("soft" "WINSOFT"))) 
(defglextfun
 (("BindBufferRangeNV" bind-buffer-range-nv) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |buffer| :type |UInt32| :direction :in)
   (:name |offset| :type |BufferOffset| :direction :in)
   (:name |size| :type |BufferSize| :direction :in))
  :return ("void") :category ("NV_transform_feedback") :version ("1.5")
  :dlflags ("notlistable") :glxflags ("ignore") :glfflags ("ignore") :glsflags
  ("ignore") :extension ("soft" "WINSOFT"))) 
(defglextfun
 (("TransformFeedbackAttribsNV" transform-feedback-attribs-nv) :args
  ((:name |count| :type |UInt32| :direction :in)
   (:name |attribs| :type |Int32| :direction :in :array t :size (|count|))
   (:name |bufferMode| :type |GLenum| :direction :in))
  :return ("void") :category ("NV_transform_feedback") :version ("1.5")
  :dlflags ("notlistable") :glxflags ("ignore") :glfflags ("ignore") :glsflags
  ("ignore") :extension ("soft" "WINSOFT"))) 
(defglextfun
 (("EndTransformFeedbackNV" end-transform-feedback-nv) :args nil :return
  ("void") :category ("NV_transform_feedback") :version ("1.5") :dlflags
  ("notlistable") :glxflags ("ignore") :glfflags ("ignore") :glsflags
  ("ignore") :extension ("soft" "WINSOFT"))) 
(defglextfun
 (("BeginTransformFeedbackNV" begin-transform-feedback-nv) :args
  ((:name |primitiveMode| :type |GLenum| :direction :in)) :return ("void")
  :category ("NV_transform_feedback") :version ("1.5") :dlflags ("notlistable")
  :glxflags ("ignore") :glfflags ("ignore") :glsflags ("ignore") :extension
  ("soft" "WINSOFT"))) 