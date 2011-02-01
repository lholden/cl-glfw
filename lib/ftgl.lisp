(in-package :cl-glfw-ftgl)

(define-foreign-library ftgl
  (:unix (:or "libftgl" "libftgl.so.2"))
  (t (:default "libftgl")))
(use-foreign-library ftgl)

(defctype font :pointer)
(defctype glyph :pointer)
(defctype layout :pointer)
(defcenum encoding
  (:none 0)
  (:unicode #x756e6963)                 ; unic
  (:adobe-latin-1 #x6c617431))          ; lat1
(defcenum render-mode
  (:front 1)
  (:back 2)
  (:side 4)
  (:all #xffff))
(defcenum text-alignment
  (:left 0)
  (:center 1)
  (:right 2)
  (:justify 3))

(defcfun ("ftglCreateCustomFont" create-custom-font) font "Create a custom FTGL font object."
              (font-file-path :string) (data :pointer) (make-glyph-callback :pointer))
(defcfun ("ftglDestroyFont" destroy-font) :void "Destroy an FTGL font object." (font font))
(defcfun ("ftglAttachFile" attach-file) :int "Attach auxilliary file to font e.g." (font font) (path :string))
;; XXX size is actually size_t
(defcfun ("ftglAttachData" attach-data) :int "Attach auxilliary data to font, e.g." (font font) (data (:pointer :uint8)) (size :int))
(defcfun ("ftglSetFontCharMap" set-font-char-map) :int "Set the character map for the face." (font font) (encoding encoding))
(defcfun ("ftglGetFontCharMapCount" get-font-char-map-count) :unsigned-int "Get the number of character maps in this face." (font font))
(defcfun ("ftglGetFontCharMapList" get-font-char-map-list) encoding "Get a list of character maps in this face." (font font))
(defcfun ("ftglSetFontFaceSize" set-font-face-size) :int "Set the char size for the current face." (font font) (size :unsigned-int) (res :unsigned-int))
(defcfun ("ftglGetFontFaceSize" get-font-face-size) :unsigned-int "Get the current face size in points (1/72 inch)." (font font))
(defcfun ("ftglSetFontDepth" set-font-depth) :void "Set the extrusion distance for the font." (font font) (depth :float))
(defcfun ("ftglSetFontOutset" set-font-outset) :void "Set the outset distance for the font." (font font) (front :float) (back :float))
(defcfun ("ftglSetFontDisplayList" set-font-display-list) :void "Enable or disable the use of Display Lists inside FTGL." (font font) (use-list :boolean))
(defcfun ("ftglGetFontAscender" get-font-ascender) :float "Get the global ascender height for the face." (font font))
(defcfun ("ftglGetFontDescender" get-font-descender) :float "Gets the global descender height for the face." (font font))
(defcfun ("ftglGetFontLineHeight" get-font-line-height) :float "Gets the line spacing for the font." (font font))
(defcfun ("ftglGetFontBBox" %get-font-bbox) :void "Get the bounding box for a string." (font font) (string :string) (len :int) (bounds (:pointer :float)))
(defcfun ("ftglGetFontAdvance" get-font-advance) :float "Get the advance width for a string." (font font) (string :string))
(defcfun ("ftglRenderFont" render-font) :void "Render a string of characters." (font font) (string :string) (mode render-mode))
(defcfun ("ftglGetFontError" get-font-error) :int "Query a font for errors." (font font))

(defcfun ("ftglCreatePixmapFont" create-pixmap-font) font "Create a specialised FTGLfont object for handling pixmap (grey scale) fonts." (file :string))
(defcfun ("ftglCreatePolygonFont" create-polygon-font) font "Create a specialised FTGLfont object for handling tesselated polygon mesh fonts." (file :string))
(defcfun ("ftglCreateOutlineFont" create-outline-font) font "Create a specialised FTGLfont object for handling vector outline fonts." (file :string))
(defcfun ("ftglCreateExtrudeFont" create-extrude-font) font "Create a specialised FTGLfont object for handling extruded poygon fonts." (file :string))
(defcfun ("ftglCreateTextureFont" create-texture-font) font "Create a specialised FTGLfont object for handling texture-mapped fonts." (file :string))
(defcfun ("ftglCreateBufferFont" create-buffer-font) font "Create a specialised FTGLfont object for handling buffered fonts." (file :string))

(defcfun ("ftglCreateCustomGlyph" create-custom-glyph) glyph "Create a custom FTGL glyph object." (base glyph) (data :pointer) (render-callback :pointer) (destroy-callback :pointer))
(defcfun ("ftglDestroyGlyph" destroy-glyph) :void "Destroy an FTGL glyph object." (glyph glyph))
(defcfun ("ftglRenderGlyph" render-glyph) :void "Render a glyph at the current pen position and compute the corresponding advance." (glyph glyph) (penx :double) (peny :double) (render-mode render-mode) (advance-x (:pointer :double)) (advance-y (:pointer :double)))
(defcfun ("ftglGetGlyphAdvance" get-glyph-advance) :float "Return the advance for a glyph." (glyph glyph))
(defcfun ("ftglGetGlyphBBox" get-glyph-bbox) :void "Return the bounding box for a glyph." (glyph glyph) (bounds (:pointer :float)))
(defcfun ("ftglGetGlyphError" get-glyph-error) :int "Query a glyph for errors." (glyph glyph))

(defcfun ("ftglDestroyLayout" destroy-layout) :void "Destroy an FTGL layout object." (layout layout))
;;(defcfun ("ftglGetLayoutBBox" get-layout-bbox) :void "Get the bounding box for a string." (layout layout) (string :string) (bounds (:pointer :float)))
(defcfun ("ftglRenderLayout" render-layout) :void "Render a string of characters." (layout layout) (string :string) (mode render-mode))
(defcfun ("ftglGetLayoutError" get-layout-error) :int "Query a layout for errors." (layout layout))
