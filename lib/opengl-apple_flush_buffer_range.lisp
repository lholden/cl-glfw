
(in-package #:gl) 

;;;; APPLE_flush_buffer_range

(defconstant +buffer-serialized-modify-apple+ #x8A12) 
(defconstant +buffer-flushing-unmap-apple+ #x8A13) 
(defglextfun
 (("FlushMappedBufferRangeAPPLE" flush-mapped-buffer-range-apple) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |offset| :type |BufferOffset| :direction :in)
   (:name |size| :type |BufferSize| :direction :in))
  :return ("void") :category ("APPLE_flush_buffer_range") :version ("1.5")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?")
  :offset ("?"))) 
(defglextfun
 (("BufferParameteriAPPLE" buffer-parameter-i-apple) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |pname| :type |GLenum| :direction :in)
   (:name |param| :type |Int32| :direction :in))
  :return ("void") :category ("APPLE_flush_buffer_range") :version ("1.5")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?")
  :offset ("?"))) 