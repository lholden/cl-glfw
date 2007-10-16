
(in-package #:gl) 

;;;; SUN_vertex

(defglextfun
 (("ReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN"
   replacement-codeui-tex-coord-2f-color-4f-normal-3f-vertex-3fv-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in :array t :size #x1)
   (:name |tc| :type |Float32| :direction :in :array t :size #x2)
   (:name |c| :type |Float32| :direction :in :array t :size #x4)
   (:name |n| :type |Float32| :direction :in :array t :size #x3)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN"
   replacement-codeui-tex-coord-2f-color-4f-normal-3f-vertex-3f-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in)
   (:name |s| :type |Float32| :direction :in)
   (:name |t| :type |Float32| :direction :in)
   (:name |r| :type |Float32| :direction :in)
   (:name |g| :type |Float32| :direction :in)
   (:name |b| :type |Float32| :direction :in)
   (:name |a| :type |Float32| :direction :in)
   (:name |nx| :type |Float32| :direction :in)
   (:name |ny| :type |Float32| :direction :in)
   (:name |nz| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN"
   replacement-codeui-tex-coord-2f-normal-3f-vertex-3fv-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in :array t :size #x1)
   (:name |tc| :type |Float32| :direction :in :array t :size #x2)
   (:name |n| :type |Float32| :direction :in :array t :size #x3)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiTexCoord2fNormal3fVertex3fSUN"
   replacement-codeui-tex-coord-2f-normal-3f-vertex-3f-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in)
   (:name |s| :type |Float32| :direction :in)
   (:name |t| :type |Float32| :direction :in)
   (:name |nx| :type |Float32| :direction :in)
   (:name |ny| :type |Float32| :direction :in)
   (:name |nz| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiTexCoord2fVertex3fvSUN"
   replacement-codeui-tex-coord-2f-vertex-3fv-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in :array t :size #x1)
   (:name |tc| :type |Float32| :direction :in :array t :size #x2)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiTexCoord2fVertex3fSUN"
   replacement-codeui-tex-coord-2f-vertex-3f-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in)
   (:name |s| :type |Float32| :direction :in)
   (:name |t| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiColor4fNormal3fVertex3fvSUN"
   replacement-codeui-color-4f-normal-3f-vertex-3fv-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in :array t :size #x1)
   (:name |c| :type |Float32| :direction :in :array t :size #x4)
   (:name |n| :type |Float32| :direction :in :array t :size #x3)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiColor4fNormal3fVertex3fSUN"
   replacement-codeui-color-4f-normal-3f-vertex-3f-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in)
   (:name |r| :type |Float32| :direction :in)
   (:name |g| :type |Float32| :direction :in)
   (:name |b| :type |Float32| :direction :in)
   (:name |a| :type |Float32| :direction :in)
   (:name |nx| :type |Float32| :direction :in)
   (:name |ny| :type |Float32| :direction :in)
   (:name |nz| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiNormal3fVertex3fvSUN"
   replacement-codeui-normal-3f-vertex-3fv-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in :array t :size #x1)
   (:name |n| :type |Float32| :direction :in :array t :size #x3)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiNormal3fVertex3fSUN"
   replacement-codeui-normal-3f-vertex-3f-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in)
   (:name |nx| :type |Float32| :direction :in)
   (:name |ny| :type |Float32| :direction :in)
   (:name |nz| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiColor3fVertex3fvSUN"
   replacement-codeui-color-3f-vertex-3fv-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in :array t :size #x1)
   (:name |c| :type |Float32| :direction :in :array t :size #x3)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiColor3fVertex3fSUN"
   replacement-codeui-color-3f-vertex-3f-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in)
   (:name |r| :type |Float32| :direction :in)
   (:name |g| :type |Float32| :direction :in)
   (:name |b| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiColor4ubVertex3fvSUN"
   replacement-codeui-color-4ub-vertex-3fv-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in :array t :size #x1)
   (:name |c| :type |UInt8| :direction :in :array t :size #x4)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiColor4ubVertex3fSUN"
   replacement-codeui-color-4ub-vertex-3f-sun)
  :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in)
   (:name |r| :type |UInt8| :direction :in)
   (:name |g| :type |UInt8| :direction :in)
   (:name |b| :type |UInt8| :direction :in)
   (:name |a| :type |UInt8| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiVertex3fvSUN" replacement-codeui-vertex-3fv-sun) :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in :array t :size #x1)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiVertex3fSUN" replacement-codeui-vertex-3f-sun) :args
  ((:name |rc| :type |ReplacementCodeSUN| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord4fColor4fNormal3fVertex4fvSUN"
   tex-coord-4f-color-4f-normal-3f-vertex-4fv-sun)
  :args
  ((:name |tc| :type |Float32| :direction :in :array t :size #x4)
   (:name |c| :type |Float32| :direction :in :array t :size #x4)
   (:name |n| :type |Float32| :direction :in :array t :size #x3)
   (:name |v| :type |Float32| :direction :in :array t :size #x4))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord4fColor4fNormal3fVertex4fSUN"
   tex-coord-4f-color-4f-normal-3f-vertex-4f-sun)
  :args
  ((:name |s| :type |Float32| :direction :in)
   (:name |t| :type |Float32| :direction :in)
   (:name |p| :type |Float32| :direction :in)
   (:name |q| :type |Float32| :direction :in)
   (:name |r| :type |Float32| :direction :in)
   (:name |g| :type |Float32| :direction :in)
   (:name |b| :type |Float32| :direction :in)
   (:name |a| :type |Float32| :direction :in)
   (:name |nx| :type |Float32| :direction :in)
   (:name |ny| :type |Float32| :direction :in)
   (:name |nz| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in)
   (:name |w| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord2fColor4fNormal3fVertex3fvSUN"
   tex-coord-2f-color-4f-normal-3f-vertex-3fv-sun)
  :args
  ((:name |tc| :type |Float32| :direction :in :array t :size #x2)
   (:name |c| :type |Float32| :direction :in :array t :size #x4)
   (:name |n| :type |Float32| :direction :in :array t :size #x3)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord2fColor4fNormal3fVertex3fSUN"
   tex-coord-2f-color-4f-normal-3f-vertex-3f-sun)
  :args
  ((:name |s| :type |Float32| :direction :in)
   (:name |t| :type |Float32| :direction :in)
   (:name |r| :type |Float32| :direction :in)
   (:name |g| :type |Float32| :direction :in)
   (:name |b| :type |Float32| :direction :in)
   (:name |a| :type |Float32| :direction :in)
   (:name |nx| :type |Float32| :direction :in)
   (:name |ny| :type |Float32| :direction :in)
   (:name |nz| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord2fNormal3fVertex3fvSUN" tex-coord-2f-normal-3f-vertex-3fv-sun)
  :args
  ((:name |tc| :type |Float32| :direction :in :array t :size #x2)
   (:name |n| :type |Float32| :direction :in :array t :size #x3)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord2fNormal3fVertex3fSUN" tex-coord-2f-normal-3f-vertex-3f-sun) :args
  ((:name |s| :type |Float32| :direction :in)
   (:name |t| :type |Float32| :direction :in)
   (:name |nx| :type |Float32| :direction :in)
   (:name |ny| :type |Float32| :direction :in)
   (:name |nz| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord2fColor3fVertex3fvSUN" tex-coord-2f-color-3f-vertex-3fv-sun) :args
  ((:name |tc| :type |Float32| :direction :in :array t :size #x2)
   (:name |c| :type |Float32| :direction :in :array t :size #x3)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord2fColor3fVertex3fSUN" tex-coord-2f-color-3f-vertex-3f-sun) :args
  ((:name |s| :type |Float32| :direction :in)
   (:name |t| :type |Float32| :direction :in)
   (:name |r| :type |Float32| :direction :in)
   (:name |g| :type |Float32| :direction :in)
   (:name |b| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord2fColor4ubVertex3fvSUN" tex-coord-2f-color-4ub-vertex-3fv-sun)
  :args
  ((:name |tc| :type |Float32| :direction :in :array t :size #x2)
   (:name |c| :type |UInt8| :direction :in :array t :size #x4)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord2fColor4ubVertex3fSUN" tex-coord-2f-color-4ub-vertex-3f-sun) :args
  ((:name |s| :type |Float32| :direction :in)
   (:name |t| :type |Float32| :direction :in)
   (:name |r| :type |UInt8| :direction :in)
   (:name |g| :type |UInt8| :direction :in)
   (:name |b| :type |UInt8| :direction :in)
   (:name |a| :type |UInt8| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord4fVertex4fvSUN" tex-coord-4f-vertex-4fv-sun) :args
  ((:name |tc| :type |Float32| :direction :in :array t :size #x4)
   (:name |v| :type |Float32| :direction :in :array t :size #x4))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord4fVertex4fSUN" tex-coord-4f-vertex-4f-sun) :args
  ((:name |s| :type |Float32| :direction :in)
   (:name |t| :type |Float32| :direction :in)
   (:name |p| :type |Float32| :direction :in)
   (:name |q| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in)
   (:name |w| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord2fVertex3fvSUN" tex-coord-2f-vertex-3fv-sun) :args
  ((:name |tc| :type |Float32| :direction :in :array t :size #x2)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("TexCoord2fVertex3fSUN" tex-coord-2f-vertex-3f-sun) :args
  ((:name |s| :type |Float32| :direction :in)
   (:name |t| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Color4fNormal3fVertex3fvSUN" color-4f-normal-3f-vertex-3fv-sun) :args
  ((:name |c| :type |Float32| :direction :in :array t :size #x4)
   (:name |n| :type |Float32| :direction :in :array t :size #x3)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Color4fNormal3fVertex3fSUN" color-4f-normal-3f-vertex-3f-sun) :args
  ((:name |r| :type |Float32| :direction :in)
   (:name |g| :type |Float32| :direction :in)
   (:name |b| :type |Float32| :direction :in)
   (:name |a| :type |Float32| :direction :in)
   (:name |nx| :type |Float32| :direction :in)
   (:name |ny| :type |Float32| :direction :in)
   (:name |nz| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Normal3fVertex3fvSUN" normal-3f-vertex-3fv-sun) :args
  ((:name |n| :type |Float32| :direction :in :array t :size #x3)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Normal3fVertex3fSUN" normal-3f-vertex-3f-sun) :args
  ((:name |nx| :type |Float32| :direction :in)
   (:name |ny| :type |Float32| :direction :in)
   (:name |nz| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Color3fVertex3fvSUN" color-3f-vertex-3fv-sun) :args
  ((:name |c| :type |Float32| :direction :in :array t :size #x3)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Color3fVertex3fSUN" color-3f-vertex-3f-sun) :args
  ((:name |r| :type |Float32| :direction :in)
   (:name |g| :type |Float32| :direction :in)
   (:name |b| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Color4ubVertex3fvSUN" color-4ub-vertex-3fv-sun) :args
  ((:name |c| :type |UInt8| :direction :in :array t :size #x4)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Color4ubVertex3fSUN" color-4ub-vertex-3f-sun) :args
  ((:name |r| :type |UInt8| :direction :in)
   (:name |g| :type |UInt8| :direction :in)
   (:name |b| :type |UInt8| :direction :in)
   (:name |a| :type |UInt8| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Color4ubVertex2fvSUN" color-4ub-vertex-2fv-sun) :args
  ((:name |c| :type |UInt8| :direction :in :array t :size #x4)
   (:name |v| :type |Float32| :direction :in :array t :size #x2))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("Color4ubVertex2fSUN" color-4ub-vertex-2f-sun) :args
  ((:name |r| :type |UInt8| :direction :in)
   (:name |g| :type |UInt8| :direction :in)
   (:name |b| :type |UInt8| :direction :in)
   (:name |a| :type |UInt8| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in))
  :return ("void") :category ("SUN_vertex") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 