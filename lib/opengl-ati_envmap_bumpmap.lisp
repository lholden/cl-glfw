
(in-package #:gl) 

;;;; ATI_envmap_bumpmap

(defconstant +bump-rot-matrix-ati+ #x8775) 
(defconstant +bump-rot-matrix-size-ati+ #x8776) 
(defconstant +bump-num-tex-units-ati+ #x8777) 
(defconstant +bump-tex-units-ati+ #x8778) 
(defconstant +dudv-ati+ #x8779) 
(defconstant +du8dv8-ati+ #x877A) 
(defconstant +bump-envmap-ati+ #x877B) 
(defconstant +bump-target-ati+ #x877C) 
(defglextfun
 (("GetTexBumpParameterfvATI" get-tex-bump-parameter-fv-ati) :args
  ((:name |pname| :type |GetTexBumpParameterATI| :direction :in)
   (:name |param| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("ATI_envmap_bumpmap") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("GetTexBumpParameterivATI" get-tex-bump-parameter-iv-ati) :args
  ((:name |pname| :type |GetTexBumpParameterATI| :direction :in)
   (:name |param| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("ATI_envmap_bumpmap") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("TexBumpParameterfvATI" tex-bump-parameter-fv-ati) :args
  ((:name |pname| :type |TexBumpParameterATI| :direction :in)
   (:name |param| :type |Float32| :direction :in :array t :size (|pname|)))
  :return ("void") :category ("ATI_envmap_bumpmap") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("TexBumpParameterivATI" tex-bump-parameter-iv-ati) :args
  ((:name |pname| :type |TexBumpParameterATI| :direction :in)
   (:name |param| :type |Int32| :direction :in :array t :size (|pname|)))
  :return ("void") :category ("ATI_envmap_bumpmap") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 