(defpackage #:cl-glfw-ftgl
  (:nicknames #:ftgl)
  (:use #:cl #:cffi)
  (:export #:*default-font-search-path*
	   #:attach-data
	   #:attach-file
	   #:create-bitmap-font
	   #:create-buffer-font
	   #:create-custom-font
	   #:create-custom-glyph
	   #:create-extrude-font
	   #:create-extrude-font
	   #:create-outline-font
	   #:create-pixmap-font
	   #:create-polygon-font
	   #:create-texture-font
	   #:destroy-font
	   #:destroy-glyph
	   #:destroy-layout
	   #:encoding
	   #:find-default-font
	   #:font
	   #:font-check-error
	   #:ft-error
	   #:get-font-advance
	   #:get-font-ascender
	   #:get-font-bbox
	   #:get-font-char-map-count
	   #:get-font-char-map-list
	   #:get-font-descender
	   #:get-font-error
	   #:get-font-face-size
	   #:get-font-line-height
	   #:get-glyph-advance
	   #:get-glyph-bbox
	   #:get-glyph-error
	   #:get-layout-bbox
	   #:get-layout-error
	   #:glyph
	   #:layout
	   #:mode
	   #:render-font
	   #:render-glyph
	   #:render-layout
	   #:render-mode
	   #:set-font-char-map
	   #:set-font-depth
	   #:set-font-display-list
	   #:set-font-face-size
	   #:set-font-outset
	   #:text-alignment))

(in-package #:cl-glfw-ftgl)

(define-foreign-library ftgl
  (:unix (:or "libftgl" "libftgl.so.2"))
  (:windows "ftgl.dll")
  (t (:default "libftgl")))


(use-foreign-library ftgl)

(defctype font :pointer)
(defctype glyph :pointer)
(defctype layout :pointer)

#.(progn
    (defun ft-enc-tag (str)
      (loop
	 for ch across (reverse str)
	 for i from 0 by 8
	 summing (ash (char-code ch) i)))
    nil)

(defcenum encoding
    (:none 0)
  (:ms-symbol #.(ft-enc-tag "symb"))
  (:unicode #.(ft-enc-tag "unic"))
  (:sjis #.(ft-enc-tag "sjis"))
  (:gb2312 #.(ft-enc-tag "gb  "))
  (:big5 #.(ft-enc-tag "big5"))
  (:wansung #.(ft-enc-tag "wans"))
  (:johab #.(ft-enc-tag "joha"))
  (:adobe-standard #.(ft-enc-tag "ADOB"))
  (:adobe-expert #.(ft-enc-tag "ADBE"))
  (:adobe-custom #.(ft-enc-tag "ADBC"))
  (:adobe-latin-1 #.(ft-enc-tag "lat1"))
  (:old-latin-2 #.(ft-enc-tag "lat2"))
  (:apple-roman #.(ft-enc-tag "armn")))

(defcenum ft-error
  (:no-error                          0)
  (:cannot-open-resource           #x01)
  (:unknown-file-format            #x02)
  (:invalid-file-format            #x03)
  (:invalid-version                #x04)
  (:lower-module-version           #x05)
  (:invalid-argument               #x06)
  (:unimplemented-feature          #x07)
  (:invalid-table                  #x08)
  (:invalid-offset                 #x09)
  (:array-too-large                #x0A)
  (:invalid-glyph-index            #x10)
  (:invalid-character-code         #x11)
  (:invalid-glyph-format           #x12)
  (:cannot-render-glyph            #x13)
  (:invalid-outline                #x14)
  (:invalid-composite              #x15)
  (:too-many-hints                 #x16)
  (:invalid-pixel-size             #x17)
  (:invalid-handle                 #x20)
  (:invalid-library-handle         #x21)
  (:invalid-driver-handle          #x22)
  (:invalid-face-handle            #x23)
  (:invalid-size-handle            #x24)
  (:invalid-slot-handle            #x25)
  (:invalid-charmap-handle         #x26)
  (:invalid-cache-handle           #x27)
  (:invalid-stream-handle          #x28)
  (:too-many-drivers               #x30)
  (:too-many-extensions            #x31)
  (:out-of-memory                  #x40)
  (:unlisted-object                #x41)
  (:cannot-open-stream             #x51)
  (:invalid-stream-seek            #x52)
  (:invalid-stream-skip            #x53)
  (:invalid-stream-read            #x54)
  (:invalid-stream-operation       #x55)
  (:invalid-frame-operation        #x56)
  (:nested-frame-access            #x57)
  (:invalid-frame-read             #x58)
  (:raster-uninitialized           #x60)
  (:raster-corrupted               #x61)
  (:raster-overflow                #x62)
  (:raster-negative-height         #x63)
  (:too-many-caches                #x70)
  (:invalid-opcode                 #x80)
  (:too-few-arguments              #x81)
  (:stack-overflow                 #x82)
  (:code-overflow                  #x83)
  (:bad-argument                   #x84)
  (:divide-by-zero                 #x85)
  (:invalid-reference              #x86)
  (:debug-opcode                   #x87)
  (:endf-in-exec-stream            #x88)
  (:nested-defs                    #x89)
  (:invalid-coderange              #x8A)
  (:execution-too-long             #x8B)
  (:too-many-function-defs         #x8C)
  (:too-many-instruction-defs      #x8D)
  (:table-missing                  #x8E)
  (:horiz-header-missing           #x8F)
  (:locations-missing              #x90)
  (:name-table-missing             #x91)
  (:cmap-table-missing             #x92)
  (:hmtx-table-missing             #x93)
  (:post-table-missing             #x94)
  (:invalid-horiz-metrics          #x95)
  (:invalid-charmap-format         #x96)
  (:invalid-ppem                   #x97)
  (:invalid-vert-metrics           #x98)
  (:could-not-find-context         #x99)
  (:invalid-post-table-format      #x9A)
  (:invalid-post-table             #x9B)
  (:syntax-error                   #xA0)
  (:stack-underflow                #xA1)
  (:ignore                         #xA2)
  (:no-unicode-glyph-name          #xA3)
  (:missing-startfont-field        #xB0)
  (:missing-font-field             #xB1)
  (:missing-size-field             #xB2)
  (:missing-fontboundingbox-field  #xB3)
  (:missing-chars-field            #xB4)
  (:missing-startchar-field        #xB5)
  (:missing-encoding-field         #xB6)
  (:missing-bbx-field              #xB7)
  (:bbx-too-big                    #xB8)
  (:corrupted-font-header          #xB9)
  (:corrupted-font-glyphs          #xBA))

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


(defparameter *default-font-search-path*
  (list #+unix #P"/usr/share/fonts/**/FreeSans.ttf"
        #+unix #P"/usr/share/fonts/**/*.ttf"
        #+unix #P"/usr/X11/share/fonts/**/FreeSans.ttf"
        #+unix #P"/usr/X11/share/fonts/**/*.ttf"
        #+win32 #P"/Win*/Fonts/verdana.ttf"
        #+win32 #P"/Win*/Fonts/*.ttf"
        #+win32 #P"/WIN*/Fonts/*.ttf"
        #+darwin #P"/Library/Fonts/Arial.ttf"
        #+darwin #P"/Library/Fonts/*.ttf"
	#P"*.ttf")
  "A list of pathnames that should match to at least one TTF font. Patches Welcome.")


(defun find-default-font ()
  (first (or (mapcan #'directory *default-font-search-path*)
             (error "Couldn't find any default TTF font!"))))




(defun font-check-error (font)
  "Signals an error condition if font is flagged as having an error."
  (let ((ft-error (get-font-error font)))
    (unless (eql ft-error :no-error)
      (error "FreeType error: ~a." ft-error))))


(defcfun ("ftglCreateCustomFont" %create-custom-font) font
  "Create a custom FTGL font object."
  (font-file-path :string)
  (data :pointer)
  (make-glyph-callback :pointer))

(defcfun ("ftglCreatePixmapFont" %create-pixmap-font) font
  "Create a specialised FTGLfont object for handling pixmap (grey scale) fonts."
  (file :string))

(defcfun ("ftglCreatePolygonFont" %create-polygon-font) font
  "Create a specialised FTGLfont object for handling tesselated polygon mesh fonts."
  (file :string))

(defcfun ("ftglCreateOutlineFont" %create-outline-font) font
  "Create a specialised FTGLfont object for handling vector outline fonts."
  (file :string))

(defcfun ("ftglCreateExtrudeFont" %create-extrude-font) font
  "Create a specialised FTGLfont object for handling extruded poygon fonts."
  (file :string))

(defcfun ("ftglCreateTextureFont" %create-texture-font) font
  "Create a specialised FTGLfont object for handling texture-mapped fonts."
  (file :string))

(defcfun ("ftglCreateBufferFont" %create-buffer-font) font
  "Create a specialised FTGLfont object for handling buffered fonts."
  (file :string))


(defun create-buffer-font (&optional (filename (find-default-font)) (encoding :unicode))
  (let ((font (%create-buffer-font (namestring filename))))
    (if (cffi:null-pointer-p font)
        nil
        (prog1 font
          (font-check-error font)
          (set-font-char-map font encoding)
          (font-check-error font)))))

(defun create-extrude-font (&optional (filename (find-default-font)) (encoding :unicode))
  (let ((font (%create-extrude-font (namestring filename))))
    (if (cffi:null-pointer-p font)
        nil
        (prog1 font
          (font-check-error font)
          (set-font-char-map font encoding)
          (font-check-error font)))))

(defun create-outline-font (&optional (filename (find-default-font)) (encoding :unicode)) 
  (let ((font (%create-outline-font (namestring filename))))
    (if (cffi:null-pointer-p font)
        nil
        (prog1 font
          (font-check-error font)
          (set-font-char-map font encoding)
          (font-check-error font)))))

(defun create-pixmap-font  (&optional (filename (find-default-font)) (encoding :unicode))
  (let ((font (%create-pixmap-font (namestring filename))))
        (if (cffi:null-pointer-p font)
        nil
        (prog1 font
          (font-check-error font)
          (set-font-char-map font encoding)
          (font-check-error font)))))

(defun create-polygon-font (&optional (filename (find-default-font)) (encoding :unicode))
  (let ((font (%create-polygon-font (namestring filename))))
        (if (cffi:null-pointer-p font)
        nil
        (prog1 font
          (font-check-error font)
          (set-font-char-map font encoding)
          (font-check-error font)))))

(defun create-texture-font (&optional (filename (find-default-font)) (encoding :unicode))
  (let ((font (%create-texture-font (namestring filename))))
    (if (cffi:null-pointer-p font)
        nil
        (prog1 font
          (font-check-error font)
          (set-font-char-map font encoding)
          (font-check-error font)))))





(defcfun ("ftglDestroyFont" destroy-font) :void
  "Destroy an FTGL font object." (font font))
(defcfun ("ftglAttachFile" attach-file) :int
  "Attach auxilliary file to font e.g."
  (font font)
  (path :string))

;; XXX size is actually size_t
(defcfun ("ftglAttachData" attach-data) :int
  "Attach auxilliary data to font, e.g."
  (font font)
  (data (:pointer :uint8))
  (size :int))

(defcfun ("ftglSetFontCharMap" set-font-char-map) :int 
  "Set the character map for the face."
  (font font)
  (encoding encoding))

(defcfun ("ftglGetFontCharMapCount" get-font-char-map-count) :unsigned-int
  "Get the number of character maps in this face."
  (font font))

(defcfun ("ftglGetFontCharMapList" get-font-char-map-list) encoding
  "Get a list of character maps in this face." 
  (font font))

(defcfun ("ftglSetFontFaceSize" set-font-face-size) :int
  "Set the char size for the current face."
  (font font)
  (size :unsigned-int)
  (res :unsigned-int))

(defcfun ("ftglGetFontFaceSize" get-font-face-size) :unsigned-int
  "Get the current face size in points (1/72 inch)."
  (font font))

(defcfun ("ftglSetFontDepth" set-font-depth) :void
  "Set the extrusion distance for the font."
  (font font)
  (depth :float))

(defcfun ("ftglSetFontOutset" set-font-outset) :void
  "Set the outset distance for the font."
  (font font)
  (front :float)
  (back :float))

(defcfun ("ftglSetFontDisplayList" set-font-display-list) :void
  "Enable or disable the use of Display Lists inside FTGL."
  (font font)
  (use-list :boolean))

(defcfun ("ftglGetFontAscender" get-font-ascender) :float
 "Get the global ascender height for the face."
 (font font))

(defcfun ("ftglGetFontDescender" get-font-descender) :float
  "Gets the global descender height for the face."
  (font font))

(defcfun ("ftglGetFontLineHeight" get-font-line-height) :float
  "Gets the line spacing for the font."
  (font font))

(defcfun ("ftglGetFontBBox" %get-font-bbox) :void
  "Get the bounding box for a string."
  (font font)
  (string :string)
  (len :int)
  (bounds (:pointer :float)))


(defun get-font-bbox (font text length)
  "Returns the BBox of the text using font as 6 values."
  (cffi:with-foreign-object (bbox :float 6)
    (%get-font-bbox font text length bbox)
    (values (cffi:mem-aref bbox :float 0)
            (cffi:mem-aref bbox :float 1)
            (cffi:mem-aref bbox :float 2)
            (cffi:mem-aref bbox :float 3)
            (cffi:mem-aref bbox :float 4)
            (cffi:mem-aref bbox :float 5))))


(defcfun ("ftglGetFontAdvance" get-font-advance) :float
  "Get the advance width for a string." 
  (font font)
  (string :string))

(defcfun ("ftglRenderFont" render-font) :void "Render a string of characters."
 (font font)
 (string :string)
 (mode render-mode))

(defcfun ("ftglGetFontError" get-font-error) ft-error
 "Query a font for errors."
 (font font))

(defcfun ("ftglCreateCustomGlyph" create-custom-glyph) glyph
  "Create a custom FTGL glyph object."
  (base glyph)
  (data :pointer)
  (render-callback :pointer)
  (destroy-callback :pointer))

(defcfun ("ftglDestroyGlyph" destroy-glyph) :void
 "Destroy an FTGL glyph object."
 (glyph glyph))

(defcfun ("ftglRenderGlyph" %render-glyph) :void
  "Render a glyph at the current pen position and compute the corresponding advance."
  (glyph glyph)
  (penx :double)
  (peny :double)
  (render-mode render-mode)
  (advance-x (:pointer :double))
  (advance-y (:pointer :double)))


(defun render-glyph (glyph penx peny render-mode)
  "Render a glyph at the current pen position and compute the corresponding advance."
  (cffi:with-foreign-objects ((advance-x :float 1)
			      (advance-y :float 1))
    (%render-glyph glyph penx peny render-mode advance-x advance-y)
    (values (cffi:mem-aref advance-x :float 0)
	    (cffi:mem-aref advance-y :float 0))))

(defcfun ("ftglGetGlyphAdvance" get-glyph-advance) :float
  "Return the advance for a glyph."
  (glyph glyph))

(defcfun ("ftglGetGlyphBBox" %get-glyph-bbox) :void
  "Return the bounding box for a glyph."
  (glyph glyph) 
  (bounds (:pointer :float)))

(defun get-glyph-bbox (glyph)
  "Returns the BBox of the glyph using 6 values."
  (cffi:with-foreign-object (bbox :float 6)
    (%get-glyph-bbox glyph bbox)
    (values (cffi:mem-aref bbox :float 0)
            (cffi:mem-aref bbox :float 1)
            (cffi:mem-aref bbox :float 2)
            (cffi:mem-aref bbox :float 3)
            (cffi:mem-aref bbox :float 4)
            (cffi:mem-aref bbox :float 5))))


(defcfun ("ftglGetGlyphError" get-glyph-error) ft-error
  "Query a glyph for errors."
  (glyph glyph))

(defcfun ("ftglDestroyLayout" destroy-layout) :void
  "Destroy an FTGL layout object."
  (layout layout))

;;(defcfun ("ftglGetLayoutBBox" get-layout-bbox) :void "Get the bounding box for a string." (layout layout) (string :string) (bounds (:pointer :float)))

(defcfun ("ftglRenderLayout" render-layout) :void
  "Render a string of characters."
  (layout layout)
  (string :string)
  (mode render-mode))

(defcfun ("ftglGetLayoutError" get-layout-error) ft-error
  "Query a layout for errors."
  (layout layout))
