
(in-package #:gl) 

;;;; EXT_stencil_clear_tag

(defconstant +stencil-tag-bits-ext+ #x88F2) 
(defconstant +stencil-clear-tag-value-ext+ #x88F3) 
(defglextfun
 (("StencilClearTagEXT" stencil-clear-tag-ext) :args
  ((:name |stencilTagBits| :type |SizeI| :direction :in)
   (:name |stencilClearTag| :type |UInt32| :direction :in))
  :return ("void") :category ("EXT_stencil_clear_tag") :version ("1.5")
  :extension nil :glxropcode ("4223") :glxflags ("ignore") :glsopcode ("?")
  :offset ("?"))) 