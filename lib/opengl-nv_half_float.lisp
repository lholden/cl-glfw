
(in-package #:gl) 

;;;; NV_half_float

(defconstant +half-float-nv+ #x140B) 
(defglextfun
 (("VertexAttribs4hvNV" vertex-attribs-4hv-nv) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |n| :type |SizeI| :direction :in)
   (:name |v| :type |Half16NV| :direction :in :array t :size n))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("VertexAttribs3hvNV" vertex-attribs-3hv-nv) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |n| :type |SizeI| :direction :in)
   (:name |v| :type |Half16NV| :direction :in :array t :size n))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("VertexAttribs2hvNV" vertex-attribs-2hv-nv) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |n| :type |SizeI| :direction :in)
   (:name |v| :type |Half16NV| :direction :in :array t :size n))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("VertexAttribs1hvNV" vertex-attribs-1hv-nv) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |n| :type |SizeI| :direction :in)
   (:name |v| :type |Half16NV| :direction :in :array t :size n))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("VertexAttrib4hvNV" vertex-attrib-4hv-nv) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Half16NV| :direction :in :array t :size #x4))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("VertexAttrib4hNV" vertex-attrib-4h-nv) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Half16NV| :direction :in)
   (:name |y| :type |Half16NV| :direction :in)
   (:name |z| :type |Half16NV| :direction :in)
   (:name |w| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("VertexAttrib3hvNV" vertex-attrib-3hv-nv) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Half16NV| :direction :in :array t :size #x3))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("VertexAttrib3hNV" vertex-attrib-3h-nv) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Half16NV| :direction :in)
   (:name |y| :type |Half16NV| :direction :in)
   (:name |z| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("VertexAttrib2hvNV" vertex-attrib-2hv-nv) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Half16NV| :direction :in :array t :size #x2))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("VertexAttrib2hNV" vertex-attrib-2h-nv) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Half16NV| :direction :in)
   (:name |y| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("VertexAttrib1hvNV" vertex-attrib-1hv-nv) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Half16NV| :direction :in :array t :size #x1))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("VertexAttrib1hNV" vertex-attrib-1h-nv) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("VertexWeighthvNV" vertex-weight-hv-nv) :args
  ((:name |weight| :type |Half16NV| :direction :in :array t :size #x1)) :return
  ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("VertexWeighthNV" vertex-weight-h-nv) :args
  ((:name |weight| :type |Half16NV| :direction :in)) :return ("void") :category
  ("NV_half_float") :version ("1.2") :extension nil :glxropcode ("?") :glxflags
  ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("SecondaryColor3hvNV" secondary-color-3hv-nv) :args
  ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :return
  ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("SecondaryColor3hNV" secondary-color-3h-nv) :args
  ((:name |red| :type |Half16NV| :direction :in)
   (:name |green| :type |Half16NV| :direction :in)
   (:name |blue| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("FogCoordhvNV" fog-coord-hv-nv) :args
  ((:name |fog| :type |Half16NV| :direction :in :array t :size #x1)) :return
  ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("FogCoordhNV" fog-coord-h-nv) :args
  ((:name |fog| :type |Half16NV| :direction :in)) :return ("void") :category
  ("NV_half_float") :version ("1.2") :extension nil :glxropcode ("?") :glxflags
  ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("MultiTexCoord4hvNV" multi-tex-coord-4hv-nv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |Half16NV| :direction :in :array t :size #x4))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("MultiTexCoord4hNV" multi-tex-coord-4h-nv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |Half16NV| :direction :in)
   (:name |t| :type |Half16NV| :direction :in)
   (:name |r| :type |Half16NV| :direction :in)
   (:name |q| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("MultiTexCoord3hvNV" multi-tex-coord-3hv-nv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |Half16NV| :direction :in :array t :size #x3))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("MultiTexCoord3hNV" multi-tex-coord-3h-nv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |Half16NV| :direction :in)
   (:name |t| :type |Half16NV| :direction :in)
   (:name |r| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("MultiTexCoord2hvNV" multi-tex-coord-2hv-nv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |Half16NV| :direction :in :array t :size #x2))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("MultiTexCoord2hNV" multi-tex-coord-2h-nv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |Half16NV| :direction :in)
   (:name |t| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("MultiTexCoord1hvNV" multi-tex-coord-1hv-nv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |Half16NV| :direction :in :array t :size #x1))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("MultiTexCoord1hNV" multi-tex-coord-1h-nv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("TexCoord4hvNV" tex-coord-4hv-nv) :args
  ((:name |v| :type |Half16NV| :direction :in :array t :size #x4)) :return
  ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("TexCoord4hNV" tex-coord-4h-nv) :args
  ((:name |s| :type |Half16NV| :direction :in)
   (:name |t| :type |Half16NV| :direction :in)
   (:name |r| :type |Half16NV| :direction :in)
   (:name |q| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("TexCoord3hvNV" tex-coord-3hv-nv) :args
  ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :return
  ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("TexCoord3hNV" tex-coord-3h-nv) :args
  ((:name |s| :type |Half16NV| :direction :in)
   (:name |t| :type |Half16NV| :direction :in)
   (:name |r| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("TexCoord2hvNV" tex-coord-2hv-nv) :args
  ((:name |v| :type |Half16NV| :direction :in :array t :size #x2)) :return
  ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("TexCoord2hNV" tex-coord-2h-nv) :args
  ((:name |s| :type |Half16NV| :direction :in)
   (:name |t| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("TexCoord1hvNV" tex-coord-1hv-nv) :args
  ((:name |v| :type |Half16NV| :direction :in :array t :size #x1)) :return
  ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("TexCoord1hNV" tex-coord-1h-nv) :args
  ((:name |s| :type |Half16NV| :direction :in)) :return ("void") :category
  ("NV_half_float") :version ("1.2") :extension nil :glxropcode ("?") :glxflags
  ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("Color4hvNV" color-4hv-nv) :args
  ((:name |v| :type |Half16NV| :direction :in :array t :size #x4)) :return
  ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("Color4hNV" color-4h-nv) :args
  ((:name |red| :type |Half16NV| :direction :in)
   (:name |green| :type |Half16NV| :direction :in)
   (:name |blue| :type |Half16NV| :direction :in)
   (:name |alpha| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("Color3hvNV" color-3hv-nv) :args
  ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :return
  ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("Color3hNV" color-3h-nv) :args
  ((:name |red| :type |Half16NV| :direction :in)
   (:name |green| :type |Half16NV| :direction :in)
   (:name |blue| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("Normal3hvNV" normal-3hv-nv) :args
  ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :return
  ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("Normal3hNV" normal-3h-nv) :args
  ((:name |nx| :type |Half16NV| :direction :in)
   (:name |ny| :type |Half16NV| :direction :in)
   (:name |nz| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("Vertex4hvNV" vertex-4hv-nv) :args
  ((:name |v| :type |Half16NV| :direction :in :array t :size #x4)) :return
  ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("Vertex4hNV" vertex-4h-nv) :args
  ((:name |x| :type |Half16NV| :direction :in)
   (:name |y| :type |Half16NV| :direction :in)
   (:name |z| :type |Half16NV| :direction :in)
   (:name |w| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("Vertex3hvNV" vertex-3hv-nv) :args
  ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :return
  ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("Vertex3hNV" vertex-3h-nv) :args
  ((:name |x| :type |Half16NV| :direction :in)
   (:name |y| :type |Half16NV| :direction :in)
   (:name |z| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("Vertex2hvNV" vertex-2hv-nv) :args
  ((:name |v| :type |Half16NV| :direction :in :array t :size #x2)) :return
  ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("Vertex2hNV" vertex-2h-nv) :args
  ((:name |x| :type |Half16NV| :direction :in)
   (:name |y| :type |Half16NV| :direction :in))
  :return ("void") :category ("NV_half_float") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 