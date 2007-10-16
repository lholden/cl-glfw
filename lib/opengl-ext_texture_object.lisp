
(in-package #:gl) 

;;;; EXT_texture_object

(defconstant +texture-priority-ext+ #x8066) 
(defconstant +texture-resident-ext+ #x8067) 
(defconstant +texture-1d-binding-ext+ #x8068) 
(defconstant +texture-2d-binding-ext+ #x8069) 
(defconstant +texture-priority-ext+ #x8066) 
(defconstant +texture-resident-ext+ #x8067) 
(defconstant +texture-1d-binding-ext+ #x8068) 
(defconstant +texture-2d-binding-ext+ #x8069) 
(defglextfun
 (("PrioritizeTexturesEXT" prioritize-textures-ext) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |textures| :type |Texture| :direction :in :array t :size n)
   (:name |priorities| :type |ClampedFloat32| :direction :in :array t :size n))
  :return ("void") :category ("EXT_texture_object") :glxflags ("EXT") :version
  ("1.0") :glxropcode ("4118") :extension nil :alias ("PrioritizeTextures")
  :glsalias ("PrioritizeTextures"))) 
(defglextfun
 (("IsTextureEXT" is-texture-ext) :args
  ((:name |texture| :type |Texture| :direction :in)) :return ("Boolean")
  :category ("EXT_texture_object") :dlflags ("notlistable") :version ("1.0")
  :glxflags ("EXT") :glxvendorpriv ("14") :extension nil :glsflags ("get")
  :glsopcode ("0x014B") :offset ("441"))) 
(defglextfun
 (("GenTexturesEXT" gen-textures-ext) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |textures| :type |Texture| :direction :out :array t :size n))
  :return ("void") :category ("EXT_texture_object") :dlflags ("notlistable")
  :version ("1.0") :glxflags ("EXT") :glxvendorpriv ("13") :extension nil
  :glsopcode ("0x014A") :offset ("440"))) 
(defglextfun
 (("DeleteTexturesEXT" delete-textures-ext) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |textures| :type |Texture| :direction :in :array t :size n))
  :return ("void") :category ("EXT_texture_object") :dlflags ("notlistable")
  :version ("1.0") :glxflags ("EXT") :glxvendorpriv ("12") :extension nil
  :glsopcode ("0x0149") :offset ("561"))) 
(defglextfun
 (("BindTextureEXT" bind-texture-ext) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |texture| :type |Texture| :direction :in))
  :return ("void") :category ("EXT_texture_object") :version ("1.0") :glxflags
  ("EXT") :glxropcode ("4117") :extension nil :alias ("BindTexture") :glsalias
  ("BindTexture"))) 
(defglextfun
 (("AreTexturesResidentEXT" are-textures-resident-ext) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |textures| :type |Texture| :direction :in :array t :size n)
   (:name |residences| :type |Boolean| :direction :out :array t :size n))
  :return ("Boolean") :category ("EXT_texture_object") :glxflags ("EXT")
  :glxvendorpriv ("11") :dlflags ("notlistable") :version ("1.0") :extension
  nil :glsflags ("get") :glsopcode ("0x0147") :offset ("439"))) 