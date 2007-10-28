(in-package #:glu)

(defcfun ("gluNextContour" next-contour) :void (tess :pointer) (type gl:enum))
(defcfun ("gluEndPolygon" end-polygon) :void (tess :pointer))
(defcfun ("gluDeleteTess" delete-tess) :void (tess :pointer))
(defcfun ("gluNewTess" new-tess) :pointer )
(defcfun ("gluTessBeginContour" tess-begin-contour) :void (tess :pointer))
(defcfun ("gluTessBeginPolygon" tess-begin-polygon) :void (tess :pointer) (data :pointer))
(defcfun ("gluTessCallback" tess-callback) :void (tess :pointer) (which gl:enum) (CallBackFunc :pointer))
(defcfun ("gluTessEndContour" tess-end-contour) :void (tess :pointer))
(defcfun ("gluTessEndPolygon" tess-end-polygon) :void (tess :pointer))
(defcfun ("gluTessNormal" tess-normal) :void (tess :pointer) (valueX gl:double) (valueY gl:double) (valueZ gl:double))
(defcfun ("gluTessProperty" tess-property) :void (tess :pointer) (which gl:enum) (data gl:double))
(defcfun ("gluTessVertex" tess-vertex) :void (tess :pointer) (location :pointer) (data :pointer))

(defcfun ("gluGetTessProperty" get-tess-property) :void (tess :pointer) (which gl:enum) (data :pointer))
(defcfun ("gluBeginPolygon" begin-polygon) :void (tess :pointer))

