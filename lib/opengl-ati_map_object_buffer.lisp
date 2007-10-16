
(in-package #:gl) 

;;;; ATI_map_object_buffer

(defglextfun
 (("UnmapObjectBufferATI" unmap-object-buffer-ati) :args
  ((:name |buffer| :type |UInt32| :direction :in)) :return ("void") :category
  ("ATI_map_object_buffer") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("MapObjectBufferATI" map-object-buffer-ati) :args
  ((:name |buffer| :type |UInt32| :direction :in)) :return ("VoidPointer")
  :category ("ATI_map_object_buffer") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 