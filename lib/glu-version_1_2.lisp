(in-package #:cl-glfw-glu)

(defcfun ("gluNextContour" next-contour) :void (tess :pointer) (type enum))
(defcfun ("gluEndPolygon" end-polygon) :void (tess :pointer))
(defcfun ("gluDeleteTess" delete-tess) :void (tess :pointer))
(defcfun ("gluNewTess" new-tess) :pointer )
(defcfun ("gluTessBeginContour" tess-begin-contour) :void (tess :pointer))
(defcfun ("gluTessBeginPolygon" tess-begin-polygon) :void (tess :pointer) (data :pointer))
(defcfun ("gluTessCallback" tess-callback) :void (tess :pointer) (which enum) (CallBackFunc :pointer))
(defcfun ("gluTessEndContour" tess-end-contour) :void (tess :pointer))
(defcfun ("gluTessEndPolygon" tess-end-polygon) :void (tess :pointer))
(defcfun ("gluTessNormal" tess-normal) :void (tess :pointer) (valueX double) (valueY double) (valueZ double))
(defcfun ("gluTessProperty" tess-property) :void (tess :pointer) (which enum) (data double))
(defcfun ("gluTessVertex" tess-vertex) :void (tess :pointer) (location :pointer) (data :pointer))

(defcfun ("gluGetTessProperty" get-tess-property) :void (tess :pointer) (which enum) (data :pointer))
(defcfun ("gluBeginPolygon" begin-polygon) :void (tess :pointer))

