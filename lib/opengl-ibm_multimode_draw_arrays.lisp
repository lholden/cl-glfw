
(in-package #:gl) 

;;;; IBM_multimode_draw_arrays

(defglextfun
 (("MultiModeDrawElementsIBM" multi-mode-draw-elements-ibm) :args
  ((:name |mode| :type |BeginMode| :direction :in :array t :size (|primcount|))
   (:name |count| :type |SizeI| :direction :in :array t :size (|primcount|))
   (:name |type| :type |DrawElementsType| :direction :in)
   (:name |indices| :type |ConstVoidPointer| :direction :in :array t :size
    (|primcount|))
   (:name |primcount| :type |SizeI| :direction :in)
   (:name |modestride| :type |Int32| :direction :in))
  :return ("void") :category ("IBM_multimode_draw_arrays") :version ("1.1")
  :glxropcode ("?") :glsflags ("ignore") :offset ("709"))) 
(defglextfun
 (("MultiModeDrawArraysIBM" multi-mode-draw-arrays-ibm) :args
  ((:name |mode| :type |BeginMode| :direction :in :array t :size (|primcount|))
   (:name |first| :type |Int32| :direction :in :array t :size (|primcount|))
   (:name |count| :type |SizeI| :direction :in :array t :size (|primcount|))
   (:name |primcount| :type |SizeI| :direction :in)
   (:name |modestride| :type |Int32| :direction :in))
  :return ("void") :category ("IBM_multimode_draw_arrays") :version ("1.1")
  :glxropcode ("?") :glsflags ("ignore") :offset ("708"))) 