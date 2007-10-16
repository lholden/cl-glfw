
(in-package #:gl) 

;;;; NV_primitive_restart

(defconstant +primitive-restart-nv+ #x8558) 
(defconstant +primitive-restart-index-nv+ #x8559) 
(defglextfun
 (("PrimitiveRestartIndexNV" primitive-restart-index-nv) :args
  ((:name |index| :type |UInt32| :direction :in)) :return ("void") :category
  ("NV_primitive_restart") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("PrimitiveRestartNV" primitive-restart-nv) :args nil :return ("void")
  :category ("NV_primitive_restart") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 