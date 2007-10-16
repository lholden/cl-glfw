
(in-package #:gl) 

;;;; EXT_pixel_transform

(defconstant +pixel-transform-2d-ext+ #x8330) 
(defconstant +pixel-mag-filter-ext+ #x8331) 
(defconstant +pixel-min-filter-ext+ #x8332) 
(defconstant +pixel-cubic-weight-ext+ #x8333) 
(defconstant +cubic-ext+ #x8334) 
(defconstant +average-ext+ #x8335) 
(defconstant +pixel-transform-2d-stack-depth-ext+ #x8336) 
(defconstant +max-pixel-transform-2d-stack-depth-ext+ #x8337) 
(defconstant +pixel-transform-2d-matrix-ext+ #x8338) 
(defconstant +pixel-transform-2d-ext+ #x8330) 
(defconstant +pixel-mag-filter-ext+ #x8331) 
(defconstant +pixel-min-filter-ext+ #x8332) 
(defconstant +pixel-cubic-weight-ext+ #x8333) 
(defconstant +cubic-ext+ #x8334) 
(defconstant +average-ext+ #x8335) 
(defconstant +pixel-transform-2d-stack-depth-ext+ #x8336) 
(defconstant +max-pixel-transform-2d-stack-depth-ext+ #x8337) 
(defconstant +pixel-transform-2d-matrix-ext+ #x8338) 
(defglextfun
 (("PixelTransformParameterfvEXT" pixel-transform-parameter-fv-ext) :args
  ((:name |target| :type |PixelTransformTargetEXT| :direction :in)
   (:name |pname| :type |PixelTransformPNameEXT| :direction :in)
   (:name |params| :type |Float32| :direction :in :array t :size #x1))
  :return ("void") :category ("EXT_pixel_transform") :version ("1.1")
  :glxropcode ("?") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("PixelTransformParameterivEXT" pixel-transform-parameter-iv-ext) :args
  ((:name |target| :type |PixelTransformTargetEXT| :direction :in)
   (:name |pname| :type |PixelTransformPNameEXT| :direction :in)
   (:name |params| :type |Int32| :direction :in :array t :size #x1))
  :return ("void") :category ("EXT_pixel_transform") :version ("1.1")
  :glxropcode ("?") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("PixelTransformParameterfEXT" pixel-transform-parameter-f-ext) :args
  ((:name |target| :type |PixelTransformTargetEXT| :direction :in)
   (:name |pname| :type |PixelTransformPNameEXT| :direction :in)
   (:name |param| :type |Float32| :direction :in))
  :return ("void") :category ("EXT_pixel_transform") :version ("1.1")
  :glxropcode ("?") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("PixelTransformParameteriEXT" pixel-transform-parameter-i-ext) :args
  ((:name |target| :type |PixelTransformTargetEXT| :direction :in)
   (:name |pname| :type |PixelTransformPNameEXT| :direction :in)
   (:name |param| :type |Int32| :direction :in))
  :return ("void") :category ("EXT_pixel_transform") :version ("1.1")
  :glxropcode ("?") :glsflags ("ignore") :offset ("?"))) 