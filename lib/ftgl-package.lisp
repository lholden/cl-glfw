
(defpackage #:cl-glfw-ftgl
  (:nicknames #:ftgl)
  (:use #:cl #:cffi)
  (:export
   ;; our own stuff
   #:with-font
   ;; bindings
   #:create-custom-font
   #:destroy-font
   #:attach-file
   #:attach-data
   #:set-font-char-map
   #:get-font-char-map-count
   #:get-font-char-map-list
   #:set-font-face-size
   #:get-font-face-size
   #:set-font-depth
   #:set-font-outset
   #:set-font-display-list
   #:get-font-ascender
   #:get-font-descender
   #:get-font-line-height
   #:get-font-bbox
   #:get-font-advance
   #:render-font
   #:get-font-error
   #:create-pixmap-font
   #:create-polygon-font
   #:create-outline-font
   #:create-extrude-font
   #:create-buffer-font
   #:create-texture-font
   #:create-custom-glyph
   #:destroy-glyph
   #:render-glyph
   #:get-glyph-advance
   #:get-glyph-bbox
   #:get-glyph-error
   #:destroy-layout
   #:get-layout-bbox
   #:render-layout
   #:get-layout-error))