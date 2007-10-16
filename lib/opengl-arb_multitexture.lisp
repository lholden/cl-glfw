
(in-package #:gl) 

;;;; ARB_multitexture

(defconstant +texture0-arb+ #x84C0) 
(defconstant +texture1-arb+ #x84C1) 
(defconstant +texture2-arb+ #x84C2) 
(defconstant +texture3-arb+ #x84C3) 
(defconstant +texture4-arb+ #x84C4) 
(defconstant +texture5-arb+ #x84C5) 
(defconstant +texture6-arb+ #x84C6) 
(defconstant +texture7-arb+ #x84C7) 
(defconstant +texture8-arb+ #x84C8) 
(defconstant +texture9-arb+ #x84C9) 
(defconstant +texture10-arb+ #x84CA) 
(defconstant +texture11-arb+ #x84CB) 
(defconstant +texture12-arb+ #x84CC) 
(defconstant +texture13-arb+ #x84CD) 
(defconstant +texture14-arb+ #x84CE) 
(defconstant +texture15-arb+ #x84CF) 
(defconstant +texture16-arb+ #x84D0) 
(defconstant +texture17-arb+ #x84D1) 
(defconstant +texture18-arb+ #x84D2) 
(defconstant +texture19-arb+ #x84D3) 
(defconstant +texture20-arb+ #x84D4) 
(defconstant +texture21-arb+ #x84D5) 
(defconstant +texture22-arb+ #x84D6) 
(defconstant +texture23-arb+ #x84D7) 
(defconstant +texture24-arb+ #x84D8) 
(defconstant +texture25-arb+ #x84D9) 
(defconstant +texture26-arb+ #x84DA) 
(defconstant +texture27-arb+ #x84DB) 
(defconstant +texture28-arb+ #x84DC) 
(defconstant +texture29-arb+ #x84DD) 
(defconstant +texture30-arb+ #x84DE) 
(defconstant +texture31-arb+ #x84DF) 
(defconstant +active-texture-arb+ #x84E0) 
(defconstant +client-active-texture-arb+ #x84E1) 
(defconstant +max-texture-units-arb+ #x84E2) 
(defglextfun
 (("MultiTexCoord4svARB" multi-tex-coord-4sv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordS| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("213") :alias ("MultiTexCoord4sv") :glsalias
  ("MultiTexCoord4sv"))) 
(defglextfun
 (("MultiTexCoord4sARB" multi-tex-coord-4s-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordS| :direction :in)
   (:name |t| :type |CoordS| :direction :in)
   (:name |r| :type |CoordS| :direction :in)
   (:name |q| :type |CoordS| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord4sv"))) 
(defglextfun
 (("MultiTexCoord4ivARB" multi-tex-coord-4iv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordI| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("212") :alias ("MultiTexCoord4iv") :glsalias
  ("MultiTexCoord4iv"))) 
(defglextfun
 (("MultiTexCoord4iARB" multi-tex-coord-4i-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordI| :direction :in)
   (:name |t| :type |CoordI| :direction :in)
   (:name |r| :type |CoordI| :direction :in)
   (:name |q| :type |CoordI| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord4iv"))) 
(defglextfun
 (("MultiTexCoord4fvARB" multi-tex-coord-4fv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordF| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("211") :alias ("MultiTexCoord4fv") :glsalias
  ("MultiTexCoord4fv"))) 
(defglextfun
 (("MultiTexCoord4fARB" multi-tex-coord-4f-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordF| :direction :in)
   (:name |t| :type |CoordF| :direction :in)
   (:name |r| :type |CoordF| :direction :in)
   (:name |q| :type |CoordF| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord4fv"))) 
(defglextfun
 (("MultiTexCoord4dvARB" multi-tex-coord-4dv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordD| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("210") :alias ("MultiTexCoord4dv") :glsalias
  ("MultiTexCoord4dv"))) 
(defglextfun
 (("MultiTexCoord4dARB" multi-tex-coord-4d-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordD| :direction :in)
   (:name |t| :type |CoordD| :direction :in)
   (:name |r| :type |CoordD| :direction :in)
   (:name |q| :type |CoordD| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord4dv"))) 
(defglextfun
 (("MultiTexCoord3svARB" multi-tex-coord-3sv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordS| :direction :in :array t :size #x3))
  :return ("void") :category ("ARB_multitexture") :version ("1.2") :glxflags
  ("ARB") :glxropcode ("209") :alias ("MultiTexCoord3sv") :glsalias
  ("MultiTexCoord3sv"))) 
(defglextfun
 (("MultiTexCoord3sARB" multi-tex-coord-3s-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordS| :direction :in)
   (:name |t| :type |CoordS| :direction :in)
   (:name |r| :type |CoordS| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord3sv"))) 
(defglextfun
 (("MultiTexCoord3ivARB" multi-tex-coord-3iv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordI| :direction :in :array t :size #x3))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("208") :alias ("MultiTexCoord3iv") :glsalias
  ("MultiTexCoord3iv"))) 
(defglextfun
 (("MultiTexCoord3iARB" multi-tex-coord-3i-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordI| :direction :in)
   (:name |t| :type |CoordI| :direction :in)
   (:name |r| :type |CoordI| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord3iv"))) 
(defglextfun
 (("MultiTexCoord3fvARB" multi-tex-coord-3fv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordF| :direction :in :array t :size #x3))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("207") :alias ("MultiTexCoord3fv") :glsalias
  ("MultiTexCoord3fv"))) 
(defglextfun
 (("MultiTexCoord3fARB" multi-tex-coord-3f-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordF| :direction :in)
   (:name |t| :type |CoordF| :direction :in)
   (:name |r| :type |CoordF| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord3fv"))) 
(defglextfun
 (("MultiTexCoord3dvARB" multi-tex-coord-3dv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordD| :direction :in :array t :size #x3))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("206") :alias ("MultiTexCoord3dv") :glsalias
  ("MultiTexCoord3dv"))) 
(defglextfun
 (("MultiTexCoord3dARB" multi-tex-coord-3d-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordD| :direction :in)
   (:name |t| :type |CoordD| :direction :in)
   (:name |r| :type |CoordD| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord3dv"))) 
(defglextfun
 (("MultiTexCoord2svARB" multi-tex-coord-2sv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordS| :direction :in :array t :size #x2))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("205") :alias ("MultiTexCoord2sv") :glsalias
  ("MultiTexCoord2sv"))) 
(defglextfun
 (("MultiTexCoord2sARB" multi-tex-coord-2s-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordS| :direction :in)
   (:name |t| :type |CoordS| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord2sv"))) 
(defglextfun
 (("MultiTexCoord2ivARB" multi-tex-coord-2iv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordI| :direction :in :array t :size #x2))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("204") :alias ("MultiTexCoord2iv") :glsalias
  ("MultiTexCoord2iv"))) 
(defglextfun
 (("MultiTexCoord2iARB" multi-tex-coord-2i-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordI| :direction :in)
   (:name |t| :type |CoordI| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord2iv"))) 
(defglextfun
 (("MultiTexCoord2fvARB" multi-tex-coord-2fv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordF| :direction :in :array t :size #x2))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("203") :alias ("MultiTexCoord2fv") :glsalias
  ("MultiTexCoord2fv"))) 
(defglextfun
 (("MultiTexCoord2fARB" multi-tex-coord-2f-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordF| :direction :in)
   (:name |t| :type |CoordF| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord2fv"))) 
(defglextfun
 (("MultiTexCoord2dvARB" multi-tex-coord-2dv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordD| :direction :in :array t :size #x2))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("202") :alias ("MultiTexCoord2dv") :glsalias
  ("MultiTexCoord2dv"))) 
(defglextfun
 (("MultiTexCoord2dARB" multi-tex-coord-2d-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordD| :direction :in)
   (:name |t| :type |CoordD| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord2dv"))) 
(defglextfun
 (("MultiTexCoord1svARB" multi-tex-coord-1sv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordS| :direction :in :array t :size #x1))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("201") :alias ("MultiTexCoord1sv") :glsalias
  ("MultiTexCoord1sv"))) 
(defglextfun
 (("MultiTexCoord1sARB" multi-tex-coord-1s-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordS| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord1sv"))) 
(defglextfun
 (("MultiTexCoord1ivARB" multi-tex-coord-1iv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordI| :direction :in :array t :size #x1))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("200") :alias ("MultiTexCoord1iv") :glsalias
  ("MultiTexCoord1iv"))) 
(defglextfun
 (("MultiTexCoord1iARB" multi-tex-coord-1i-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordI| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord1iv"))) 
(defglextfun
 (("MultiTexCoord1fvARB" multi-tex-coord-1fv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordF| :direction :in :array t :size #x1))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("199") :alias ("MultiTexCoord1fv") :glsalias
  ("MultiTexCoord1fv"))) 
(defglextfun
 (("MultiTexCoord1fARB" multi-tex-coord-1f-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordF| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord1fv"))) 
(defglextfun
 (("MultiTexCoord1dvARB" multi-tex-coord-1dv-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordD| :direction :in :array t :size #x1))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :glxropcode ("198") :alias ("MultiTexCoord1dv") :glsalias
  ("MultiTexCoord1dv"))) 
(defglextfun
 (("MultiTexCoord1dARB" multi-tex-coord-1d-arb) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordD| :direction :in))
  :return ("void") :category ("ARB_multitexture") :glxflags ("ARB") :version
  ("1.2") :vectorequiv ("MultiTexCoord1dv"))) 
(defglextfun
 (("ClientActiveTextureARB" client-active-texture-arb) :args
  ((:name |texture| :type |TextureUnit| :direction :in)) :return ("void")
  :category ("ARB_multitexture") :dlflags ("notlistable") :glxflags
  ("ARB" "client-handcode" "client-intercept" "server-handcode") :version
  ("1.2") :alias ("ClientActiveTexture") :glsalias ("ClientActiveTexture"))) 
(defglextfun
 (("ActiveTextureARB" active-texture-arb) :args
  ((:name |texture| :type |TextureUnit| :direction :in)) :return ("void")
  :category ("ARB_multitexture") :glxflags ("ARB") :version ("1.2") :glxropcode
  ("197") :alias ("ActiveTexture") :glsalias ("ActiveTexture"))) 