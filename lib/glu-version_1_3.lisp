(in-package #:cl-glfw-glu)

(defcfun ("gluScaleImage" scale-image) int (format enum) (wIn sizei) (hIn sizei) (typeIn enum) (dataIn :pointer) (wOut sizei) (hOut sizei) (typeOut enum) (dataOut :pointer))
(defcfun ("gluCheckExtension" check-extension) boolean (extName :pointer) (extString :pointer))
(defcfun ("gluBuild1DMipmapLevels" build-1d-mipmap-levels) int (target enum) (internalFormat int) (width sizei) (format enum) (type enum) (level int) (base int) (max int) (data :pointer))
(defcfun ("gluBuild2DMipmapLevels" build-2d-mipmap-levels) int (target enum) (internalFormat int) (width sizei) (height sizei) (format enum) (type enum) (level int) (base int) (max int) (data :pointer))
(defcfun ("gluBuild3DMipmapLevels" build-3d-mipmap-levels) int (target enum) (internalFormat int) (width sizei) (height sizei) (depth sizei) (format enum) (type enum) (level int) (base int) (max int) (data :pointer))
(defcfun ("gluBuild3DMipmaps" build-3d-mipmaps) int (target enum) (internalFormat int) (width sizei) (height sizei) (depth sizei) (format enum) (type enum) (data :pointer))

(defcfun ("gluNurbsCallback" nurbs-callback) :void (nurb :pointer) (which enum) (CallBackFunc :pointer))
(defcfun ("gluNurbsCallbackData" nurbs-callback-data) :void (nurb :pointer) (userData :pointer))
(defcfun ("gluNurbsCallbackDataEXT" nurbs-callback-dataext) :void (nurb :pointer) (userData :pointer))
(defcfun ("gluUnProject4" un-project-4) int (winX double) (winY double) (winZ double) (clipW double) (model :pointer) (proj :pointer) (view :pointer) (nearVal double) (farVal double) (objX :pointer) (objY :pointer) (objZ :pointer) (objW :pointer))
