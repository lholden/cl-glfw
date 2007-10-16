
(in-package #:gl) 

;;;; 3DFX_tbuffer

(defglextfun
 (("TbufferMask3DFX" tbuffer-mask-3dfx) :args
  ((:name |mask| :type |UInt32| :direction :in)) :return ("void") :category
  ("3DFX_tbuffer") :version ("1.2") :glxropcode ("?") :glsflags ("ignore")
  :glsopcode ("0x01FC") :offset ("553"))) 