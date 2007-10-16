
(in-package #:gl) 

;;;; EXT_blend_equation_separate

(defconstant +blend-equation-rgb-ext+ #x8009) 
(defconstant +blend-equation-alpha-ext+ #x883D) 
(defglextfun
 (("BlendEquationSeparateEXT" blend-equation-separate-ext) :args
  ((:name |modeRGB| :type |BlendEquationModeEXT| :direction :in)
   (:name |modeAlpha| :type |BlendEquationModeEXT| :direction :in))
  :return ("void") :category ("EXT_blend_equation_separate") :version ("1.2")
  :extension nil :glxropcode ("4228") :alias ("BlendEquationSeparate")
  :glsalias ("BlendEquationSeparate"))) 