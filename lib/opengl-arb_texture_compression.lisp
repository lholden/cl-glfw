
(in-package #:gl) 

;;;; ARB_texture_compression

(defconstant +compressed-alpha-arb+ #x84E9) 
(defconstant +compressed-luminance-arb+ #x84EA) 
(defconstant +compressed-luminance-alpha-arb+ #x84EB) 
(defconstant +compressed-intensity-arb+ #x84EC) 
(defconstant +compressed-rgb-arb+ #x84ED) 
(defconstant +compressed-rgba-arb+ #x84EE) 
(defconstant +texture-compression-hint-arb+ #x84EF) 
(defconstant +texture-compressed-image-size-arb+ #x86A0) 
(defconstant +texture-compressed-arb+ #x86A1) 
(defconstant +num-compressed-texture-formats-arb+ #x86A2) 
(defconstant +compressed-texture-formats-arb+ #x86A3) 
(defglextfun
 (("GetCompressedTexImageARB" get-compressed-tex-image-arb) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |img| :type |CompressedTextureARB| :direction :out :array t :size
    (|target| |level|)))
  :return ("void") :category ("ARB_texture_compression") :dlflags
  ("notlistable") :glxflags ("ARB" "client-handcode" "server-handcode")
  :version ("1.2") :glxsingle ("160") :alias ("GetCompressedTexImage")
  :glsalias ("GetCompressedTexImage") :wglflags
  ("client-handcode" "server-handcode"))) 
(defglextfun
 (("CompressedTexSubImage1DARB" compressed-tex-sub-image-1d-arb) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |xoffset| :type |CheckedInt32| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |imageSize| :type |SizeI| :direction :in)
   (:name |data| :type |CompressedTextureARB| :direction :in :array t :size
    imagesize))
  :return ("void") :category ("ARB_texture_compression") :dlflags ("handcode")
  :glxflags ("ARB" "client-handcode" "server-handcode") :version ("1.2")
  :glxropcode ("217") :alias ("CompressedTexSubImage1D") :glsalias
  ("CompressedTexSubImage1D") :wglflags ("client-handcode" "server-handcode"))) 
(defglextfun
 (("CompressedTexSubImage2DARB" compressed-tex-sub-image-2d-arb) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |xoffset| :type |CheckedInt32| :direction :in)
   (:name |yoffset| :type |CheckedInt32| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |imageSize| :type |SizeI| :direction :in)
   (:name |data| :type |CompressedTextureARB| :direction :in :array t :size
    imagesize))
  :return ("void") :category ("ARB_texture_compression") :dlflags ("handcode")
  :glxflags ("ARB" "client-handcode" "server-handcode") :version ("1.2")
  :glxropcode ("218") :alias ("CompressedTexSubImage2D") :glsalias
  ("CompressedTexSubImage2D") :wglflags ("client-handcode" "server-handcode"))) 
(defglextfun
 (("CompressedTexSubImage3DARB" compressed-tex-sub-image-3d-arb) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |xoffset| :type |CheckedInt32| :direction :in)
   (:name |yoffset| :type |CheckedInt32| :direction :in)
   (:name |zoffset| :type |CheckedInt32| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |depth| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |imageSize| :type |SizeI| :direction :in)
   (:name |data| :type |CompressedTextureARB| :direction :in :array t :size
    imagesize))
  :return ("void") :category ("ARB_texture_compression") :dlflags ("handcode")
  :glxflags ("ARB" "client-handcode" "server-handcode") :version ("1.2")
  :glxropcode ("219") :alias ("CompressedTexSubImage3D") :glsalias
  ("CompressedTexSubImage3D") :wglflags ("client-handcode" "server-handcode"))) 
(defglextfun
 (("CompressedTexImage1DARB" compressed-tex-image-1d-arb) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |border| :type |CheckedInt32| :direction :in)
   (:name |imageSize| :type |SizeI| :direction :in)
   (:name |data| :type |CompressedTextureARB| :direction :in :array t :size
    imagesize))
  :return ("void") :category ("ARB_texture_compression") :dlflags ("handcode")
  :glxflags ("ARB" "client-handcode" "server-handcode") :version ("1.2")
  :glxropcode ("214") :alias ("CompressedTexImage1D") :glsalias
  ("CompressedTexImage1D") :wglflags ("client-handcode" "server-handcode"))) 
(defglextfun
 (("CompressedTexImage2DARB" compressed-tex-image-2d-arb) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |border| :type |CheckedInt32| :direction :in)
   (:name |imageSize| :type |SizeI| :direction :in)
   (:name |data| :type |CompressedTextureARB| :direction :in :array t :size
    imagesize))
  :return ("void") :category ("ARB_texture_compression") :dlflags ("handcode")
  :glxflags ("ARB" "client-handcode" "server-handcode") :version ("1.2")
  :glxropcode ("215") :alias ("CompressedTexImage2D") :glsalias
  ("CompressedTexImage2D") :wglflags ("client-handcode" "server-handcode"))) 
(defglextfun
 (("CompressedTexImage3DARB" compressed-tex-image-3d-arb) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |depth| :type |SizeI| :direction :in)
   (:name |border| :type |CheckedInt32| :direction :in)
   (:name |imageSize| :type |SizeI| :direction :in)
   (:name |data| :type |CompressedTextureARB| :direction :in :array t :size
    imagesize))
  :return ("void") :category ("ARB_texture_compression") :dlflags ("handcode")
  :glxflags ("ARB" "client-handcode" "server-handcode") :version ("1.2")
  :glxropcode ("216") :alias ("CompressedTexImage3D") :glsalias
  ("CompressedTexImage3D") :wglflags ("client-handcode" "server-handcode"))) 