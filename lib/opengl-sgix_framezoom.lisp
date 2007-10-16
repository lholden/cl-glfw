
(in-package #:gl) 

;;;; SGIX_framezoom

(defglextfun
 (("FrameZoomSGIX" frame-zoom-sgix) :args
  ((:name |factor| :type |CheckedInt32| :direction :in)) :return ("void")
  :category ("SGIX_framezoom") :version ("1.0") :glxflags ("SGI") :glxropcode
  ("2072") :extension nil :glsopcode ("0x0182") :offset ("466"))) 