
(in-package #:gl) 

;;;; EXT_texture_buffer_object

(defconstant +texture-buffer-ext+ #x8C2A) 
(defconstant +max-texture-buffer-size-ext+ #x8C2B) 
(defconstant +texture-binding-buffer-ext+ #x8C2C) 
(defconstant +texture-buffer-data-store-binding-ext+ #x8C2D) 
(defconstant +texture-buffer-format-ext+ #x8C2E) 
(defglextfun
 (("TexBufferEXT" tex-buffer-ext) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |internalformat| :type |GLenum| :direction :in)
   (:name |buffer| :type |UInt32| :direction :in))
  :return ("void") :category ("EXT_texture_buffer_object") :version ("2.0")
  :extension ("soft" "WINSOFT" "NV50") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 