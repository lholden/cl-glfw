(in-package #:glu)

(defcfun ("gluScaleImage" scale-image) gl:int (format gl:enum) (wIn gl:sizei) (hIn gl:sizei) (typeIn gl:enum) (dataIn :pointer) (wOut gl:sizei) (hOut gl:sizei) (typeOut gl:enum) (dataOut :pointer))
(defcfun ("gluCheckExtension" check-extension) gl:boolean (extName :pointer) (extString :pointer))
(defcfun ("gluBuild1DMipmapLevels" build-1d-mipmap-levels) gl:int (target gl:enum) (internalFormat gl:int) (width gl:sizei) (format gl:enum) (type gl:enum) (level gl:int) (base gl:int) (max gl:int) (data :pointer))
(defcfun ("gluBuild2DMipmapLevels" build-2d-mipmap-levels) gl:int (target gl:enum) (internalFormat gl:int) (width gl:sizei) (height gl:sizei) (format gl:enum) (type gl:enum) (level gl:int) (base gl:int) (max gl:int) (data :pointer))
(defcfun ("gluBuild3DMipmapLevels" build-3d-mipmap-levels) gl:int (target gl:enum) (internalFormat gl:int) (width gl:sizei) (height gl:sizei) (depth gl:sizei) (format gl:enum) (type gl:enum) (level gl:int) (base gl:int) (max gl:int) (data :pointer))
(defcfun ("gluBuild3DMipmaps" build-3d-mipmaps) gl:int (target gl:enum) (internalFormat gl:int) (width gl:sizei) (height gl:sizei) (depth gl:sizei) (format gl:enum) (type gl:enum) (data :pointer))

(defcfun ("gluNurbsCallback" nurbs-callback) :void (nurb :pointer) (which gl:enum) (CallBackFunc :pointer))
(defcfun ("gluNurbsCallbackData" nurbs-callback-data) :void (nurb :pointer) (userData :pointer))
(defcfun ("gluNurbsCallbackDataEXT" nurbs-callback-dataext) :void (nurb :pointer) (userData :pointer))
(defcfun ("gluUnProject4" un-project-4) gl:int (winX gl:double) (winY gl:double) (winZ gl:double) (clipW gl:double) (model :pointer) (proj :pointer) (view :pointer) (nearVal gl:double) (farVal gl:double) (objX :pointer) (objY :pointer) (objZ :pointer) (objW :pointer))
