
(in-package #:gl) 

;;;; NV_framebuffer_multisample_coverage

(defconstant +renderbuffer-coverage-samples-nv+ #x8CAB) 
(defconstant +renderbuffer-color-samples-nv+ #x8E10) 
(defconstant +max-multisample-coverage-modes-nv+ #x8E11) 
(defconstant +multisample-coverage-modes-nv+ #x8E12) 
(defglextfun
 (("RenderbufferStorageMultisampleCoverageNV"
   renderbuffer-storage-multisample-coverage-nv)
  :args
  ((:name |target| :type |RenderbufferTarget| :direction :in)
   (:name |coverageSamples| :type |SizeI| :direction :in)
   (:name |colorSamples| :type |SizeI| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in))
  :return ("void") :category ("NV_framebuffer_multisample_coverage") :version
  ("1.5") :extension ("soft" "WINSOFT") :dlflags ("notlistable") :glfflags
  ("ignore") :glsflags ("ignore") :glxflags ("ignore"))) 