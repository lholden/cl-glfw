
(in-package #:gl) 

;;;; EXT_framebuffer_blit

(defconstant +read-framebuffer-ext+ #x8CA8) 
(defconstant +draw-framebuffer-ext+ #x8CA9) 
(defconstant +read-framebuffer-binding-ext+ #x8CA6) 
(defconstant +draw-framebuffer-binding-ext+ #x8CAA) 
(defglextfun
 (("BlitFramebufferEXT" blit-framebuffer-ext) :args
  ((:name |srcX0| :type |Int32| :direction :in)
   (:name |srcY0| :type |Int32| :direction :in)
   (:name |srcX1| :type |Int32| :direction :in)
   (:name |srcY1| :type |Int32| :direction :in)
   (:name |dstX0| :type |Int32| :direction :in)
   (:name |dstY0| :type |Int32| :direction :in)
   (:name |dstX1| :type |Int32| :direction :in)
   (:name |dstY1| :type |Int32| :direction :in)
   (:name |mask| :type |ClearBufferMask| :direction :in)
   (:name |filter| :type |GLenum| :direction :in))
  :return ("void") :category ("EXT_framebuffer_blit") :version ("1.5")
  :glxropcode ("4330") :glsopcode ("?") :offset ("?"))) 