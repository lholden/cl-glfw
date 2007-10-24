(defpackage #:opengl
 (:use #:cffi #:cl)
 (:nicknames #:gl)
 (:shadow #:boolean #:byte #:float #:char #:string)
 (:export
  #:enum #:boolean #:bitfield #:byte #:short #:int #:sizei #:ubyte #:ushort #:uint 
  #:float #:clampf #:double #:clampd #:void #:uint64 #:int64 
  #:intptr #:sizeiptr 
  #:handle
  #:char #:string
  #:half
  
+current-bit+ 
+point-bit+ 
+line-bit+ 
+polygon-bit+ 
+polygon-stipple-bit+ 
+pixel-mode-bit+ 
+lighting-bit+ 
+fog-bit+ 
+depth-buffer-bit+ 
+accum-buffer-bit+ 
+stencil-buffer-bit+ 
+viewport-bit+ 
+transform-bit+ 
+enable-bit+ 
+color-buffer-bit+ 
+hint-bit+ 
+eval-bit+ 
+list-bit+ 
+texture-bit+ 
+scissor-bit+ 
+all-attrib-bits+ 
+client-pixel-store-bit+ 
+client-vertex-array-bit+ 
+client-all-attrib-bits+ 
+false+ 
+true+ 
+points+ 
+lines+ 
+line-loop+ 
+line-strip+ 
+triangles+ 
+triangle-strip+ 
+triangle-fan+ 
+quads+ 
+quad-strip+ 
+polygon+ 
+accum+ 
+load+ 
+return+ 
+mult+ 
+add+ 
+never+ 
+less+ 
+equal+ 
+lequal+ 
+greater+ 
+notequal+ 
+gequal+ 
+always+ 
+zero+ 
+one+ 
+src-color+ 
+one-minus-src-color+ 
+src-alpha+ 
+one-minus-src-alpha+ 
+dst-alpha+ 
+one-minus-dst-alpha+ 
+constant-color-ext+ 
+one-minus-constant-color-ext+ 
+constant-alpha-ext+ 
+one-minus-constant-alpha-ext+ 
+dst-color+ 
+one-minus-dst-color+ 
+src-alpha-saturate+ 
+logic-op+ 
+func-add-ext+ 
+min-ext+ 
+max-ext+ 
+func-subtract-ext+ 
+func-reverse-subtract-ext+ 
+alpha-min-sgix+ 
+alpha-max-sgix+ 
+front+ 
+back+ 
+front-and-back+ 
+ambient+ 
+diffuse+ 
+specular+ 
+emission+ 
+ambient-and-diffuse+ 
+byte+ 
+unsigned-byte+ 
+short+ 
+unsigned-short+ 
+int+ 
+unsigned-int+ 
+float+ 
+double+ 
+color-table-scale-sgi+ 
+color-table-bias-sgi+ 
+color-table-sgi+ 
+post-convolution-color-table-sgi+ 
+post-color-matrix-color-table-sgi+ 
+proxy-color-table-sgi+ 
+proxy-post-convolution-color-table-sgi+ 
+proxy-post-color-matrix-color-table-sgi+ 
+texture-color-table-sgi+ 
+proxy-texture-color-table-sgi+ 
+reduce-ext+ 
+convolution-border-mode-ext+ 
+convolution-filter-scale-ext+ 
+convolution-filter-bias-ext+ 
+convolution-1d-ext+ 
+convolution-2d-ext+ 
+none+ 
+front-left+ 
+front-right+ 
+back-left+ 
+back-right+ 
+left+ 
+right+ 
+aux0+ 
+aux1+ 
+aux2+ 
+aux3+ 
+fog+ 
+lighting+ 
+texture-1d+ 
+texture-2d+ 
+line-stipple+ 
+polygon-stipple+ 
+cull-face+ 
+alpha-test+ 
+blend+ 
+index-logic-op+ 
+color-logic-op+ 
+dither+ 
+stencil-test+ 
+depth-test+ 
+clip-plane0+ 
+clip-plane1+ 
+clip-plane2+ 
+clip-plane3+ 
+clip-plane4+ 
+clip-plane5+ 
+light0+ 
+light1+ 
+light2+ 
+light3+ 
+light4+ 
+light5+ 
+light6+ 
+light7+ 
+texture-gen-s+ 
+texture-gen-t+ 
+texture-gen-r+ 
+texture-gen-q+ 
+map1-vertex-3+ 
+map1-vertex-4+ 
+map1-color-4+ 
+map1-index+ 
+map1-normal+ 
+map1-texture-coord-1+ 
+map1-texture-coord-2+ 
+map1-texture-coord-3+ 
+map1-texture-coord-4+ 
+map2-vertex-3+ 
+map2-vertex-4+ 
+map2-color-4+ 
+map2-index+ 
+map2-normal+ 
+map2-texture-coord-1+ 
+map2-texture-coord-2+ 
+map2-texture-coord-3+ 
+map2-texture-coord-4+ 
+point-smooth+ 
+line-smooth+ 
+polygon-smooth+ 
+scissor-test+ 
+color-material+ 
+normalize+ 
+auto-normal+ 
+polygon-offset-point+ 
+polygon-offset-line+ 
+polygon-offset-fill+ 
+vertex-array+ 
+normal-array+ 
+color-array+ 
+index-array+ 
+texture-coord-array+ 
+edge-flag-array+ 
+separable-2d-ext+ 
+histogram-ext+ 
+minmax-ext+ 
+rescale-normal-ext+ 
+shared-texture-palette-ext+ 
+texture-3d-ext+ 
+multisample-sgis+ 
+sample-alpha-to-mask-sgis+ 
+sample-alpha-to-one-sgis+ 
+sample-mask-sgis+ 
+texture-4d-sgis+ 
+async-histogram-sgix+ 
+async-tex-image-sgix+ 
+async-draw-pixels-sgix+ 
+async-read-pixels-sgix+ 
+calligraphic-fragment-sgix+ 
+fog-offset-sgix+ 
+fragment-lighting-sgix+ 
+fragment-color-material-sgix+ 
+fragment-light0-sgix+ 
+fragment-light1-sgix+ 
+fragment-light2-sgix+ 
+fragment-light3-sgix+ 
+fragment-light4-sgix+ 
+fragment-light5-sgix+ 
+fragment-light6-sgix+ 
+fragment-light7-sgix+ 
+framezoom-sgix+ 
+interlace-sgix+ 
+ir-instrument1-sgix+ 
+pixel-tex-gen-sgix+ 
+pixel-texture-sgis+ 
+reference-plane-sgix+ 
+sprite-sgix+ 
+no-error+ 
+invalid-enum+ 
+invalid-value+ 
+invalid-operation+ 
+stack-overflow+ 
+stack-underflow+ 
+out-of-memory+ 
+table-too-large-ext+ 
+texture-too-large-ext+ 
+2d+ 
+3d+ 
+3d-color+ 
+3d-color-texture+ 
+4d-color-texture+ 
+pass-through-token+ 
+point-token+ 
+line-token+ 
+polygon-token+ 
+bitmap-token+ 
+draw-pixel-token+ 
+copy-pixel-token+ 
+line-reset-token+ 
+texture-deformation-bit-sgix+ 
+geometry-deformation-bit-sgix+ 
+geometry-deformation-sgix+ 
+texture-deformation-sgix+ 
+linear+ 
+exp+ 
+exp2+ 
+fog-func-sgis+ 
+fog-color+ 
+fog-density+ 
+fog-end+ 
+fog-index+ 
+fog-mode+ 
+fog-start+ 
+fog-offset-value-sgix+ 
+fragment-light-model-local-viewer-sgix+ 
+fragment-light-model-two-side-sgix+ 
+fragment-light-model-ambient-sgix+ 
+fragment-light-model-normal-interpolation-sgix+ 
+cw+ 
+ccw+ 
+color-table-format-sgi+ 
+color-table-width-sgi+ 
+color-table-red-size-sgi+ 
+color-table-green-size-sgi+ 
+color-table-blue-size-sgi+ 
+color-table-alpha-size-sgi+ 
+color-table-luminance-size-sgi+ 
+color-table-intensity-size-sgi+ 
+convolution-format-ext+ 
+convolution-width-ext+ 
+convolution-height-ext+ 
+max-convolution-width-ext+ 
+max-convolution-height-ext+ 
+histogram-width-ext+ 
+histogram-format-ext+ 
+histogram-red-size-ext+ 
+histogram-green-size-ext+ 
+histogram-blue-size-ext+ 
+histogram-alpha-size-ext+ 
+histogram-luminance-size-ext+ 
+histogram-sink-ext+ 
+coeff+ 
+order+ 
+domain+ 
+minmax-format-ext+ 
+minmax-sink-ext+ 
+pixel-map-i-to-i+ 
+pixel-map-s-to-s+ 
+pixel-map-i-to-r+ 
+pixel-map-i-to-g+ 
+pixel-map-i-to-b+ 
+pixel-map-i-to-a+ 
+pixel-map-r-to-r+ 
+pixel-map-g-to-g+ 
+pixel-map-b-to-b+ 
+pixel-map-a-to-a+ 
+vertex-array-pointer+ 
+normal-array-pointer+ 
+color-array-pointer+ 
+index-array-pointer+ 
+texture-coord-array-pointer+ 
+edge-flag-array-pointer+ 
+feedback-buffer-pointer+ 
+selection-buffer-pointer+ 
+instrument-buffer-pointer-sgix+ 
+current-color+ 
+current-index+ 
+current-normal+ 
+current-texture-coords+ 
+current-raster-color+ 
+current-raster-index+ 
+current-raster-texture-coords+ 
+current-raster-position+ 
+current-raster-position-valid+ 
+current-raster-distance+ 
+point-size+ 
+point-size-range+ 
+point-size-granularity+ 
+line-width+ 
+line-width-range+ 
+line-width-granularity+ 
+line-stipple-pattern+ 
+line-stipple-repeat+ 
+smooth-point-size-range+ 
+smooth-point-size-granularity+ 
+smooth-line-width-range+ 
+smooth-line-width-granularity+ 
+aliased-point-size-range+ 
+aliased-line-width-range+ 
+list-mode+ 
+max-list-nesting+ 
+list-base+ 
+list-index+ 
+polygon-mode+ 
+edge-flag+ 
+cull-face-mode+ 
+front-face+ 
+light-model-local-viewer+ 
+light-model-two-side+ 
+light-model-ambient+ 
+shade-model+ 
+color-material-face+ 
+color-material-parameter+ 
+depth-range+ 
+depth-writemask+ 
+depth-clear-value+ 
+depth-func+ 
+accum-clear-value+ 
+stencil-clear-value+ 
+stencil-func+ 
+stencil-value-mask+ 
+stencil-fail+ 
+stencil-pass-depth-fail+ 
+stencil-pass-depth-pass+ 
+stencil-ref+ 
+stencil-writemask+ 
+matrix-mode+ 
+viewport+ 
+modelview-stack-depth+ 
+projection-stack-depth+ 
+texture-stack-depth+ 
+modelview-matrix+ 
+projection-matrix+ 
+texture-matrix+ 
+attrib-stack-depth+ 
+client-attrib-stack-depth+ 
+alpha-test-func+ 
+alpha-test-ref+ 
+blend-dst+ 
+blend-src+ 
+logic-op-mode+ 
+aux-buffers+ 
+draw-buffer+ 
+read-buffer+ 
+scissor-box+ 
+index-clear-value+ 
+index-writemask+ 
+color-clear-value+ 
+color-writemask+ 
+index-mode+ 
+rgba-mode+ 
+doublebuffer+ 
+stereo+ 
+render-mode+ 
+perspective-correction-hint+ 
+point-smooth-hint+ 
+line-smooth-hint+ 
+polygon-smooth-hint+ 
+fog-hint+ 
+pixel-map-i-to-i-size+ 
+pixel-map-s-to-s-size+ 
+pixel-map-i-to-r-size+ 
+pixel-map-i-to-g-size+ 
+pixel-map-i-to-b-size+ 
+pixel-map-i-to-a-size+ 
+pixel-map-r-to-r-size+ 
+pixel-map-g-to-g-size+ 
+pixel-map-b-to-b-size+ 
+pixel-map-a-to-a-size+ 
+unpack-swap-bytes+ 
+unpack-lsb-first+ 
+unpack-row-length+ 
+unpack-skip-rows+ 
+unpack-skip-pixels+ 
+unpack-alignment+ 
+pack-swap-bytes+ 
+pack-lsb-first+ 
+pack-row-length+ 
+pack-skip-rows+ 
+pack-skip-pixels+ 
+pack-alignment+ 
+map-color+ 
+map-stencil+ 
+index-shift+ 
+index-offset+ 
+red-scale+ 
+red-bias+ 
+zoom-x+ 
+zoom-y+ 
+green-scale+ 
+green-bias+ 
+blue-scale+ 
+blue-bias+ 
+alpha-scale+ 
+alpha-bias+ 
+depth-scale+ 
+depth-bias+ 
+max-eval-order+ 
+max-lights+ 
+max-clip-planes+ 
+max-texture-size+ 
+max-pixel-map-table+ 
+max-attrib-stack-depth+ 
+max-modelview-stack-depth+ 
+max-name-stack-depth+ 
+max-projection-stack-depth+ 
+max-texture-stack-depth+ 
+max-viewport-dims+ 
+max-client-attrib-stack-depth+ 
+subpixel-bits+ 
+index-bits+ 
+red-bits+ 
+green-bits+ 
+blue-bits+ 
+alpha-bits+ 
+depth-bits+ 
+stencil-bits+ 
+accum-red-bits+ 
+accum-green-bits+ 
+accum-blue-bits+ 
+accum-alpha-bits+ 
+name-stack-depth+ 
+map1-grid-domain+ 
+map1-grid-segments+ 
+map2-grid-domain+ 
+map2-grid-segments+ 
+feedback-buffer-size+ 
+feedback-buffer-type+ 
+selection-buffer-size+ 
+polygon-offset-units+ 
+polygon-offset-factor+ 
+texture-binding-1d+ 
+texture-binding-2d+ 
+texture-binding-3d+ 
+vertex-array-size+ 
+vertex-array-type+ 
+vertex-array-stride+ 
+normal-array-type+ 
+normal-array-stride+ 
+color-array-size+ 
+color-array-type+ 
+color-array-stride+ 
+index-array-type+ 
+index-array-stride+ 
+texture-coord-array-size+ 
+texture-coord-array-type+ 
+texture-coord-array-stride+ 
+edge-flag-array-stride+ 
+light-model-color-control+ 
+blend-color-ext+ 
+blend-equation-ext+ 
+pack-cmyk-hint-ext+ 
+unpack-cmyk-hint-ext+ 
+post-convolution-red-scale-ext+ 
+post-convolution-green-scale-ext+ 
+post-convolution-blue-scale-ext+ 
+post-convolution-alpha-scale-ext+ 
+post-convolution-red-bias-ext+ 
+post-convolution-green-bias-ext+ 
+post-convolution-blue-bias-ext+ 
+post-convolution-alpha-bias-ext+ 
+polygon-offset-bias-ext+ 
+texture-3d-binding-ext+ 
+pack-skip-images-ext+ 
+pack-image-height-ext+ 
+unpack-skip-images-ext+ 
+unpack-image-height-ext+ 
+max-3d-texture-size-ext+ 
+vertex-array-count-ext+ 
+normal-array-count-ext+ 
+color-array-count-ext+ 
+index-array-count-ext+ 
+texture-coord-array-count-ext+ 
+edge-flag-array-count-ext+ 
+detail-texture-2d-binding-sgis+ 
+fog-func-points-sgis+ 
+max-fog-func-points-sgis+ 
+generate-mipmap-hint-sgis+ 
+sample-buffers-sgis+ 
+samples-sgis+ 
+sample-mask-value-sgis+ 
+sample-mask-invert-sgis+ 
+sample-pattern-sgis+ 
+point-size-min-sgis+ 
+point-size-max-sgis+ 
+point-fade-threshold-size-sgis+ 
+distance-attenuation-sgis+ 
+pack-skip-volumes-sgis+ 
+pack-image-depth-sgis+ 
+unpack-skip-volumes-sgis+ 
+unpack-image-depth-sgis+ 
+max-4d-texture-size-sgis+ 
+texture-4d-binding-sgis+ 
+async-marker-sgix+ 
+max-async-histogram-sgix+ 
+max-async-tex-image-sgix+ 
+max-async-draw-pixels-sgix+ 
+max-async-read-pixels-sgix+ 
+max-clipmap-virtual-depth-sgix+ 
+max-clipmap-depth-sgix+ 
+convolution-hint-sgix+ 
+fragment-color-material-face-sgix+ 
+fragment-color-material-parameter-sgix+ 
+max-fragment-lights-sgix+ 
+max-active-lights-sgix+ 
+light-env-mode-sgix+ 
+framezoom-factor-sgix+ 
+max-framezoom-factor-sgix+ 
+instrument-measurements-sgix+ 
+pixel-tex-gen-mode-sgix+ 
+pixel-tile-best-alignment-sgix+ 
+pixel-tile-cache-increment-sgix+ 
+pixel-tile-width-sgix+ 
+pixel-tile-height-sgix+ 
+pixel-tile-grid-width-sgix+ 
+pixel-tile-grid-height-sgix+ 
+pixel-tile-grid-depth-sgix+ 
+pixel-tile-cache-size-sgix+ 
+deformations-mask-sgix+ 
+reference-plane-equation-sgix+ 
+sprite-mode-sgix+ 
+sprite-axis-sgix+ 
+sprite-translation-sgix+ 
+pack-subsample-rate-sgix+ 
+unpack-subsample-rate-sgix+ 
+pack-resample-sgix+ 
+unpack-resample-sgix+ 
+post-texture-filter-bias-range-sgix+ 
+post-texture-filter-scale-range-sgix+ 
+vertex-preclip-sgix+ 
+vertex-preclip-hint-sgix+ 
+color-matrix-sgi+ 
+color-matrix-stack-depth-sgi+ 
+max-color-matrix-stack-depth-sgi+ 
+post-color-matrix-red-scale-sgi+ 
+post-color-matrix-green-scale-sgi+ 
+post-color-matrix-blue-scale-sgi+ 
+post-color-matrix-alpha-scale-sgi+ 
+post-color-matrix-red-bias-sgi+ 
+post-color-matrix-green-bias-sgi+ 
+post-color-matrix-blue-bias-sgi+ 
+post-color-matrix-alpha-bias-sgi+ 
+texture-mag-filter+ 
+texture-min-filter+ 
+texture-wrap-s+ 
+texture-wrap-t+ 
+texture-width+ 
+texture-height+ 
+texture-internal-format+ 
+texture-components+ 
+texture-border-color+ 
+texture-border+ 
+texture-red-size+ 
+texture-green-size+ 
+texture-blue-size+ 
+texture-alpha-size+ 
+texture-luminance-size+ 
+texture-intensity-size+ 
+texture-priority+ 
+texture-resident+ 
+texture-depth-ext+ 
+texture-wrap-r-ext+ 
+detail-texture-level-sgis+ 
+detail-texture-mode-sgis+ 
+detail-texture-func-points-sgis+ 
+generate-mipmap-sgis+ 
+sharpen-texture-func-points-sgis+ 
+texture-filter4-size-sgis+ 
+texture-min-lod-sgis+ 
+texture-max-lod-sgis+ 
+texture-base-level-sgis+ 
+texture-max-level-sgis+ 
+dual-texture-select-sgis+ 
+quad-texture-select-sgis+ 
+texture-4dsize-sgis+ 
+texture-wrap-q-sgis+ 
+texture-clipmap-center-sgix+ 
+texture-clipmap-frame-sgix+ 
+texture-clipmap-offset-sgix+ 
+texture-clipmap-virtual-depth-sgix+ 
+texture-clipmap-lod-offset-sgix+ 
+texture-clipmap-depth-sgix+ 
+texture-compare-sgix+ 
+texture-compare-operator-sgix+ 
+texture-lequal-r-sgix+ 
+texture-gequal-r-sgix+ 
+shadow-ambient-sgix+ 
+texture-max-clamp-s-sgix+ 
+texture-max-clamp-t-sgix+ 
+texture-max-clamp-r-sgix+ 
+texture-lod-bias-s-sgix+ 
+texture-lod-bias-t-sgix+ 
+texture-lod-bias-r-sgix+ 
+post-texture-filter-bias-sgix+ 
+post-texture-filter-scale-sgix+ 
+dont-care+ 
+fastest+ 
+nicest+ 
+texture-multi-buffer-hint-sgix+ 
+proxy-histogram-ext+ 
+replace+ 
+modulate+ 
+single-color+ 
+separate-specular-color+ 
+position+ 
+spot-direction+ 
+spot-exponent+ 
+spot-cutoff+ 
+constant-attenuation+ 
+linear-attenuation+ 
+quadratic-attenuation+ 
+compile+ 
+compile-and-execute+ 
+2-bytes+ 
+3-bytes+ 
+4-bytes+ 
+double-ext+ 
+list-priority-sgix+ 
+clear+ 
+and+ 
+and-reverse+ 
+copy+ 
+and-inverted+ 
+noop+ 
+xor+ 
+or+ 
+nor+ 
+equiv+ 
+invert+ 
+or-reverse+ 
+copy-inverted+ 
+or-inverted+ 
+nand+ 
+set+ 
+shininess+ 
+color-indexes+ 
+modelview+ 
+projection+ 
+texture+ 
+point+ 
+line+ 
+fill+ 
+color+ 
+depth+ 
+stencil+ 
+color-index+ 
+stencil-index+ 
+depth-component+ 
+red+ 
+green+ 
+blue+ 
+alpha+ 
+rgb+ 
+rgba+ 
+luminance+ 
+luminance-alpha+ 
+abgr-ext+ 
+cmyk-ext+ 
+cmyka-ext+ 
+r5-g6-b5-icc-sgix+ 
+r5-g6-b5-a8-icc-sgix+ 
+alpha16-icc-sgix+ 
+luminance16-icc-sgix+ 
+luminance16-alpha8-icc-sgix+ 
+ycrcb-422-sgix+ 
+ycrcb-444-sgix+ 
+resample-replicate-sgix+ 
+resample-zero-fill-sgix+ 
+resample-decimate-sgix+ 
+pixel-subsample-4444-sgix+ 
+pixel-subsample-2424-sgix+ 
+pixel-subsample-4242-sgix+ 
+pixel-tex-gen-alpha-replace-sgix+ 
+pixel-tex-gen-alpha-no-replace-sgix+ 
+pixel-tex-gen-alpha-ms-sgix+ 
+pixel-tex-gen-alpha-ls-sgix+ 
+pixel-fragment-rgb-source-sgis+ 
+pixel-fragment-alpha-source-sgis+ 
+bitmap+ 
+unsigned-byte-3-3-2-ext+ 
+unsigned-short-4-4-4-4-ext+ 
+unsigned-short-5-5-5-1-ext+ 
+unsigned-int-8-8-8-8-ext+ 
+unsigned-int-10-10-10-2-ext+ 
+render+ 
+feedback+ 
+select+ 
+1pass-sgis+ 
+2pass-0-sgis+ 
+2pass-1-sgis+ 
+4pass-0-sgis+ 
+4pass-1-sgis+ 
+4pass-2-sgis+ 
+4pass-3-sgis+ 
+flat+ 
+smooth+ 
+keep+ 
+incr+ 
+decr+ 
+vendor+ 
+renderer+ 
+version+ 
+extensions+ 
+s+ 
+t+ 
+r+ 
+q+ 
+decal+ 
+replace-ext+ 
+texture-env-bias-sgix+ 
+texture-env-mode+ 
+texture-env-color+ 
+texture-env+ 
+filter4-sgis+ 
+eye-linear+ 
+object-linear+ 
+sphere-map+ 
+eye-distance-to-point-sgis+ 
+object-distance-to-point-sgis+ 
+eye-distance-to-line-sgis+ 
+object-distance-to-line-sgis+ 
+texture-gen-mode+ 
+object-plane+ 
+eye-plane+ 
+eye-point-sgis+ 
+object-point-sgis+ 
+eye-line-sgis+ 
+object-line-sgis+ 
+nearest+ 
+linear-detail-sgis+ 
+linear-detail-alpha-sgis+ 
+linear-detail-color-sgis+ 
+linear-sharpen-sgis+ 
+linear-sharpen-alpha-sgis+ 
+linear-sharpen-color-sgis+ 
+pixel-tex-gen-q-ceiling-sgix+ 
+pixel-tex-gen-q-round-sgix+ 
+pixel-tex-gen-q-floor-sgix+ 
+nearest-mipmap-nearest+ 
+linear-mipmap-nearest+ 
+nearest-mipmap-linear+ 
+linear-mipmap-linear+ 
+linear-clipmap-linear-sgix+ 
+nearest-clipmap-nearest-sgix+ 
+nearest-clipmap-linear-sgix+ 
+linear-clipmap-nearest-sgix+ 
+proxy-texture-1d+ 
+proxy-texture-2d+ 
+proxy-texture-3d-ext+ 
+detail-texture-2d-sgis+ 
+proxy-texture-4d-sgis+ 
+clamp+ 
+repeat+ 
+clamp-to-border-sgis+ 
+clamp-to-edge-sgis+ 
+r3-g3-b2+ 
+alpha4+ 
+alpha8+ 
+alpha12+ 
+alpha16+ 
+luminance4+ 
+luminance8+ 
+luminance12+ 
+luminance16+ 
+luminance4-alpha4+ 
+luminance6-alpha2+ 
+luminance8-alpha8+ 
+luminance12-alpha4+ 
+luminance12-alpha12+ 
+luminance16-alpha16+ 
+intensity+ 
+intensity4+ 
+intensity8+ 
+intensity12+ 
+intensity16+ 
+rgb4+ 
+rgb5+ 
+rgb8+ 
+rgb10+ 
+rgb12+ 
+rgb16+ 
+rgba2+ 
+rgba4+ 
+rgb5-a1+ 
+rgba8+ 
+rgb10-a2+ 
+rgba12+ 
+rgba16+ 
+rgb2-ext+ 
+dual-alpha4-sgis+ 
+dual-alpha8-sgis+ 
+dual-alpha12-sgis+ 
+dual-alpha16-sgis+ 
+dual-luminance4-sgis+ 
+dual-luminance8-sgis+ 
+dual-luminance12-sgis+ 
+dual-luminance16-sgis+ 
+dual-intensity4-sgis+ 
+dual-intensity8-sgis+ 
+dual-intensity12-sgis+ 
+dual-intensity16-sgis+ 
+dual-luminance-alpha4-sgis+ 
+dual-luminance-alpha8-sgis+ 
+quad-alpha4-sgis+ 
+quad-alpha8-sgis+ 
+quad-luminance4-sgis+ 
+quad-luminance8-sgis+ 
+quad-intensity4-sgis+ 
+quad-intensity8-sgis+ 
+depth-component16-sgix+ 
+depth-component24-sgix+ 
+depth-component32-sgix+ 
+rgb-icc-sgix+ 
+rgba-icc-sgix+ 
+alpha-icc-sgix+ 
+luminance-icc-sgix+ 
+intensity-icc-sgix+ 
+luminance-alpha-icc-sgix+ 
+intensity16-icc-sgix+ 
+v2f+ 
+v3f+ 
+c4ub-v2f+ 
+c4ub-v3f+ 
+c3f-v3f+ 
+n3f-v3f+ 
+c4f-n3f-v3f+ 
+t2f-v3f+ 
+t4f-v4f+ 
+t2f-c4ub-v3f+ 
+t2f-c3f-v3f+ 
+t2f-n3f-v3f+ 
+t2f-c4f-n3f-v3f+ 
+t4f-c4f-n3f-v4f+ 
+func-subtract+ 
+func-reverse-subtract+ 
+unsigned-byte-3-3-2+ 
+unsigned-short-4-4-4-4+ 
+unsigned-short-5-5-5-1+ 
+unsigned-int-8-8-8-8+ 
+unsigned-int-10-10-10-2+ 
+unsigned-byte-2-3-3-rev+ 
+unsigned-byte-2-3-3-rev-ext+ 
+unsigned-short-5-6-5+ 
+unsigned-short-5-6-5-ext+ 
+unsigned-short-5-6-5-rev+ 
+unsigned-short-5-6-5-rev-ext+ 
+unsigned-short-4-4-4-4-rev+ 
+unsigned-short-4-4-4-4-rev-ext+ 
+unsigned-short-1-5-5-5-rev+ 
+unsigned-short-1-5-5-5-rev-ext+ 
+unsigned-int-8-8-8-8-rev+ 
+unsigned-int-8-8-8-8-rev-ext+ 
+unsigned-int-2-10-10-10-rev+ 
+unsigned-int-2-10-10-10-rev-ext+ 
+rescale-normal+ 
+alpha4-ext+ 
+alpha8-ext+ 
+alpha12-ext+ 
+alpha16-ext+ 
+luminance4-ext+ 
+luminance8-ext+ 
+luminance12-ext+ 
+luminance16-ext+ 
+luminance4-alpha4-ext+ 
+luminance6-alpha2-ext+ 
+luminance8-alpha8-ext+ 
+luminance12-alpha4-ext+ 
+luminance12-alpha12-ext+ 
+luminance16-alpha16-ext+ 
+intensity-ext+ 
+intensity4-ext+ 
+intensity8-ext+ 
+intensity12-ext+ 
+intensity16-ext+ 
+rgb4-ext+ 
+rgb5-ext+ 
+rgb8-ext+ 
+rgb10-ext+ 
+rgb12-ext+ 
+rgb16-ext+ 
+rgba2-ext+ 
+rgba4-ext+ 
+rgb5-a1-ext+ 
+rgba8-ext+ 
+rgb10-a2-ext+ 
+rgba12-ext+ 
+rgba16-ext+ 
+texture-red-size-ext+ 
+texture-green-size-ext+ 
+texture-blue-size-ext+ 
+texture-alpha-size-ext+ 
+texture-luminance-size-ext+ 
+texture-intensity-size-ext+ 
+proxy-texture-1d-ext+ 
+proxy-texture-2d-ext+ 
+color-matrix+ 
+color-matrix-stack-depth+ 
+max-color-matrix-stack-depth+ 
+post-color-matrix-red-scale+ 
+post-color-matrix-green-scale+ 
+post-color-matrix-blue-scale+ 
+post-color-matrix-alpha-scale+ 
+post-color-matrix-red-bias+ 
+post-color-matrix-green-bias+ 
+post-color-matrix-blue-bias+ 
+post-color-matrix-alpha-bias+ 
+bgr+ 
+bgr-ext+ 
+bgra+ 
+bgra-ext+ 
+clamp-to-border+ 
+clamp-to-border-arb+ 
+clamp-to-edge+ 
+texture-min-lod+ 
+texture-max-lod+ 
+texture-base-level+ 
+texture-max-level+ 
+ignore-border-hp+ 
+constant-border+ 
+constant-border-hp+ 
+replicate-border+ 
+replicate-border-hp+ 
+convolution-border-color+ 
+convolution-border-color-hp+ 
+generate-mipmap+ 
+generate-mipmap-hint+ 
+max-deformation-order-sgix+ 
+depth-component16+ 
+depth-component24+ 
+depth-component32+ 
+light-model-color-control-ext+ 
+single-color-ext+ 
+separate-specular-color-ext+ 
+fog-factor-to-alpha-sgix+ 
+compressed-rgb-s3tc-dxt1-ext+ 
+compressed-rgba-s3tc-dxt1-ext+ 
+compressed-rgba-s3tc-dxt3-ext+ 
+compressed-rgba-s3tc-dxt5-ext+ 
+constant-color+ 
+one-minus-constant-color+ 
+constant-alpha+ 
+one-minus-constant-alpha+ 
+blend-color+ 
+func-add+ 
+min+ 
+max+ 
+blend-equation+ 
+convolution-1d+ 
+convolution-2d+ 
+separable-2d+ 
+convolution-border-mode+ 
+convolution-filter-scale+ 
+convolution-filter-bias+ 
+reduce+ 
+convolution-format+ 
+convolution-width+ 
+convolution-height+ 
+max-convolution-width+ 
+max-convolution-height+ 
+post-convolution-red-scale+ 
+post-convolution-green-scale+ 
+post-convolution-blue-scale+ 
+post-convolution-alpha-scale+ 
+post-convolution-red-bias+ 
+post-convolution-green-bias+ 
+post-convolution-blue-bias+ 
+post-convolution-alpha-bias+ 
+histogram+ 
+proxy-histogram+ 
+histogram-width+ 
+histogram-format+ 
+histogram-red-size+ 
+histogram-green-size+ 
+histogram-blue-size+ 
+histogram-alpha-size+ 
+histogram-luminance-size+ 
+histogram-sink+ 
+minmax+ 
+minmax-format+ 
+minmax-sink+ 
+table-too-large+ 
+color-table+ 
+post-convolution-color-table+ 
+post-color-matrix-color-table+ 
+proxy-color-table+ 
+proxy-post-convolution-color-table+ 
+proxy-post-color-matrix-color-table+ 
+color-table-scale+ 
+color-table-bias+ 
+color-table-format+ 
+color-table-width+ 
+color-table-red-size+ 
+color-table-green-size+ 
+color-table-blue-size+ 
+color-table-alpha-size+ 
+color-table-luminance-size+ 
+color-table-intensity-size+ 
+normal-map-arb+ 
+reflection-map-arb+ 
+texture-cube-map-arb+ 
+texture-binding-cube-map-arb+ 
+texture-cube-map-positive-x-arb+ 
+texture-cube-map-negative-x-arb+ 
+texture-cube-map-positive-y-arb+ 
+texture-cube-map-negative-y-arb+ 
+texture-cube-map-positive-z-arb+ 
+texture-cube-map-negative-z-arb+ 
+proxy-texture-cube-map-arb+ 
+max-cube-map-texture-size-arb+ 
+combine-arb+ 
+combine-rgb-arb+ 
+combine-alpha-arb+ 
+source0-rgb-arb+ 
+source1-rgb-arb+ 
+source2-rgb-arb+ 
+source0-alpha-arb+ 
+source1-alpha-arb+ 
+source2-alpha-arb+ 
+operand0-rgb-arb+ 
+operand1-rgb-arb+ 
+operand2-rgb-arb+ 
+operand0-alpha-arb+ 
+operand1-alpha-arb+ 
+operand2-alpha-arb+ 
+rgb-scale-arb+ 
+add-signed-arb+ 
+interpolate-arb+ 
+subtract-arb+ 
+constant-arb+ 
+primary-color-arb+ 
+previous-arb+ 
+dot3-rgb-arb+ 
+dot3-rgba-arb+ 
+mirrored-repeat-arb+ 
+depth-component16-arb+ 
+depth-component24-arb+ 
+depth-component32-arb+ 
+texture-depth-size-arb+ 
+depth-texture-mode-arb+ 
+texture-compare-mode-arb+ 
+texture-compare-func-arb+ 
+compare-r-to-texture-arb+ 
+texture-compare-fail-value-arb+ 
+fragment-program-arb+ 
+program-alu-instructions-arb+ 
+program-tex-instructions-arb+ 
+program-tex-indirections-arb+ 
+program-native-alu-instructions-arb+ 
+program-native-tex-instructions-arb+ 
+program-native-tex-indirections-arb+ 
+max-program-alu-instructions-arb+ 
+max-program-tex-instructions-arb+ 
+max-program-tex-indirections-arb+ 
+max-program-native-alu-instructions-arb+ 
+max-program-native-tex-instructions-arb+ 
+max-program-native-tex-indirections-arb+ 
+max-texture-coords-arb+ 
+max-texture-image-units-arb+ 
+fragment-shader-arb+ 
+max-fragment-uniform-components-arb+ 
+fragment-shader-derivative-hint-arb+ 
+shading-language-version-arb+ 
+point-sprite-arb+ 
+coord-replace-arb+ 
+texture-rectangle-arb+ 
+texture-binding-rectangle-arb+ 
+proxy-texture-rectangle-arb+ 
+max-rectangle-texture-size-arb+ 
+half-float-arb+ 
+texture-red-type-arb+ 
+texture-green-type-arb+ 
+texture-blue-type-arb+ 
+texture-alpha-type-arb+ 
+texture-luminance-type-arb+ 
+texture-intensity-type-arb+ 
+texture-depth-type-arb+ 
+unsigned-normalized-arb+ 
+rgba32f-arb+ 
+rgb32f-arb+ 
+alpha32f-arb+ 
+intensity32f-arb+ 
+luminance32f-arb+ 
+luminance-alpha32f-arb+ 
+rgba16f-arb+ 
+rgb16f-arb+ 
+alpha16f-arb+ 
+intensity16f-arb+ 
+luminance16f-arb+ 
+luminance-alpha16f-arb+ 
+pixel-pack-buffer-arb+ 
+pixel-unpack-buffer-arb+ 
+pixel-pack-buffer-binding-arb+ 
+pixel-unpack-buffer-binding-arb+ 
+vertex-data-hint-pgi+ 
+vertex-consistent-hint-pgi+ 
+material-side-hint-pgi+ 
+max-vertex-hint-pgi+ 
+color3-bit-pgi+ 
+color4-bit-pgi+ 
+edgeflag-bit-pgi+ 
+index-bit-pgi+ 
+mat-ambient-bit-pgi+ 
+mat-ambient-and-diffuse-bit-pgi+ 
+mat-diffuse-bit-pgi+ 
+mat-emission-bit-pgi+ 
+mat-color-indexes-bit-pgi+ 
+mat-shininess-bit-pgi+ 
+mat-specular-bit-pgi+ 
+normal-bit-pgi+ 
+texcoord1-bit-pgi+ 
+texcoord2-bit-pgi+ 
+texcoord3-bit-pgi+ 
+texcoord4-bit-pgi+ 
+vertex23-bit-pgi+ 
+vertex4-bit-pgi+ 
+clip-volume-clipping-hint-ext+ 
+iui-v2f-ext+ 
+iui-v3f-ext+ 
+iui-n3f-v2f-ext+ 
+iui-n3f-v3f-ext+ 
+t2f-iui-v2f-ext+ 
+t2f-iui-v3f-ext+ 
+t2f-iui-n3f-v2f-ext+ 
+t2f-iui-n3f-v3f-ext+ 
+raster-position-unclipped-ibm+ 
+texture-lighting-mode-hp+ 
+texture-post-specular-hp+ 
+texture-pre-specular-hp+ 
+phong-win+ 
+phong-hint-win+ 
+fog-specular-texture-win+ 
+occlusion-test-hp+ 
+occlusion-test-result-hp+ 
+screen-coordinates-rend+ 
+inverted-screen-w-rend+ 
+combine-ext+ 
+combine-rgb-ext+ 
+combine-alpha-ext+ 
+rgb-scale-ext+ 
+add-signed-ext+ 
+interpolate-ext+ 
+constant-ext+ 
+primary-color-ext+ 
+previous-ext+ 
+source0-rgb-ext+ 
+source1-rgb-ext+ 
+source2-rgb-ext+ 
+source0-alpha-ext+ 
+source1-alpha-ext+ 
+source2-alpha-ext+ 
+operand0-rgb-ext+ 
+operand1-rgb-ext+ 
+operand2-rgb-ext+ 
+operand0-alpha-ext+ 
+operand1-alpha-ext+ 
+operand2-alpha-ext+ 
+light-model-specular-vector-apple+ 
+transform-hint-apple+ 
+fog-scale-sgix+ 
+fog-scale-value-sgix+ 
+red-min-clamp-ingr+ 
+green-min-clamp-ingr+ 
+blue-min-clamp-ingr+ 
+alpha-min-clamp-ingr+ 
+red-max-clamp-ingr+ 
+green-max-clamp-ingr+ 
+blue-max-clamp-ingr+ 
+alpha-max-clamp-ingr+ 
+interlace-read-ingr+ 
+incr-wrap-ext+ 
+decr-wrap-ext+ 
+422-ext+ 
+422-rev-ext+ 
+422-average-ext+ 
+422-rev-average-ext+ 
+normal-map-nv+ 
+reflection-map-nv+ 
+normal-map-ext+ 
+reflection-map-ext+ 
+texture-cube-map-ext+ 
+texture-binding-cube-map-ext+ 
+texture-cube-map-positive-x-ext+ 
+texture-cube-map-negative-x-ext+ 
+texture-cube-map-positive-y-ext+ 
+texture-cube-map-negative-y-ext+ 
+texture-cube-map-positive-z-ext+ 
+texture-cube-map-negative-z-ext+ 
+proxy-texture-cube-map-ext+ 
+max-cube-map-texture-size-ext+ 
+wrap-border-sun+ 
+max-texture-lod-bias-ext+ 
+texture-filter-control-ext+ 
+texture-lod-bias-ext+ 
+texture-max-anisotropy-ext+ 
+max-texture-max-anisotropy-ext+ 
+max-shininess-nv+ 
+max-spot-exponent-nv+ 
+fog-distance-mode-nv+ 
+eye-radial-nv+ 
+eye-plane-absolute-nv+ 
+emboss-light-nv+ 
+emboss-constant-nv+ 
+emboss-map-nv+ 
+combine4-nv+ 
+source3-rgb-nv+ 
+source3-alpha-nv+ 
+operand3-rgb-nv+ 
+operand3-alpha-nv+ 
+cull-vertex-ibm+ 
+ycrcb-sgix+ 
+ycrcba-sgix+ 
+depth-pass-instrument-sgix+ 
+depth-pass-instrument-counters-sgix+ 
+depth-pass-instrument-max-sgix+ 
+compressed-rgb-fxt1-3dfx+ 
+compressed-rgba-fxt1-3dfx+ 
+multisample-3dfx+ 
+sample-buffers-3dfx+ 
+samples-3dfx+ 
+multisample-bit-3dfx+ 
+dot3-rgb-ext+ 
+dot3-rgba-ext+ 
+mirror-clamp-ati+ 
+mirror-clamp-to-edge-ati+ 
+mirrored-repeat-ibm+ 
+depth-stencil-nv+ 
+unsigned-int-24-8-nv+ 
+texture-rectangle-nv+ 
+texture-binding-rectangle-nv+ 
+proxy-texture-rectangle-nv+ 
+max-rectangle-texture-size-nv+ 
+offset-texture-rectangle-nv+ 
+offset-texture-rectangle-scale-nv+ 
+dot-product-texture-rectangle-nv+ 
+rgba-unsigned-dot-product-mapping-nv+ 
+unsigned-int-s8-s8-8-8-nv+ 
+unsigned-int-8-8-s8-s8-rev-nv+ 
+dsdt-mag-intensity-nv+ 
+shader-consistent-nv+ 
+texture-shader-nv+ 
+shader-operation-nv+ 
+cull-modes-nv+ 
+offset-texture-matrix-nv+ 
+offset-texture-scale-nv+ 
+offset-texture-bias-nv+ 
+offset-texture-2d-matrix-nv+ 
+offset-texture-2d-scale-nv+ 
+offset-texture-2d-bias-nv+ 
+previous-texture-input-nv+ 
+const-eye-nv+ 
+pass-through-nv+ 
+cull-fragment-nv+ 
+offset-texture-2d-nv+ 
+dependent-ar-texture-2d-nv+ 
+dependent-gb-texture-2d-nv+ 
+dot-product-nv+ 
+dot-product-depth-replace-nv+ 
+dot-product-texture-2d-nv+ 
+dot-product-texture-cube-map-nv+ 
+dot-product-diffuse-cube-map-nv+ 
+dot-product-reflect-cube-map-nv+ 
+dot-product-const-eye-reflect-cube-map-nv+ 
+hilo-nv+ 
+dsdt-nv+ 
+dsdt-mag-nv+ 
+dsdt-mag-vib-nv+ 
+hilo16-nv+ 
+signed-hilo-nv+ 
+signed-hilo16-nv+ 
+signed-rgba-nv+ 
+signed-rgba8-nv+ 
+signed-rgb-nv+ 
+signed-rgb8-nv+ 
+signed-luminance-nv+ 
+signed-luminance8-nv+ 
+signed-luminance-alpha-nv+ 
+signed-luminance8-alpha8-nv+ 
+signed-alpha-nv+ 
+signed-alpha8-nv+ 
+signed-intensity-nv+ 
+signed-intensity8-nv+ 
+dsdt8-nv+ 
+dsdt8-mag8-nv+ 
+dsdt8-mag8-intensity8-nv+ 
+signed-rgb-unsigned-alpha-nv+ 
+signed-rgb8-unsigned-alpha8-nv+ 
+hi-scale-nv+ 
+lo-scale-nv+ 
+ds-scale-nv+ 
+dt-scale-nv+ 
+magnitude-scale-nv+ 
+vibrance-scale-nv+ 
+hi-bias-nv+ 
+lo-bias-nv+ 
+ds-bias-nv+ 
+dt-bias-nv+ 
+magnitude-bias-nv+ 
+vibrance-bias-nv+ 
+texture-border-values-nv+ 
+texture-hi-size-nv+ 
+texture-lo-size-nv+ 
+texture-ds-size-nv+ 
+texture-dt-size-nv+ 
+texture-mag-size-nv+ 
+dot-product-texture-3d-nv+ 
+vertex-array-range-without-flush-nv+ 
+scalebias-hint-sgix+ 
+interlace-oml+ 
+interlace-read-oml+ 
+format-subsample-24-24-oml+ 
+format-subsample-244-244-oml+ 
+pack-resample-oml+ 
+unpack-resample-oml+ 
+resample-replicate-oml+ 
+resample-zero-fill-oml+ 
+resample-average-oml+ 
+resample-decimate-oml+ 
+depth-stencil-to-rgba-nv+ 
+depth-stencil-to-bgra-nv+ 
+slice-accum-sun+ 
+multisample-filter-hint-nv+ 
+depth-clamp-nv+ 
+offset-projective-texture-2d-nv+ 
+offset-projective-texture-2d-scale-nv+ 
+offset-projective-texture-rectangle-nv+ 
+offset-projective-texture-rectangle-scale-nv+ 
+offset-hilo-texture-2d-nv+ 
+offset-hilo-texture-rectangle-nv+ 
+offset-hilo-projective-texture-2d-nv+ 
+offset-hilo-projective-texture-rectangle-nv+ 
+dependent-hilo-texture-2d-nv+ 
+dependent-rgb-texture-3d-nv+ 
+dependent-rgb-texture-cube-map-nv+ 
+dot-product-pass-through-nv+ 
+dot-product-texture-1d-nv+ 
+dot-product-affine-depth-replace-nv+ 
+hilo8-nv+ 
+signed-hilo8-nv+ 
+force-blue-to-one-nv+ 
+text-fragment-shader-ati+ 
+unpack-client-storage-apple+ 
+ycbcr-422-apple+ 
+unsigned-short-8-8-apple+ 
+unsigned-short-8-8-rev-apple+ 
+rgb-s3tc+ 
+rgb4-s3tc+ 
+rgba-s3tc+ 
+rgba4-s3tc+ 
+type-rgba-float-ati+ 
+color-clear-unclamped-value-ati+ 
+modulate-add-ati+ 
+modulate-signed-add-ati+ 
+modulate-subtract-ati+ 
+rgba-float32-ati+ 
+rgb-float32-ati+ 
+alpha-float32-ati+ 
+intensity-float32-ati+ 
+luminance-float32-ati+ 
+luminance-alpha-float32-ati+ 
+rgba-float16-ati+ 
+rgb-float16-ati+ 
+alpha-float16-ati+ 
+intensity-float16-ati+ 
+luminance-float16-ati+ 
+luminance-alpha-float16-ati+ 
+float-r-nv+ 
+float-rg-nv+ 
+float-rgb-nv+ 
+float-rgba-nv+ 
+float-r16-nv+ 
+float-r32-nv+ 
+float-rg16-nv+ 
+float-rg32-nv+ 
+float-rgb16-nv+ 
+float-rgb32-nv+ 
+float-rgba16-nv+ 
+float-rgba32-nv+ 
+texture-float-components-nv+ 
+float-clear-color-value-nv+ 
+float-rgba-mode-nv+ 
+texture-unsigned-remap-mode-nv+ 
+implementation-color-read-type-oes+ 
+implementation-color-read-format-oes+ 
+mirror-clamp-ext+ 
+mirror-clamp-to-edge-ext+ 
+mirror-clamp-to-border-ext+ 
+pack-invert-mesa+ 
+unsigned-short-8-8-mesa+ 
+unsigned-short-8-8-rev-mesa+ 
+ycbcr-mesa+ 
+pixel-pack-buffer-ext+ 
+pixel-unpack-buffer-ext+ 
+pixel-pack-buffer-binding-ext+ 
+pixel-unpack-buffer-binding-ext+ 
+max-program-exec-instructions-nv+ 
+max-program-call-depth-nv+ 
+max-program-if-depth-nv+ 
+max-program-loop-depth-nv+ 
+max-program-loop-count-nv+ 
+max-vertex-texture-image-units-arb+ 
+depth-stencil-ext+ 
+unsigned-int-24-8-ext+ 
+depth24-stencil8-ext+ 
+texture-stencil-size-ext+ 
+srgb-ext+ 
+srgb8-ext+ 
+srgb-alpha-ext+ 
+srgb8-alpha8-ext+ 
+sluminance-alpha-ext+ 
+sluminance8-alpha8-ext+ 
+sluminance-ext+ 
+sluminance8-ext+ 
+compressed-srgb-ext+ 
+compressed-srgb-alpha-ext+ 
+compressed-sluminance-ext+ 
+compressed-sluminance-alpha-ext+ 
+compressed-srgb-s3tc-dxt1-ext+ 
+compressed-srgb-alpha-s3tc-dxt1-ext+ 
+compressed-srgb-alpha-s3tc-dxt3-ext+ 
+compressed-srgb-alpha-s3tc-dxt5-ext+ 
+texture-1d-stack-mesax+ 
+texture-2d-stack-mesax+ 
+proxy-texture-1d-stack-mesax+ 
+proxy-texture-2d-stack-mesax+ 
+texture-1d-stack-binding-mesax+ 
+texture-2d-stack-binding-mesax+ 
+r11f-g11f-b10f-ext+ 
+unsigned-int-10f-11f-11f-rev-ext+ 
+rgba-signed-components-ext+ 
+texture-1d-array-ext+ 
+proxy-texture-1d-array-ext+ 
+texture-2d-array-ext+ 
+proxy-texture-2d-array-ext+ 
+texture-binding-1d-array-ext+ 
+texture-binding-2d-array-ext+ 
+max-array-texture-layers-ext+ 
+compare-ref-depth-to-texture-ext+ 
+framebuffer-attachment-texture-layer-ext+ 
+compressed-luminance-latc1-ext+ 
+compressed-signed-luminance-latc1-ext+ 
+compressed-luminance-alpha-latc2-ext+ 
+compressed-signed-luminance-alpha-latc2-ext+ 
+compressed-red-rgtc1-ext+ 
+compressed-signed-red-rgtc1-ext+ 
+compressed-red-green-rgtc2-ext+ 
+compressed-signed-red-green-rgtc2-ext+ 
+rgb9-e5-ext+ 
+unsigned-int-5-9-9-9-rev-ext+ 
+texture-shared-size-ext+ 
+framebuffer-srgb-ext+ 
+framebuffer-srgb-capable-ext+ 
list-base 
gen-lists 
delete-lists 
call-lists 
call-list 
end-list 
new-list 
vertex-4sv 
vertex-4s 
vertex-4iv 
vertex-4i 
vertex-4fv 
vertex-4f 
vertex-4dv 
vertex-4d 
vertex-3sv 
vertex-3s 
vertex-3iv 
vertex-3i 
vertex-3fv 
vertex-3f 
vertex-3dv 
vertex-3d 
vertex-2sv 
vertex-2s 
vertex-2iv 
vertex-2i 
vertex-2fv 
vertex-2f 
vertex-2dv 
vertex-2d 
tex-coord-4sv 
tex-coord-4s 
tex-coord-4iv 
tex-coord-4i 
tex-coord-4fv 
tex-coord-4f 
tex-coord-4dv 
tex-coord-4d 
tex-coord-3sv 
tex-coord-3s 
tex-coord-3iv 
tex-coord-3i 
tex-coord-3fv 
tex-coord-3f 
tex-coord-3dv 
tex-coord-3d 
tex-coord-2sv 
tex-coord-2s 
tex-coord-2iv 
tex-coord-2i 
tex-coord-2fv 
tex-coord-2f 
tex-coord-2dv 
tex-coord-2d 
tex-coord-1sv 
tex-coord-1s 
tex-coord-1iv 
tex-coord-1i 
tex-coord-1fv 
tex-coord-1f 
tex-coord-1dv 
tex-coord-1d 
rect-sv 
rect-s 
rect-iv 
rect-i 
rect-fv 
rect-f 
rect-dv 
rect-d 
raster-pos-4sv 
raster-pos-4s 
raster-pos-4iv 
raster-pos-4i 
raster-pos-4fv 
raster-pos-4f 
raster-pos-4dv 
raster-pos-4d 
raster-pos-3sv 
raster-pos-3s 
raster-pos-3iv 
raster-pos-3i 
raster-pos-3fv 
raster-pos-3f 
raster-pos-3dv 
raster-pos-3d 
raster-pos-2sv 
raster-pos-2s 
raster-pos-2iv 
raster-pos-2i 
raster-pos-2fv 
raster-pos-2f 
raster-pos-2dv 
raster-pos-2d 
normal-3sv 
normal-3s 
normal-3iv 
normal-3i 
normal-3fv 
normal-3f 
normal-3dv 
normal-3d 
normal-3bv 
normal-3b 
index-sv 
index-s 
index-iv 
index-i 
index-fv 
index-f 
index-dv 
index-d 
end 
edge-flagv 
edge-flag 
color-4usv 
color-4us 
color-4uiv 
color-4ui 
color-4ubv 
color-4ub 
color-4sv 
color-4s 
color-4iv 
color-4i 
color-4fv 
color-4f 
color-4dv 
color-4d 
color-4bv 
color-4b 
color-3usv 
color-3us 
color-3uiv 
color-3ui 
color-3ubv 
color-3ub 
color-3sv 
color-3s 
color-3iv 
color-3i 
color-3fv 
color-3f 
color-3dv 
color-3d 
color-3bv 
color-3b 
bitmap 
begin 
tex-gen-iv 
tex-gen-i 
tex-gen-fv 
tex-gen-f 
tex-gen-dv 
tex-gen-d 
tex-env-iv 
tex-env-i 
tex-env-fv 
tex-env-f 
tex-image-2d 
tex-image-1d 
tex-parameter-iv 
tex-parameter-i 
tex-parameter-fv 
tex-parameter-f 
shade-model 
scissor 
polygon-stipple 
polygon-mode 
point-size 
material-iv 
material-i 
material-fv 
material-f 
line-width 
line-stipple 
light-model-iv 
light-model-i 
light-model-fv 
light-model-f 
light-iv 
light-i 
light-fv 
light-f 
hint 
front-face 
fog-iv 
fog-i 
fog-fv 
fog-f 
cull-face 
color-material 
clip-plane 
push-name 
pop-name 
pass-through 
load-name 
init-names 
render-mode 
select-buffer 
feedback-buffer 
index-mask 
depth-mask 
color-mask 
stencil-mask 
clear-depth 
clear-stencil 
clear-color 
clear-index 
clear-accum 
clear 
draw-buffer 
push-attrib 
pop-attrib 
flush 
finish 
enable 
disable 
accum 
eval-point-2 
eval-mesh-2 
eval-point-1 
eval-mesh-1 
eval-coord-2fv 
eval-coord-2f 
eval-coord-2dv 
eval-coord-2d 
eval-coord-1fv 
eval-coord-1f 
eval-coord-1dv 
eval-coord-1d 
map-grid-2f 
map-grid-2d 
map-grid-1f 
map-grid-1d 
map-2f 
map-2d 
map-1f 
map-1d 
depth-func 
stencil-op 
stencil-func 
logic-op 
blend-func 
alpha-func 
draw-pixels 
read-pixels 
copy-pixels 
read-buffer 
pixel-map-usv 
pixel-map-uiv 
pixel-map-fv 
pixel-store-i 
pixel-store-f 
pixel-transfer-i 
pixel-transfer-f 
pixel-zoom 
is-list 
is-enabled 
get-tex-level-parameter-iv 
get-tex-level-parameter-fv 
get-tex-parameter-iv 
get-tex-parameter-fv 
get-tex-image 
get-tex-gen-iv 
get-tex-gen-fv 
get-tex-gen-dv 
get-tex-env-iv 
get-tex-env-fv 
get-string 
get-polygon-stipple 
get-pixel-map-usv 
get-pixel-map-uiv 
get-pixel-map-fv 
get-material-iv 
get-material-fv 
get-map-iv 
get-map-fv 
get-map-dv 
get-light-iv 
get-light-fv 
get-integerv 
get-floatv 
get-error 
get-doublev 
get-clip-plane 
get-booleanv 
viewport 
translate-f 
translate-d 
scale-f 
scale-d 
rotate-f 
rotate-d 
push-matrix 
pop-matrix 
ortho 
mult-matrix-d 
mult-matrix-f 
matrix-mode 
load-matrix-d 
load-matrix-f 
load-identity 
frustum 
depth-range 
push-client-attrib 
pop-client-attrib 
index-ubv 
index-ub 
prioritize-textures 
is-texture 
gen-textures 
delete-textures 
bind-texture 
are-textures-resident 
tex-sub-image-2d 
tex-sub-image-1d 
copy-tex-sub-image-2d 
copy-tex-sub-image-1d 
copy-tex-image-2d 
copy-tex-image-1d 
polygon-offset 
vertex-pointer 
tex-coord-pointer 
normal-pointer 
interleaved-arrays 
index-pointer 
get-pointerv 
enable-client-state 
edge-flag-pointer 
draw-elements 
draw-arrays 
disable-client-state 
color-pointer 
array-element 
+max-elements-vertices+ 
+max-elements-indices+ 
copy-tex-sub-image-3d 
tex-sub-image-3d 
tex-image-3d 
reset-minmax 
reset-histogram 
minmax 
histogram 
get-minmax-parameter-iv 
get-minmax-parameter-fv 
get-minmax 
get-histogram-parameter-iv 
get-histogram-parameter-fv 
get-histogram 
separable-filter-2d 
get-separable-filter 
get-convolution-parameter-iv 
get-convolution-parameter-fv 
get-convolution-filter 
copy-convolution-filter-2d 
copy-convolution-filter-1d 
convolution-parameter-iv 
convolution-parameter-i 
convolution-parameter-fv 
convolution-parameter-f 
convolution-filter-2d 
convolution-filter-1d 
copy-color-sub-table 
color-sub-table 
get-color-table-parameter-iv 
get-color-table-parameter-fv 
get-color-table 
copy-color-table 
color-table-parameter-iv 
color-table-parameter-fv 
color-table 
draw-range-elements 
blend-equation 
blend-color 
+texture0+ 
+texture1+ 
+texture2+ 
+texture3+ 
+texture4+ 
+texture5+ 
+texture6+ 
+texture7+ 
+texture8+ 
+texture9+ 
+texture10+ 
+texture11+ 
+texture12+ 
+texture13+ 
+texture14+ 
+texture15+ 
+texture16+ 
+texture17+ 
+texture18+ 
+texture19+ 
+texture20+ 
+texture21+ 
+texture22+ 
+texture23+ 
+texture24+ 
+texture25+ 
+texture26+ 
+texture27+ 
+texture28+ 
+texture29+ 
+texture30+ 
+texture31+ 
+active-texture+ 
+client-active-texture+ 
+max-texture-units+ 
+transpose-modelview-matrix+ 
+transpose-projection-matrix+ 
+transpose-texture-matrix+ 
+transpose-color-matrix+ 
+multisample-bit+ 
+normal-map+ 
+reflection-map+ 
+texture-cube-map+ 
+texture-binding-cube-map+ 
+texture-cube-map-positive-x+ 
+texture-cube-map-negative-x+ 
+texture-cube-map-positive-y+ 
+texture-cube-map-negative-y+ 
+texture-cube-map-positive-z+ 
+texture-cube-map-negative-z+ 
+proxy-texture-cube-map+ 
+max-cube-map-texture-size+ 
+compressed-alpha+ 
+compressed-luminance+ 
+compressed-luminance-alpha+ 
+compressed-intensity+ 
+compressed-rgb+ 
+compressed-rgba+ 
+texture-compression-hint+ 
+texture-compressed-image-size+ 
+texture-compressed+ 
+num-compressed-texture-formats+ 
+compressed-texture-formats+ 
+combine+ 
+combine-rgb+ 
+combine-alpha+ 
+source0-rgb+ 
+source1-rgb+ 
+source2-rgb+ 
+source0-alpha+ 
+source1-alpha+ 
+source2-alpha+ 
+operand0-rgb+ 
+operand1-rgb+ 
+operand2-rgb+ 
+operand0-alpha+ 
+operand1-alpha+ 
+operand2-alpha+ 
+rgb-scale+ 
+add-signed+ 
+interpolate+ 
+subtract+ 
+constant+ 
+primary-color+ 
+previous+ 
+dot3-rgb+ 
+dot3-rgba+ 
get-compressed-tex-image 
compressed-tex-sub-image-1d 
compressed-tex-sub-image-2d 
compressed-tex-sub-image-3d 
compressed-tex-image-1d 
compressed-tex-image-2d 
compressed-tex-image-3d 
sample-coverage 
mult-transpose-matrix-d 
mult-transpose-matrix-f 
load-transpose-matrix-d 
load-transpose-matrix-f 
multi-tex-coord-4sv 
multi-tex-coord-4s 
multi-tex-coord-4iv 
multi-tex-coord-4i 
multi-tex-coord-4fv 
multi-tex-coord-4f 
multi-tex-coord-4dv 
multi-tex-coord-4d 
multi-tex-coord-3sv 
multi-tex-coord-3s 
multi-tex-coord-3iv 
multi-tex-coord-3i 
multi-tex-coord-3fv 
multi-tex-coord-3f 
multi-tex-coord-3dv 
multi-tex-coord-3d 
multi-tex-coord-2sv 
multi-tex-coord-2s 
multi-tex-coord-2iv 
multi-tex-coord-2i 
multi-tex-coord-2fv 
multi-tex-coord-2f 
multi-tex-coord-2dv 
multi-tex-coord-2d 
multi-tex-coord-1sv 
multi-tex-coord-1s 
multi-tex-coord-1iv 
multi-tex-coord-1i 
multi-tex-coord-1fv 
multi-tex-coord-1f 
multi-tex-coord-1dv 
multi-tex-coord-1d 
client-active-texture 
active-texture 
+blend-dst-rgb+ 
+blend-src-rgb+ 
+blend-dst-alpha+ 
+blend-src-alpha+ 
+mirrored-repeat+ 
+fog-coordinate-source+ 
+fog-coordinate+ 
+fragment-depth+ 
+current-fog-coordinate+ 
+fog-coordinate-array-type+ 
+fog-coordinate-array-stride+ 
+fog-coordinate-array-pointer+ 
+fog-coordinate-array+ 
+color-sum+ 
+current-secondary-color+ 
+secondary-color-array-size+ 
+secondary-color-array-type+ 
+secondary-color-array-stride+ 
+secondary-color-array-pointer+ 
+secondary-color-array+ 
+max-texture-lod-bias+ 
+texture-filter-control+ 
+texture-lod-bias+ 
+incr-wrap+ 
+decr-wrap+ 
+texture-depth-size+ 
+depth-texture-mode+ 
+texture-compare-mode+ 
+texture-compare-func+ 
+compare-r-to-texture+ 
window-pos-3sv 
window-pos-3s 
window-pos-3iv 
window-pos-3i 
window-pos-3fv 
window-pos-3f 
window-pos-3dv 
window-pos-3d 
window-pos-2sv 
window-pos-2s 
window-pos-2iv 
window-pos-2i 
window-pos-2fv 
window-pos-2f 
window-pos-2dv 
window-pos-2d 
secondary-color-pointer 
secondary-color-3usv 
secondary-color-3us 
secondary-color-3uiv 
secondary-color-3ui 
secondary-color-3ubv 
secondary-color-3ub 
secondary-color-3sv 
secondary-color-3s 
secondary-color-3iv 
secondary-color-3i 
secondary-color-3fv 
secondary-color-3f 
secondary-color-3dv 
secondary-color-3d 
secondary-color-3bv 
secondary-color-3b 
point-parameter-iv 
point-parameter-i 
point-parameter-fv 
point-parameter-f 
multi-draw-elements 
multi-draw-arrays 
fog-coord-pointer 
fog-coord-dv 
fog-coord-d 
fog-coord-fv 
fog-coord-f 
blend-func-separate 
+buffer-size+ 
+buffer-usage+ 
+query-counter-bits+ 
+current-query+ 
+query-result+ 
+query-result-available+ 
+array-buffer+ 
+element-array-buffer+ 
+array-buffer-binding+ 
+element-array-buffer-binding+ 
+vertex-array-buffer-binding+ 
+normal-array-buffer-binding+ 
+color-array-buffer-binding+ 
+index-array-buffer-binding+ 
+texture-coord-array-buffer-binding+ 
+edge-flag-array-buffer-binding+ 
+secondary-color-array-buffer-binding+ 
+fog-coordinate-array-buffer-binding+ 
+weight-array-buffer-binding+ 
+vertex-attrib-array-buffer-binding+ 
+read-only+ 
+write-only+ 
+read-write+ 
+buffer-access+ 
+buffer-mapped+ 
+buffer-map-pointer+ 
+stream-draw+ 
+stream-read+ 
+stream-copy+ 
+static-draw+ 
+static-read+ 
+static-copy+ 
+dynamic-draw+ 
+dynamic-read+ 
+dynamic-copy+ 
+samples-passed+ 
+fog-coord-src+ 
+fog-coord+ 
+current-fog-coord+ 
+fog-coord-array-type+ 
+fog-coord-array-stride+ 
+fog-coord-array-pointer+ 
+fog-coord-array+ 
+fog-coord-array-buffer-binding+ 
+src0-rgb+ 
+src1-rgb+ 
+src2-rgb+ 
+src0-alpha+ 
+src1-alpha+ 
+src2-alpha+ 
get-buffer-pointerv 
get-buffer-parameter-iv 
unmap-buffer 
map-buffer 
get-buffer-sub-data 
buffer-sub-data 
buffer-data 
is-buffer 
gen-buffers 
delete-buffers 
bind-buffer 
get-query-object-uiv 
get-query-object-iv 
get-query-iv 
end-query 
begin-query 
is-query 
delete-queries 
gen-queries 
+blend-equation-rgb+ 
+vertex-attrib-array-enabled+ 
+vertex-attrib-array-size+ 
+vertex-attrib-array-stride+ 
+vertex-attrib-array-type+ 
+current-vertex-attrib+ 
+vertex-program-point-size+ 
+vertex-program-two-side+ 
+vertex-attrib-array-pointer+ 
+stencil-back-func+ 
+stencil-back-fail+ 
+stencil-back-pass-depth-fail+ 
+stencil-back-pass-depth-pass+ 
+max-draw-buffers+ 
+draw-buffer0+ 
+draw-buffer1+ 
+draw-buffer2+ 
+draw-buffer3+ 
+draw-buffer4+ 
+draw-buffer5+ 
+draw-buffer6+ 
+draw-buffer7+ 
+draw-buffer8+ 
+draw-buffer9+ 
+draw-buffer10+ 
+draw-buffer11+ 
+draw-buffer12+ 
+draw-buffer13+ 
+draw-buffer14+ 
+draw-buffer15+ 
+blend-equation-alpha+ 
+point-sprite+ 
+coord-replace+ 
+max-vertex-attribs+ 
+vertex-attrib-array-normalized+ 
+max-texture-coords+ 
+max-texture-image-units+ 
+fragment-shader+ 
+vertex-shader+ 
+max-fragment-uniform-components+ 
+max-vertex-uniform-components+ 
+max-varying-floats+ 
+max-vertex-texture-image-units+ 
+max-combined-texture-image-units+ 
+shader-type+ 
+float-vec2+ 
+float-vec3+ 
+float-vec4+ 
+int-vec2+ 
+int-vec3+ 
+int-vec4+ 
+bool+ 
+bool-vec2+ 
+bool-vec3+ 
+bool-vec4+ 
+float-mat2+ 
+float-mat3+ 
+float-mat4+ 
+sampler-1d+ 
+sampler-2d+ 
+sampler-3d+ 
+sampler-cube+ 
+sampler-1d-shadow+ 
+sampler-2d-shadow+ 
+delete-status+ 
+compile-status+ 
+link-status+ 
+validate-status+ 
+info-log-length+ 
+attached-shaders+ 
+active-uniforms+ 
+active-uniform-max-length+ 
+shader-source-length+ 
+active-attributes+ 
+active-attribute-max-length+ 
+fragment-shader-derivative-hint+ 
+shading-language-version+ 
+current-program+ 
+point-sprite-coord-origin+ 
+lower-left+ 
+upper-left+ 
+stencil-back-ref+ 
+stencil-back-value-mask+ 
+stencil-back-writemask+ 
vertex-attrib-pointer 
vertex-attrib-4usv 
vertex-attrib-4uiv 
vertex-attrib-4ubv 
vertex-attrib-4sv 
vertex-attrib-4s 
vertex-attrib-4iv 
vertex-attrib-4fv 
vertex-attrib-4f 
vertex-attrib-4dv 
vertex-attrib-4d 
vertex-attrib-4bv 
vertex-attrib-4n-usv 
vertex-attrib-4n-uiv 
vertex-attrib-4n-ubv 
vertex-attrib-4n-ub 
vertex-attrib-4n-sv 
vertex-attrib-4n-iv 
vertex-attrib-4n-bv 
vertex-attrib-3sv 
vertex-attrib-3s 
vertex-attrib-3fv 
vertex-attrib-3f 
vertex-attrib-3dv 
vertex-attrib-3d 
vertex-attrib-2sv 
vertex-attrib-2s 
vertex-attrib-2fv 
vertex-attrib-2f 
vertex-attrib-2dv 
vertex-attrib-2d 
vertex-attrib-1sv 
vertex-attrib-1s 
vertex-attrib-1fv 
vertex-attrib-1f 
vertex-attrib-1dv 
vertex-attrib-1d 
validate-program 
uniform-matrix-4fv 
uniform-matrix-3fv 
uniform-matrix-2fv 
uniform-4iv 
uniform-3iv 
uniform-2iv 
uniform-1iv 
uniform-4fv 
uniform-3fv 
uniform-2fv 
uniform-1fv 
uniform-4i 
uniform-3i 
uniform-2i 
uniform-1i 
uniform-4f 
uniform-3f 
uniform-2f 
uniform-1f 
use-program 
shader-source 
link-program 
is-shader 
is-program 
get-vertex-attrib-pointerv 
get-vertex-attrib-iv 
get-vertex-attrib-fv 
get-vertex-attrib-dv 
get-uniform-iv 
get-uniform-fv 
get-uniform-location 
get-shader-source 
get-shader-info-log 
get-shader-iv 
get-program-info-log 
get-program-iv 
get-attrib-location 
get-attached-shaders 
get-active-uniform 
get-active-attrib 
enable-vertex-attrib-array 
disable-vertex-attrib-array 
detach-shader 
delete-shader 
delete-program 
create-shader 
create-program 
compile-shader 
bind-attrib-location 
attach-shader 
stencil-mask-separate 
stencil-func-separate 
stencil-op-separate 
draw-buffers 
blend-equation-separate 
+current-raster-secondary-color+ 
+pixel-pack-buffer+ 
+pixel-unpack-buffer+ 
+pixel-pack-buffer-binding+ 
+pixel-unpack-buffer-binding+ 
+float-mat2x3+ 
+float-mat2x4+ 
+float-mat3x2+ 
+float-mat3x4+ 
+float-mat4x2+ 
+float-mat4x3+ 
+srgb+ 
+srgb8+ 
+srgb-alpha+ 
+srgb8-alpha8+ 
+sluminance-alpha+ 
+sluminance8-alpha8+ 
+sluminance+ 
+sluminance8+ 
+compressed-srgb+ 
+compressed-srgb-alpha+ 
+compressed-sluminance+ 
+compressed-sluminance-alpha+ 
uniform-matrix-4x-3fv 
uniform-matrix-3x-4fv 
uniform-matrix-4x-2fv 
uniform-matrix-2x-4fv 
uniform-matrix-3x-2fv 
uniform-matrix-2x-3fv 
blend-func-separate-ingr 
igloo-interface-sgix 
+rgba32ui-ext+ 
+rgb32ui-ext+ 
+alpha32ui-ext+ 
+intensity32ui-ext+ 
+luminance32ui-ext+ 
+luminance-alpha32ui-ext+ 
+rgba16ui-ext+ 
+rgb16ui-ext+ 
+alpha16ui-ext+ 
+intensity16ui-ext+ 
+luminance16ui-ext+ 
+luminance-alpha16ui-ext+ 
+rgba8ui-ext+ 
+rgb8ui-ext+ 
+alpha8ui-ext+ 
+intensity8ui-ext+ 
+luminance8ui-ext+ 
+luminance-alpha8ui-ext+ 
+rgba32i-ext+ 
+rgb32i-ext+ 
+alpha32i-ext+ 
+intensity32i-ext+ 
+luminance32i-ext+ 
+luminance-alpha32i-ext+ 
+rgba16i-ext+ 
+rgb16i-ext+ 
+alpha16i-ext+ 
+intensity16i-ext+ 
+luminance16i-ext+ 
+luminance-alpha16i-ext+ 
+rgba8i-ext+ 
+rgb8i-ext+ 
+alpha8i-ext+ 
+intensity8i-ext+ 
+luminance8i-ext+ 
+luminance-alpha8i-ext+ 
+red-integer-ext+ 
+green-integer-ext+ 
+blue-integer-ext+ 
+alpha-integer-ext+ 
+rgb-integer-ext+ 
+rgba-integer-ext+ 
+bgr-integer-ext+ 
+bgra-integer-ext+ 
+luminance-integer-ext+ 
+luminance-alpha-integer-ext+ 
+rgba-integer-mode-ext+ 
clear-color-i-ui-ext 
clear-color-i-i-ext 
get-tex-parameter-i-uiv-ext 
get-tex-parameter-i-iv-ext 
tex-parameter-i-uiv-ext 
tex-parameter-i-iv-ext 
+max-vertex-bindable-uniforms-ext+ 
+max-fragment-bindable-uniforms-ext+ 
+max-geometry-bindable-uniforms-ext+ 
+max-bindable-uniform-size-ext+ 
+uniform-buffer-ext+ 
+uniform-buffer-binding-ext+ 
get-uniform-offset-ext 
get-uniform-buffer-size-ext 
uniform-buffer-ext 
+back-primary-color-nv+ 
+back-secondary-color-nv+ 
+texture-coord-nv+ 
+clip-distance-nv+ 
+vertex-id-nv+ 
+primitive-id-nv+ 
+generic-attrib-nv+ 
+transform-feedback-attribs-nv+ 
+transform-feedback-buffer-mode-nv+ 
+max-transform-feedback-separate-components-nv+ 
+active-varyings-nv+ 
+active-varying-max-length-nv+ 
+transform-feedback-varyings-nv+ 
+transform-feedback-buffer-start-nv+ 
+transform-feedback-buffer-size-nv+ 
+transform-feedback-record-nv+ 
+primitives-generated-nv+ 
+transform-feedback-primitives-written-nv+ 
+rasterizer-discard-nv+ 
+max-transform-feedback-interleaved-attribs-nv+ 
+max-transform-feedback-separate-attribs-nv+ 
+interleaved-attribs-nv+ 
+separate-attribs-nv+ 
+transform-feedback-buffer-nv+ 
+transform-feedback-buffer-binding-nv+ 
get-transform-feedback-varying-nv 
get-active-varying-nv 
get-varying-location-nv 
active-varying-nv 
transform-feedback-varyings-nv 
bind-buffer-base-nv 
bind-buffer-offset-nv 
bind-buffer-range-nv 
transform-feedback-attribs-nv 
end-transform-feedback-nv 
begin-transform-feedback-nv 
is-enabled-indexed-ext 
disable-indexed-ext 
enable-indexed-ext 
get-integer-indexed-v-ext 
get-boolean-indexed-v-ext 
color-mask-indexed-ext 
+max-program-parameter-buffer-bindings-nv+ 
+max-program-parameter-buffer-size-nv+ 
+vertex-program-parameter-buffer-nv+ 
+geometry-program-parameter-buffer-nv+ 
+fragment-program-parameter-buffer-nv+ 
program-buffer-parameters-i-uiv-nv 
program-buffer-parameters-i-iv-nv 
program-buffer-parameters-fv-nv 
+renderbuffer-coverage-samples-nv+ 
+renderbuffer-color-samples-nv+ 
+max-multisample-coverage-modes-nv+ 
+multisample-coverage-modes-nv+ 
renderbuffer-storage-multisample-coverage-nv 
+depth-component32f-nv+ 
+depth32f-stencil8-nv+ 
+float-32-unsigned-int-24-8-rev-nv+ 
+depth-buffer-float-mode-nv+ 
depth-bounds-d-nv 
clear-depth-d-nv 
depth-ranged-nv 
+texture-buffer-ext+ 
+max-texture-buffer-size-ext+ 
+texture-binding-buffer-ext+ 
+texture-buffer-data-store-binding-ext+ 
+texture-buffer-format-ext+ 
tex-buffer-ext 
draw-elements-instanced-ext 
draw-arrays-instanced-ext 
+sampler-1d-array-ext+ 
+sampler-2d-array-ext+ 
+sampler-buffer-ext+ 
+sampler-1d-array-shadow-ext+ 
+sampler-2d-array-shadow-ext+ 
+sampler-cube-shadow-ext+ 
+unsigned-int-vec2-ext+ 
+unsigned-int-vec3-ext+ 
+unsigned-int-vec4-ext+ 
+int-sampler-1d-ext+ 
+int-sampler-2d-ext+ 
+int-sampler-3d-ext+ 
+int-sampler-cube-ext+ 
+int-sampler-2d-rect-ext+ 
+int-sampler-1d-array-ext+ 
+int-sampler-2d-array-ext+ 
+int-sampler-buffer-ext+ 
+unsigned-int-sampler-1d-ext+ 
+unsigned-int-sampler-2d-ext+ 
+unsigned-int-sampler-3d-ext+ 
+unsigned-int-sampler-cube-ext+ 
+unsigned-int-sampler-2d-rect-ext+ 
+unsigned-int-sampler-1d-array-ext+ 
+unsigned-int-sampler-2d-array-ext+ 
+unsigned-int-sampler-buffer-ext+ 
uniform-4uiv-ext 
uniform-3uiv-ext 
uniform-2uiv-ext 
uniform-1uiv-ext 
uniform-4ui-ext 
uniform-3ui-ext 
uniform-2ui-ext 
uniform-1ui-ext 
get-frag-data-location-ext 
bind-frag-data-location-ext 
get-uniform-uiv-ext 
+vertex-attrib-array-integer-nv+ 
get-vertex-attrib-i-uiv-ext 
get-vertex-attrib-i-iv-ext 
vertex-attrib-ipointer-ext 
vertex-attrib-i-4usv-ext 
vertex-attrib-i-4ubv-ext 
vertex-attrib-i-4sv-ext 
vertex-attrib-i-4bv-ext 
vertex-attrib-i-4uiv-ext 
vertex-attrib-i-3uiv-ext 
vertex-attrib-i-2uiv-ext 
vertex-attrib-i-1uiv-ext 
vertex-attrib-i-4iv-ext 
vertex-attrib-i-3iv-ext 
vertex-attrib-i-2iv-ext 
vertex-attrib-i-1iv-ext 
vertex-attrib-i-4ui-ext 
vertex-attrib-i-3ui-ext 
vertex-attrib-i-2ui-ext 
vertex-attrib-i-1ui-ext 
vertex-attrib-i-4i-ext 
vertex-attrib-i-3i-ext 
vertex-attrib-i-2i-ext 
vertex-attrib-i-1i-ext 
+geometry-shader-ext+ 
+max-geometry-varying-components-ext+ 
+max-vertex-varying-components-ext+ 
+max-varying-components-ext+ 
+max-geometry-uniform-components-ext+ 
+max-geometry-output-vertices-ext+ 
+max-geometry-total-output-components-ext+ 
program-parameter-i-ext 
+lines-adjacency-ext+ 
+line-strip-adjacency-ext+ 
+triangles-adjacency-ext+ 
+triangle-strip-adjacency-ext+ 
+geometry-program-nv+ 
+max-program-output-vertices-nv+ 
+max-program-total-output-components-nv+ 
+geometry-vertices-out-ext+ 
+geometry-input-type-ext+ 
+geometry-output-type-ext+ 
+max-geometry-texture-image-units-ext+ 
+framebuffer-attachment-layered-ext+ 
+framebuffer-incomplete-layer-targets-ext+ 
+framebuffer-incomplete-layer-count-ext+ 
+program-point-size-ext+ 
framebuffer-texture-face-ext 
framebuffer-texture-layer-ext 
framebuffer-texture-ext 
program-vertex-limit-nv 
+min-program-texel-offset-nv+ 
+max-program-texel-offset-nv+ 
+program-attrib-components-nv+ 
+program-result-components-nv+ 
+max-program-attrib-components-nv+ 
+max-program-result-components-nv+ 
+max-program-generic-attribs-nv+ 
+max-program-generic-results-nv+ 
get-program-env-parameter-i-uiv-nv 
get-program-env-parameter-i-iv-nv 
get-program-local-parameter-i-uiv-nv 
get-program-local-parameter-i-iv-nv 
program-env-parameters-i-4uiv-nv 
program-env-parameter-i-4uiv-nv 
program-env-parameter-i-4ui-nv 
program-env-parameters-i-4iv-nv 
program-env-parameter-i-4iv-nv 
program-env-parameter-i-4i-nv 
program-local-parameters-i-4uiv-nv 
program-local-parameter-i-4uiv-nv 
program-local-parameter-i-4ui-nv 
program-local-parameters-i-4iv-nv 
program-local-parameter-i-4iv-nv 
program-local-parameter-i-4i-nv 
+buffer-serialized-modify-apple+ 
+buffer-flushing-unmap-apple+ 
flush-mapped-buffer-range-apple 
buffer-parameter-i-apple 
program-local-parameters-4fv-ext 
program-env-parameters-4fv-ext 
+time-elapsed-ext+ 
get-query-objectui-64v-ext 
get-query-objecti-64v-ext 
+renderbuffer-samples-ext+ 
+framebuffer-incomplete-multisample-ext+ 
+max-samples-ext+ 
renderbuffer-storage-multisample-ext 
+read-framebuffer-ext+ 
+draw-framebuffer-ext+ 
+read-framebuffer-binding-ext+ 
+draw-framebuffer-binding-ext+ 
blit-framebuffer-ext 
+stencil-tag-bits-ext+ 
+stencil-clear-tag-value-ext+ 
stencil-clear-tag-ext 
string-marker-gremedy 
+invalid-framebuffer-operation-ext+ 
+max-renderbuffer-size-ext+ 
+framebuffer-binding-ext+ 
+renderbuffer-binding-ext+ 
+framebuffer-attachment-object-type-ext+ 
+framebuffer-attachment-object-name-ext+ 
+framebuffer-attachment-texture-level-ext+ 
+framebuffer-attachment-texture-cube-map-face-ext+ 
+framebuffer-attachment-texture-3d-zoffset-ext+ 
+framebuffer-complete-ext+ 
+framebuffer-incomplete-attachment-ext+ 
+framebuffer-incomplete-missing-attachment-ext+ 
+framebuffer-incomplete-dimensions-ext+ 
+framebuffer-incomplete-formats-ext+ 
+framebuffer-incomplete-draw-buffer-ext+ 
+framebuffer-incomplete-read-buffer-ext+ 
+framebuffer-unsupported-ext+ 
+max-color-attachments-ext+ 
+color-attachment0-ext+ 
+color-attachment1-ext+ 
+color-attachment2-ext+ 
+color-attachment3-ext+ 
+color-attachment4-ext+ 
+color-attachment5-ext+ 
+color-attachment6-ext+ 
+color-attachment7-ext+ 
+color-attachment8-ext+ 
+color-attachment9-ext+ 
+color-attachment10-ext+ 
+color-attachment11-ext+ 
+color-attachment12-ext+ 
+color-attachment13-ext+ 
+color-attachment14-ext+ 
+color-attachment15-ext+ 
+depth-attachment-ext+ 
+stencil-attachment-ext+ 
+framebuffer-ext+ 
+renderbuffer-ext+ 
+renderbuffer-width-ext+ 
+renderbuffer-height-ext+ 
+renderbuffer-internal-format-ext+ 
+stencil-index1-ext+ 
+stencil-index4-ext+ 
+stencil-index8-ext+ 
+stencil-index16-ext+ 
+renderbuffer-red-size-ext+ 
+renderbuffer-green-size-ext+ 
+renderbuffer-blue-size-ext+ 
+renderbuffer-alpha-size-ext+ 
+renderbuffer-depth-size-ext+ 
+renderbuffer-stencil-size-ext+ 
generate-mipmap-ext 
get-framebuffer-attachment-parameter-iv-ext 
framebuffer-renderbuffer-ext 
framebuffer-texture-3d-ext 
framebuffer-texture-2d-ext 
framebuffer-texture-1d-ext 
check-framebuffer-status-ext 
gen-framebuffers-ext 
delete-framebuffers-ext 
bind-framebuffer-ext 
is-framebuffer-ext 
get-renderbuffer-parameter-iv-ext 
renderbuffer-storage-ext 
gen-renderbuffers-ext 
delete-renderbuffers-ext 
bind-renderbuffer-ext 
is-renderbuffer-ext 
+blend-equation-rgb-ext+ 
+blend-equation-alpha-ext+ 
blend-equation-separate-ext 
+depth-bounds-test-ext+ 
+depth-bounds-ext+ 
depth-bounds-ext 
get-vertex-attrib-array-object-iv-ati 
get-vertex-attrib-array-object-fv-ati 
vertex-attrib-array-object-ati 
+stencil-back-func-ati+ 
+stencil-back-fail-ati+ 
+stencil-back-pass-depth-fail-ati+ 
+stencil-back-pass-depth-pass-ati+ 
stencil-func-separate-ati 
stencil-op-separate-ati 
unmap-object-buffer-ati 
map-object-buffer-ati 
+primitive-restart-nv+ 
+primitive-restart-index-nv+ 
primitive-restart-index-nv 
primitive-restart-nv 
+write-pixel-data-range-nv+ 
+read-pixel-data-range-nv+ 
+write-pixel-data-range-length-nv+ 
+read-pixel-data-range-length-nv+ 
+write-pixel-data-range-pointer-nv+ 
+read-pixel-data-range-pointer-nv+ 
flush-pixel-data-range-nv 
pixel-data-range-nv 
+half-float-nv+ 
vertex-attribs-4hv-nv 
vertex-attribs-3hv-nv 
vertex-attribs-2hv-nv 
vertex-attribs-1hv-nv 
vertex-attrib-4hv-nv 
vertex-attrib-4h-nv 
vertex-attrib-3hv-nv 
vertex-attrib-3h-nv 
vertex-attrib-2hv-nv 
vertex-attrib-2h-nv 
vertex-attrib-1hv-nv 
vertex-attrib-1h-nv 
vertex-weight-hv-nv 
vertex-weight-h-nv 
secondary-color-3hv-nv 
secondary-color-3h-nv 
fog-coord-hv-nv 
fog-coord-h-nv 
multi-tex-coord-4hv-nv 
multi-tex-coord-4h-nv 
multi-tex-coord-3hv-nv 
multi-tex-coord-3h-nv 
multi-tex-coord-2hv-nv 
multi-tex-coord-2h-nv 
multi-tex-coord-1hv-nv 
multi-tex-coord-1h-nv 
tex-coord-4hv-nv 
tex-coord-4h-nv 
tex-coord-3hv-nv 
tex-coord-3h-nv 
tex-coord-2hv-nv 
tex-coord-2h-nv 
tex-coord-1hv-nv 
tex-coord-1h-nv 
color-4hv-nv 
color-4h-nv 
color-3hv-nv 
color-3h-nv 
normal-3hv-nv 
normal-3h-nv 
vertex-4hv-nv 
vertex-4h-nv 
vertex-3hv-nv 
vertex-3h-nv 
vertex-2hv-nv 
vertex-2h-nv 
+max-fragment-program-local-parameters-nv+ 
+fragment-program-nv+ 
+max-texture-coords-nv+ 
+max-texture-image-units-nv+ 
+fragment-program-binding-nv+ 
+program-error-string-nv+ 
get-program-named-parameter-dv-nv 
get-program-named-parameter-fv-nv 
program-named-parameter-4dv-nv 
program-named-parameter-4fv-nv 
program-named-parameter-4d-nv 
program-named-parameter-4f-nv 
+max-draw-buffers-ati+ 
+draw-buffer0-ati+ 
+draw-buffer1-ati+ 
+draw-buffer2-ati+ 
+draw-buffer3-ati+ 
+draw-buffer4-ati+ 
+draw-buffer5-ati+ 
+draw-buffer6-ati+ 
+draw-buffer7-ati+ 
+draw-buffer8-ati+ 
+draw-buffer9-ati+ 
+draw-buffer10-ati+ 
+draw-buffer11-ati+ 
+draw-buffer12-ati+ 
+draw-buffer13-ati+ 
+draw-buffer14-ati+ 
+draw-buffer15-ati+ 
draw-buffers-ati 
+vertex-array-range-apple+ 
+vertex-array-range-length-apple+ 
+vertex-array-storage-hint-apple+ 
+vertex-array-range-pointer-apple+ 
+storage-cached-apple+ 
+storage-shared-apple+ 
vertex-array-parameter-i-apple 
flush-vertex-array-range-apple 
vertex-array-range-apple 
+vertex-array-binding-apple+ 
is-vertex-array-apple 
gen-vertex-arrays-apple 
delete-vertex-arrays-apple 
bind-vertex-array-apple 
+draw-pixels-apple+ 
+fence-apple+ 
finish-object-apple 
test-object-apple 
finish-fence-apple 
test-fence-apple 
is-fence-apple 
set-fence-apple 
delete-fences-apple 
gen-fences-apple 
+element-array-apple+ 
+element-array-type-apple+ 
+element-array-pointer-apple+ 
multi-draw-range-element-array-apple 
multi-draw-element-array-apple 
draw-range-element-array-apple 
draw-element-array-apple 
element-pointer-apple 
+stencil-test-two-side-ext+ 
+active-stencil-face-ext+ 
active-stencil-face-ext 
+point-sprite-nv+ 
+coord-replace-nv+ 
+point-sprite-r-mode-nv+ 
point-parameter-iv-nv 
point-parameter-i-nv 
+pixel-counter-bits-nv+ 
+current-occlusion-query-id-nv+ 
+pixel-count-nv+ 
+pixel-count-available-nv+ 
get-occlusion-query-uiv-nv 
get-occlusion-query-iv-nv 
end-occlusion-query-nv 
begin-occlusion-query-nv 
is-occlusion-query-nv 
delete-occlusion-queries-nv 
gen-occlusion-queries-nv 
+quad-mesh-sun+ 
+triangle-mesh-sun+ 
draw-mesh-arrays-sun 
+element-array-ati+ 
+element-array-type-ati+ 
+element-array-pointer-ati+ 
draw-range-element-array-ati 
draw-element-array-ati 
element-pointer-ati 
+max-vertex-streams-ati+ 
+vertex-stream0-ati+ 
+vertex-stream1-ati+ 
+vertex-stream2-ati+ 
+vertex-stream3-ati+ 
+vertex-stream4-ati+ 
+vertex-stream5-ati+ 
+vertex-stream6-ati+ 
+vertex-stream7-ati+ 
+vertex-source-ati+ 
vertex-blend-env-f-ati 
vertex-blend-env-i-ati 
client-active-vertex-stream-ati 
normal-stream-3dv-ati 
normal-stream-3d-ati 
normal-stream-3fv-ati 
normal-stream-3f-ati 
normal-stream-3iv-ati 
normal-stream-3i-ati 
normal-stream-3sv-ati 
normal-stream-3s-ati 
normal-stream-3bv-ati 
normal-stream-3b-ati 
vertex-stream-4dv-ati 
vertex-stream-4d-ati 
vertex-stream-4fv-ati 
vertex-stream-4f-ati 
vertex-stream-4iv-ati 
vertex-stream-4i-ati 
vertex-stream-4sv-ati 
vertex-stream-4s-ati 
vertex-stream-3dv-ati 
vertex-stream-3d-ati 
vertex-stream-3fv-ati 
vertex-stream-3f-ati 
vertex-stream-3iv-ati 
vertex-stream-3i-ati 
vertex-stream-3sv-ati 
vertex-stream-3s-ati 
vertex-stream-2dv-ati 
vertex-stream-2d-ati 
vertex-stream-2fv-ati 
vertex-stream-2f-ati 
vertex-stream-2iv-ati 
vertex-stream-2i-ati 
vertex-stream-2sv-ati 
vertex-stream-2s-ati 
vertex-stream-1dv-ati 
vertex-stream-1d-ati 
vertex-stream-1fv-ati 
vertex-stream-1f-ati 
vertex-stream-1iv-ati 
vertex-stream-1i-ati 
vertex-stream-1sv-ati 
vertex-stream-1s-ati 
+vertex-shader-ext+ 
+vertex-shader-binding-ext+ 
+op-index-ext+ 
+op-negate-ext+ 
+op-dot3-ext+ 
+op-dot4-ext+ 
+op-mul-ext+ 
+op-add-ext+ 
+op-madd-ext+ 
+op-frac-ext+ 
+op-max-ext+ 
+op-min-ext+ 
+op-set-ge-ext+ 
+op-set-lt-ext+ 
+op-clamp-ext+ 
+op-floor-ext+ 
+op-round-ext+ 
+op-exp-base-2-ext+ 
+op-log-base-2-ext+ 
+op-power-ext+ 
+op-recip-ext+ 
+op-recip-sqrt-ext+ 
+op-sub-ext+ 
+op-cross-product-ext+ 
+op-multiply-matrix-ext+ 
+op-mov-ext+ 
+output-vertex-ext+ 
+output-color0-ext+ 
+output-color1-ext+ 
+output-texture-coord0-ext+ 
+output-texture-coord1-ext+ 
+output-texture-coord2-ext+ 
+output-texture-coord3-ext+ 
+output-texture-coord4-ext+ 
+output-texture-coord5-ext+ 
+output-texture-coord6-ext+ 
+output-texture-coord7-ext+ 
+output-texture-coord8-ext+ 
+output-texture-coord9-ext+ 
+output-texture-coord10-ext+ 
+output-texture-coord11-ext+ 
+output-texture-coord12-ext+ 
+output-texture-coord13-ext+ 
+output-texture-coord14-ext+ 
+output-texture-coord15-ext+ 
+output-texture-coord16-ext+ 
+output-texture-coord17-ext+ 
+output-texture-coord18-ext+ 
+output-texture-coord19-ext+ 
+output-texture-coord20-ext+ 
+output-texture-coord21-ext+ 
+output-texture-coord22-ext+ 
+output-texture-coord23-ext+ 
+output-texture-coord24-ext+ 
+output-texture-coord25-ext+ 
+output-texture-coord26-ext+ 
+output-texture-coord27-ext+ 
+output-texture-coord28-ext+ 
+output-texture-coord29-ext+ 
+output-texture-coord30-ext+ 
+output-texture-coord31-ext+ 
+output-fog-ext+ 
+scalar-ext+ 
+vector-ext+ 
+matrix-ext+ 
+variant-ext+ 
+invariant-ext+ 
+local-constant-ext+ 
+local-ext+ 
+max-vertex-shader-instructions-ext+ 
+max-vertex-shader-variants-ext+ 
+max-vertex-shader-invariants-ext+ 
+max-vertex-shader-local-constants-ext+ 
+max-vertex-shader-locals-ext+ 
+max-optimized-vertex-shader-instructions-ext+ 
+max-optimized-vertex-shader-variants-ext+ 
+max-optimized-vertex-shader-local-constants-ext+ 
+max-optimized-vertex-shader-invariants-ext+ 
+max-optimized-vertex-shader-locals-ext+ 
+vertex-shader-instructions-ext+ 
+vertex-shader-variants-ext+ 
+vertex-shader-invariants-ext+ 
+vertex-shader-local-constants-ext+ 
+vertex-shader-locals-ext+ 
+vertex-shader-optimized-ext+ 
+x-ext+ 
+y-ext+ 
+z-ext+ 
+w-ext+ 
+negative-x-ext+ 
+negative-y-ext+ 
+negative-z-ext+ 
+negative-w-ext+ 
+zero-ext+ 
+one-ext+ 
+negative-one-ext+ 
+normalized-range-ext+ 
+full-range-ext+ 
+current-vertex-ext+ 
+mvp-matrix-ext+ 
+variant-value-ext+ 
+variant-datatype-ext+ 
+variant-array-stride-ext+ 
+variant-array-type-ext+ 
+variant-array-ext+ 
+variant-array-pointer-ext+ 
+invariant-value-ext+ 
+invariant-datatype-ext+ 
+local-constant-value-ext+ 
+local-constant-datatype-ext+ 
get-local-constant-floatv-ext 
get-local-constant-integerv-ext 
get-local-constant-booleanv-ext 
get-invariant-floatv-ext 
get-invariant-integerv-ext 
get-invariant-booleanv-ext 
get-variant-pointerv-ext 
get-variant-floatv-ext 
get-variant-integerv-ext 
get-variant-booleanv-ext 
is-variant-enabled-ext 
bind-parameter-ext 
bind-texture-unit-parameter-ext 
bind-tex-gen-parameter-ext 
bind-material-parameter-ext 
bind-light-parameter-ext 
disable-variant-client-state-ext 
enable-variant-client-state-ext 
variant-pointer-ext 
variant-uiv-ext 
variant-usv-ext 
variant-ubv-ext 
variant-dv-ext 
variant-fv-ext 
variant-iv-ext 
variant-sv-ext 
variant-bv-ext 
set-local-constant-ext 
set-invariant-ext 
gen-symbols-ext 
extract-component-ext 
insert-component-ext 
write-mask-ext 
swizzle-ext 
shader-op-3-ext 
shader-op-2-ext 
shader-op-1-ext 
delete-vertex-shader-ext 
gen-vertex-shaders-ext 
bind-vertex-shader-ext 
end-vertex-shader-ext 
begin-vertex-shader-ext 
+static-ati+ 
+dynamic-ati+ 
+preserve-ati+ 
+discard-ati+ 
+object-buffer-size-ati+ 
+object-buffer-usage-ati+ 
+array-object-buffer-ati+ 
+array-object-offset-ati+ 
get-variant-array-object-iv-ati 
get-variant-array-object-fv-ati 
variant-array-object-ati 
get-array-object-iv-ati 
get-array-object-fv-ati 
array-object-ati 
free-object-buffer-ati 
get-object-buffer-iv-ati 
get-object-buffer-fv-ati 
update-object-buffer-ati 
is-object-buffer-ati 
new-object-buffer-ati 
+pn-triangles-ati+ 
+max-pn-triangles-tesselation-level-ati+ 
+pn-triangles-point-mode-ati+ 
+pn-triangles-normal-mode-ati+ 
+pn-triangles-tesselation-level-ati+ 
+pn-triangles-point-mode-linear-ati+ 
+pn-triangles-point-mode-cubic-ati+ 
+pn-triangles-normal-mode-linear-ati+ 
+pn-triangles-normal-mode-quadratic-ati+ 
pntriangles-f-ati 
pntriangles-i-ati 
+fragment-shader-ati+ 
+reg-0-ati+ 
+reg-1-ati+ 
+reg-2-ati+ 
+reg-3-ati+ 
+reg-4-ati+ 
+reg-5-ati+ 
+reg-6-ati+ 
+reg-7-ati+ 
+reg-8-ati+ 
+reg-9-ati+ 
+reg-10-ati+ 
+reg-11-ati+ 
+reg-12-ati+ 
+reg-13-ati+ 
+reg-14-ati+ 
+reg-15-ati+ 
+reg-16-ati+ 
+reg-17-ati+ 
+reg-18-ati+ 
+reg-19-ati+ 
+reg-20-ati+ 
+reg-21-ati+ 
+reg-22-ati+ 
+reg-23-ati+ 
+reg-24-ati+ 
+reg-25-ati+ 
+reg-26-ati+ 
+reg-27-ati+ 
+reg-28-ati+ 
+reg-29-ati+ 
+reg-30-ati+ 
+reg-31-ati+ 
+con-0-ati+ 
+con-1-ati+ 
+con-2-ati+ 
+con-3-ati+ 
+con-4-ati+ 
+con-5-ati+ 
+con-6-ati+ 
+con-7-ati+ 
+con-8-ati+ 
+con-9-ati+ 
+con-10-ati+ 
+con-11-ati+ 
+con-12-ati+ 
+con-13-ati+ 
+con-14-ati+ 
+con-15-ati+ 
+con-16-ati+ 
+con-17-ati+ 
+con-18-ati+ 
+con-19-ati+ 
+con-20-ati+ 
+con-21-ati+ 
+con-22-ati+ 
+con-23-ati+ 
+con-24-ati+ 
+con-25-ati+ 
+con-26-ati+ 
+con-27-ati+ 
+con-28-ati+ 
+con-29-ati+ 
+con-30-ati+ 
+con-31-ati+ 
+mov-ati+ 
+add-ati+ 
+mul-ati+ 
+sub-ati+ 
+dot3-ati+ 
+dot4-ati+ 
+mad-ati+ 
+lerp-ati+ 
+cnd-ati+ 
+cnd0-ati+ 
+dot2-add-ati+ 
+secondary-interpolator-ati+ 
+num-fragment-registers-ati+ 
+num-fragment-constants-ati+ 
+num-passes-ati+ 
+num-instructions-per-pass-ati+ 
+num-instructions-total-ati+ 
+num-input-interpolator-components-ati+ 
+num-loopback-components-ati+ 
+color-alpha-pairing-ati+ 
+swizzle-str-ati+ 
+swizzle-stq-ati+ 
+swizzle-str-dr-ati+ 
+swizzle-stq-dq-ati+ 
+swizzle-strq-ati+ 
+swizzle-strq-dq-ati+ 
+red-bit-ati+ 
+green-bit-ati+ 
+blue-bit-ati+ 
+4x-bit-ati+ 
+8x-bit-ati+ 
+half-bit-ati+ 
+quarter-bit-ati+ 
+eighth-bit-ati+ 
+saturate-bit-ati+ 
+2x-bit-ati+ 
+comp-bit-ati+ 
+negate-bit-ati+ 
+bias-bit-ati+ 
set-fragment-shader-constant-ati 
alpha-fragment-op-3-ati 
alpha-fragment-op-2-ati 
alpha-fragment-op-1-ati 
color-fragment-op-3-ati 
color-fragment-op-2-ati 
color-fragment-op-1-ati 
sample-map-ati 
pass-tex-coord-ati 
end-fragment-shader-ati 
begin-fragment-shader-ati 
delete-fragment-shader-ati 
bind-fragment-shader-ati 
gen-fragment-shaders-ati 
+bump-rot-matrix-ati+ 
+bump-rot-matrix-size-ati+ 
+bump-num-tex-units-ati+ 
+bump-tex-units-ati+ 
+dudv-ati+ 
+du8dv8-ati+ 
+bump-envmap-ati+ 
+bump-target-ati+ 
get-tex-bump-parameter-fv-ati 
get-tex-bump-parameter-iv-ati 
tex-bump-parameter-fv-ati 
tex-bump-parameter-iv-ati 
+vertex-program-nv+ 
+vertex-state-program-nv+ 
+attrib-array-size-nv+ 
+attrib-array-stride-nv+ 
+attrib-array-type-nv+ 
+current-attrib-nv+ 
+program-length-nv+ 
+program-string-nv+ 
+modelview-projection-nv+ 
+identity-nv+ 
+inverse-nv+ 
+transpose-nv+ 
+inverse-transpose-nv+ 
+max-track-matrix-stack-depth-nv+ 
+max-track-matrices-nv+ 
+matrix0-nv+ 
+matrix1-nv+ 
+matrix2-nv+ 
+matrix3-nv+ 
+matrix4-nv+ 
+matrix5-nv+ 
+matrix6-nv+ 
+matrix7-nv+ 
+current-matrix-stack-depth-nv+ 
+current-matrix-nv+ 
+vertex-program-point-size-nv+ 
+vertex-program-two-side-nv+ 
+program-parameter-nv+ 
+attrib-array-pointer-nv+ 
+program-target-nv+ 
+program-resident-nv+ 
+track-matrix-nv+ 
+track-matrix-transform-nv+ 
+vertex-program-binding-nv+ 
+program-error-position-nv+ 
+vertex-attrib-array0-nv+ 
+vertex-attrib-array1-nv+ 
+vertex-attrib-array2-nv+ 
+vertex-attrib-array3-nv+ 
+vertex-attrib-array4-nv+ 
+vertex-attrib-array5-nv+ 
+vertex-attrib-array6-nv+ 
+vertex-attrib-array7-nv+ 
+vertex-attrib-array8-nv+ 
+vertex-attrib-array9-nv+ 
+vertex-attrib-array10-nv+ 
+vertex-attrib-array11-nv+ 
+vertex-attrib-array12-nv+ 
+vertex-attrib-array13-nv+ 
+vertex-attrib-array14-nv+ 
+vertex-attrib-array15-nv+ 
+map1-vertex-attrib0-4-nv+ 
+map1-vertex-attrib1-4-nv+ 
+map1-vertex-attrib2-4-nv+ 
+map1-vertex-attrib3-4-nv+ 
+map1-vertex-attrib4-4-nv+ 
+map1-vertex-attrib5-4-nv+ 
+map1-vertex-attrib6-4-nv+ 
+map1-vertex-attrib7-4-nv+ 
+map1-vertex-attrib8-4-nv+ 
+map1-vertex-attrib9-4-nv+ 
+map1-vertex-attrib10-4-nv+ 
+map1-vertex-attrib11-4-nv+ 
+map1-vertex-attrib12-4-nv+ 
+map1-vertex-attrib13-4-nv+ 
+map1-vertex-attrib14-4-nv+ 
+map1-vertex-attrib15-4-nv+ 
+map2-vertex-attrib0-4-nv+ 
+map2-vertex-attrib1-4-nv+ 
+map2-vertex-attrib2-4-nv+ 
+map2-vertex-attrib3-4-nv+ 
+map2-vertex-attrib4-4-nv+ 
+map2-vertex-attrib5-4-nv+ 
+map2-vertex-attrib6-4-nv+ 
+map2-vertex-attrib7-4-nv+ 
+map2-vertex-attrib8-4-nv+ 
+map2-vertex-attrib9-4-nv+ 
+map2-vertex-attrib10-4-nv+ 
+map2-vertex-attrib11-4-nv+ 
+map2-vertex-attrib12-4-nv+ 
+map2-vertex-attrib13-4-nv+ 
+map2-vertex-attrib14-4-nv+ 
+map2-vertex-attrib15-4-nv+ 
vertex-attribs-4ubv-nv 
vertex-attribs-4sv-nv 
vertex-attribs-4fv-nv 
vertex-attribs-4dv-nv 
vertex-attribs-3sv-nv 
vertex-attribs-3fv-nv 
vertex-attribs-3dv-nv 
vertex-attribs-2sv-nv 
vertex-attribs-2fv-nv 
vertex-attribs-2dv-nv 
vertex-attribs-1sv-nv 
vertex-attribs-1fv-nv 
vertex-attribs-1dv-nv 
vertex-attrib-4ubv-nv 
vertex-attrib-4ub-nv 
vertex-attrib-4sv-nv 
vertex-attrib-4s-nv 
vertex-attrib-4fv-nv 
vertex-attrib-4f-nv 
vertex-attrib-4dv-nv 
vertex-attrib-4d-nv 
vertex-attrib-3sv-nv 
vertex-attrib-3s-nv 
vertex-attrib-3fv-nv 
vertex-attrib-3f-nv 
vertex-attrib-3dv-nv 
vertex-attrib-3d-nv 
vertex-attrib-2sv-nv 
vertex-attrib-2s-nv 
vertex-attrib-2fv-nv 
vertex-attrib-2f-nv 
vertex-attrib-2dv-nv 
vertex-attrib-2d-nv 
vertex-attrib-1sv-nv 
vertex-attrib-1s-nv 
vertex-attrib-1fv-nv 
vertex-attrib-1f-nv 
vertex-attrib-1dv-nv 
vertex-attrib-1d-nv 
vertex-attrib-pointer-nv 
track-matrix-nv 
request-resident-programs-nv 
program-parameters-4fv-nv 
program-parameters-4dv-nv 
program-parameter-4fv-nv 
program-parameter-4f-nv 
program-parameter-4dv-nv 
program-parameter-4d-nv 
load-program-nv 
is-program-nv 
get-vertex-attrib-pointerv-nv 
get-vertex-attrib-iv-nv 
get-vertex-attrib-fv-nv 
get-vertex-attrib-dv-nv 
get-track-matrix-iv-nv 
get-program-string-nv 
get-program-iv-nv 
get-program-parameter-fv-nv 
get-program-parameter-dv-nv 
gen-programs-nv 
execute-program-nv 
delete-programs-nv 
bind-program-nv 
are-programs-resident-nv 
+per-stage-constants-nv+ 
get-combiner-stage-parameter-fv-nv 
combiner-stage-parameter-fv-nv 
+eval-2d-nv+ 
+eval-triangular-2d-nv+ 
+map-tessellation-nv+ 
+map-attrib-u-order-nv+ 
+map-attrib-v-order-nv+ 
+eval-fractional-tessellation-nv+ 
+eval-vertex-attrib0-nv+ 
+eval-vertex-attrib1-nv+ 
+eval-vertex-attrib2-nv+ 
+eval-vertex-attrib3-nv+ 
+eval-vertex-attrib4-nv+ 
+eval-vertex-attrib5-nv+ 
+eval-vertex-attrib6-nv+ 
+eval-vertex-attrib7-nv+ 
+eval-vertex-attrib8-nv+ 
+eval-vertex-attrib9-nv+ 
+eval-vertex-attrib10-nv+ 
+eval-vertex-attrib11-nv+ 
+eval-vertex-attrib12-nv+ 
+eval-vertex-attrib13-nv+ 
+eval-vertex-attrib14-nv+ 
+eval-vertex-attrib15-nv+ 
+max-map-tessellation-nv+ 
+max-rational-eval-order-nv+ 
eval-maps-nv 
get-map-attrib-parameter-fv-nv 
get-map-attrib-parameter-iv-nv 
get-map-parameter-fv-nv 
get-map-parameter-iv-nv 
get-map-control-points-nv 
map-parameter-fv-nv 
map-parameter-iv-nv 
map-control-points-nv 
+all-completed-nv+ 
+fence-status-nv+ 
+fence-condition-nv+ 
set-fence-nv 
finish-fence-nv 
get-fence-iv-nv 
test-fence-nv 
is-fence-nv 
gen-fences-nv 
delete-fences-nv 
+multisample-ext+ 
+sample-alpha-to-mask-ext+ 
+sample-alpha-to-one-ext+ 
+sample-mask-ext+ 
+1pass-ext+ 
+2pass-0-ext+ 
+2pass-1-ext+ 
+4pass-0-ext+ 
+4pass-1-ext+ 
+4pass-2-ext+ 
+4pass-3-ext+ 
+sample-buffers-ext+ 
+samples-ext+ 
+sample-mask-value-ext+ 
+sample-mask-invert-ext+ 
+sample-pattern-ext+ 
+multisample-bit-ext+ 
sample-pattern-ext 
sample-mask-ext 
tbuffer-mask-3dfx 
+vertex-array-list-ibm+ 
+normal-array-list-ibm+ 
+color-array-list-ibm+ 
+index-array-list-ibm+ 
+texture-coord-array-list-ibm+ 
+edge-flag-array-list-ibm+ 
+fog-coordinate-array-list-ibm+ 
+secondary-color-array-list-ibm+ 
+vertex-array-list-stride-ibm+ 
+normal-array-list-stride-ibm+ 
+color-array-list-stride-ibm+ 
+index-array-list-stride-ibm+ 
+texture-coord-array-list-stride-ibm+ 
+edge-flag-array-list-stride-ibm+ 
+fog-coordinate-array-list-stride-ibm+ 
+secondary-color-array-list-stride-ibm+ 
vertex-pointer-list-ibm 
tex-coord-pointer-list-ibm 
normal-pointer-list-ibm 
index-pointer-list-ibm 
fog-coord-pointer-list-ibm 
edge-flag-pointer-list-ibm 
secondary-color-pointer-list-ibm 
color-pointer-list-ibm 
multi-mode-draw-elements-ibm 
multi-mode-draw-arrays-ibm 
window-pos-4sv-mesa 
window-pos-4s-mesa 
window-pos-4iv-mesa 
window-pos-4i-mesa 
window-pos-4fv-mesa 
window-pos-4f-mesa 
window-pos-4dv-mesa 
window-pos-4d-mesa 
window-pos-3sv-mesa 
window-pos-3s-mesa 
window-pos-3iv-mesa 
window-pos-3i-mesa 
window-pos-3fv-mesa 
window-pos-3f-mesa 
window-pos-3dv-mesa 
window-pos-3d-mesa 
window-pos-2sv-mesa 
window-pos-2s-mesa 
window-pos-2iv-mesa 
window-pos-2i-mesa 
window-pos-2fv-mesa 
window-pos-2f-mesa 
window-pos-2dv-mesa 
window-pos-2d-mesa 
resize-buffers-mesa 
+register-combiners-nv+ 
+variable-a-nv+ 
+variable-b-nv+ 
+variable-c-nv+ 
+variable-d-nv+ 
+variable-e-nv+ 
+variable-f-nv+ 
+variable-g-nv+ 
+constant-color0-nv+ 
+constant-color1-nv+ 
+primary-color-nv+ 
+secondary-color-nv+ 
+spare0-nv+ 
+spare1-nv+ 
+discard-nv+ 
+e-times-f-nv+ 
+spare0-plus-secondary-color-nv+ 
+unsigned-identity-nv+ 
+unsigned-invert-nv+ 
+expand-normal-nv+ 
+expand-negate-nv+ 
+half-bias-normal-nv+ 
+half-bias-negate-nv+ 
+signed-identity-nv+ 
+signed-negate-nv+ 
+scale-by-two-nv+ 
+scale-by-four-nv+ 
+scale-by-one-half-nv+ 
+bias-by-negative-one-half-nv+ 
+combiner-input-nv+ 
+combiner-mapping-nv+ 
+combiner-component-usage-nv+ 
+combiner-ab-dot-product-nv+ 
+combiner-cd-dot-product-nv+ 
+combiner-mux-sum-nv+ 
+combiner-scale-nv+ 
+combiner-bias-nv+ 
+combiner-ab-output-nv+ 
+combiner-cd-output-nv+ 
+combiner-sum-output-nv+ 
+max-general-combiners-nv+ 
+num-general-combiners-nv+ 
+color-sum-clamp-nv+ 
+combiner0-nv+ 
+combiner1-nv+ 
+combiner2-nv+ 
+combiner3-nv+ 
+combiner4-nv+ 
+combiner5-nv+ 
+combiner6-nv+ 
+combiner7-nv+ 
get-final-combiner-input-parameter-iv-nv 
get-final-combiner-input-parameter-fv-nv 
get-combiner-output-parameter-iv-nv 
get-combiner-output-parameter-fv-nv 
get-combiner-input-parameter-iv-nv 
get-combiner-input-parameter-fv-nv 
final-combiner-input-nv 
combiner-output-nv 
combiner-input-nv 
combiner-parameter-i-nv 
combiner-parameter-iv-nv 
combiner-parameter-f-nv 
combiner-parameter-fv-nv 
+vertex-array-range-nv+ 
+vertex-array-range-length-nv+ 
+vertex-array-range-valid-nv+ 
+max-vertex-array-range-element-nv+ 
+vertex-array-range-pointer-nv+ 
vertex-array-range-nv 
flush-vertex-array-range-nv 
+modelview0-stack-depth-ext+ 
+modelview1-stack-depth-ext+ 
+modelview0-matrix-ext+ 
+modelview1-matrix-ext+ 
+vertex-weighting-ext+ 
+modelview0-ext+ 
+modelview1-ext+ 
+current-vertex-weight-ext+ 
+vertex-weight-array-ext+ 
+vertex-weight-array-size-ext+ 
+vertex-weight-array-type-ext+ 
+vertex-weight-array-stride-ext+ 
+vertex-weight-array-pointer-ext+ 
vertex-weight-pointer-ext 
vertex-weight-fv-ext 
vertex-weight-f-ext 
+blend-dst-rgb-ext+ 
+blend-src-rgb-ext+ 
+blend-dst-alpha-ext+ 
+blend-src-alpha-ext+ 
blend-func-separate-ext 
replacement-codeui-tex-coord-2f-color-4f-normal-3f-vertex-3fv-sun 
replacement-codeui-tex-coord-2f-color-4f-normal-3f-vertex-3f-sun 
replacement-codeui-tex-coord-2f-normal-3f-vertex-3fv-sun 
replacement-codeui-tex-coord-2f-normal-3f-vertex-3f-sun 
replacement-codeui-tex-coord-2f-vertex-3fv-sun 
replacement-codeui-tex-coord-2f-vertex-3f-sun 
replacement-codeui-color-4f-normal-3f-vertex-3fv-sun 
replacement-codeui-color-4f-normal-3f-vertex-3f-sun 
replacement-codeui-normal-3f-vertex-3fv-sun 
replacement-codeui-normal-3f-vertex-3f-sun 
replacement-codeui-color-3f-vertex-3fv-sun 
replacement-codeui-color-3f-vertex-3f-sun 
replacement-codeui-color-4ub-vertex-3fv-sun 
replacement-codeui-color-4ub-vertex-3f-sun 
replacement-codeui-vertex-3fv-sun 
replacement-codeui-vertex-3f-sun 
tex-coord-4f-color-4f-normal-3f-vertex-4fv-sun 
tex-coord-4f-color-4f-normal-3f-vertex-4f-sun 
tex-coord-2f-color-4f-normal-3f-vertex-3fv-sun 
tex-coord-2f-color-4f-normal-3f-vertex-3f-sun 
tex-coord-2f-normal-3f-vertex-3fv-sun 
tex-coord-2f-normal-3f-vertex-3f-sun 
tex-coord-2f-color-3f-vertex-3fv-sun 
tex-coord-2f-color-3f-vertex-3f-sun 
tex-coord-2f-color-4ub-vertex-3fv-sun 
tex-coord-2f-color-4ub-vertex-3f-sun 
tex-coord-4f-vertex-4fv-sun 
tex-coord-4f-vertex-4f-sun 
tex-coord-2f-vertex-3fv-sun 
tex-coord-2f-vertex-3f-sun 
color-4f-normal-3f-vertex-3fv-sun 
color-4f-normal-3f-vertex-3f-sun 
normal-3f-vertex-3fv-sun 
normal-3f-vertex-3f-sun 
color-3f-vertex-3fv-sun 
color-3f-vertex-3f-sun 
color-4ub-vertex-3fv-sun 
color-4ub-vertex-3f-sun 
color-4ub-vertex-2fv-sun 
color-4ub-vertex-2f-sun 
+restart-sun+ 
+replace-middle-sun+ 
+replace-oldest-sun+ 
+triangle-list-sun+ 
+replacement-code-sun+ 
+replacement-code-array-sun+ 
+replacement-code-array-type-sun+ 
+replacement-code-array-stride-sun+ 
+replacement-code-array-pointer-sun+ 
+r1ui-v3f-sun+ 
+r1ui-c4ub-v3f-sun+ 
+r1ui-c3f-v3f-sun+ 
+r1ui-n3f-v3f-sun+ 
+r1ui-c4f-n3f-v3f-sun+ 
+r1ui-t2f-v3f-sun+ 
+r1ui-t2f-n3f-v3f-sun+ 
+r1ui-t2f-c4f-n3f-v3f-sun+ 
replacement-code-pointer-sun 
replacement-code-ubv-sun 
replacement-code-usv-sun 
replacement-code-uiv-sun 
replacement-code-ub-sun 
replacement-code-us-sun 
replacement-code-ui-sun 
+global-alpha-sun+ 
+global-alpha-factor-sun+ 
global-alpha-factor-ui-sun 
global-alpha-factor-us-sun 
global-alpha-factor-ub-sun 
global-alpha-factor-d-sun 
global-alpha-factor-f-sun 
global-alpha-factor-i-sun 
global-alpha-factor-s-sun 
global-alpha-factor-b-sun 
+unpack-constant-data-sunx+ 
+texture-constant-data-sunx+ 
finish-texture-sunx 
+tangent-array-ext+ 
+binormal-array-ext+ 
+current-tangent-ext+ 
+current-binormal-ext+ 
+tangent-array-type-ext+ 
+tangent-array-stride-ext+ 
+binormal-array-type-ext+ 
+binormal-array-stride-ext+ 
+tangent-array-pointer-ext+ 
+binormal-array-pointer-ext+ 
+map1-tangent-ext+ 
+map2-tangent-ext+ 
+map1-binormal-ext+ 
+map2-binormal-ext+ 
binormal-pointer-ext 
tangent-pointer-ext 
binormal-3sv-ext 
binormal-3s-ext 
binormal-3iv-ext 
binormal-3i-ext 
binormal-3fv-ext 
binormal-3f-ext 
binormal-3dv-ext 
binormal-3d-ext 
binormal-3bv-ext 
binormal-3b-ext 
tangent-3sv-ext 
tangent-3s-ext 
tangent-3iv-ext 
tangent-3i-ext 
tangent-3fv-ext 
tangent-3f-ext 
tangent-3dv-ext 
tangent-3d-ext 
tangent-3bv-ext 
tangent-3b-ext 
+fog-coordinate-source-ext+ 
+fog-coordinate-ext+ 
+current-fog-coordinate-ext+ 
+fog-coordinate-array-type-ext+ 
+fog-coordinate-array-stride-ext+ 
+fog-coordinate-array-pointer-ext+ 
+fog-coordinate-array-ext+ 
fog-coord-pointer-ext 
fog-coord-dv-ext 
fog-coord-d-ext 
fog-coord-fv-ext 
fog-coord-f-ext 
multi-draw-elements-ext 
multi-draw-arrays-ext 
+perturb-ext+ 
+texture-normal-ext+ 
texture-normal-ext 
+color-sum-ext+ 
+current-secondary-color-ext+ 
+secondary-color-array-size-ext+ 
+secondary-color-array-type-ext+ 
+secondary-color-array-stride-ext+ 
+secondary-color-array-pointer-ext+ 
+secondary-color-array-ext+ 
secondary-color-pointer-ext 
secondary-color-3usv-ext 
secondary-color-3us-ext 
secondary-color-3uiv-ext 
secondary-color-3ui-ext 
secondary-color-3ubv-ext 
secondary-color-3ub-ext 
secondary-color-3sv-ext 
secondary-color-3s-ext 
secondary-color-3iv-ext 
secondary-color-3i-ext 
secondary-color-3fv-ext 
secondary-color-3f-ext 
secondary-color-3dv-ext 
secondary-color-3d-ext 
secondary-color-3bv-ext 
secondary-color-3b-ext 
is-async-marker-sgix 
delete-async-markers-sgix 
gen-async-markers-sgix 
poll-async-sgix 
finish-async-sgix 
async-marker-sgix 
+fragment-material-ext+ 
+fragment-normal-ext+ 
+fragment-color-ext+ 
+attenuation-ext+ 
+shadow-attenuation-ext+ 
+texture-application-mode-ext+ 
+texture-light-ext+ 
+texture-material-face-ext+ 
+texture-material-parameter-ext+ 
+fragment-depth-ext+ 
texture-material-ext 
texture-light-ext 
apply-texture-ext 
+max-elements-vertices-ext+ 
+max-elements-indices-ext+ 
draw-range-elements-ext 
+cull-vertex-ext+ 
+cull-vertex-eye-position-ext+ 
+cull-vertex-object-position-ext+ 
cull-parameter-fv-ext 
cull-parameter-dv-ext 
+array-element-lock-first-ext+ 
+array-element-lock-count-ext+ 
unlock-arrays-ext 
lock-arrays-ext 
+index-test-ext+ 
+index-test-func-ext+ 
+index-test-ref-ext+ 
index-func-ext 
+index-material-ext+ 
+index-material-parameter-ext+ 
+index-material-face-ext+ 
index-material-ext 
+color-index1-ext+ 
+color-index2-ext+ 
+color-index4-ext+ 
+color-index8-ext+ 
+color-index12-ext+ 
+color-index16-ext+ 
+texture-index-size-ext+ 
get-color-table-parameter-fv-ext 
get-color-table-parameter-iv-ext 
get-color-table-ext 
color-table-ext 
+prefer-doublebuffer-hint-pgi+ 
+conserve-memory-hint-pgi+ 
+reclaim-memory-hint-pgi+ 
+native-graphics-handle-pgi+ 
+native-graphics-begin-hint-pgi+ 
+native-graphics-end-hint-pgi+ 
+always-fast-hint-pgi+ 
+always-soft-hint-pgi+ 
+allow-draw-obj-hint-pgi+ 
+allow-draw-win-hint-pgi+ 
+allow-draw-frg-hint-pgi+ 
+allow-draw-mem-hint-pgi+ 
+strict-depthfunc-hint-pgi+ 
+strict-lighting-hint-pgi+ 
+strict-scissor-hint-pgi+ 
+full-stipple-hint-pgi+ 
+clip-near-hint-pgi+ 
+clip-far-hint-pgi+ 
+wide-line-hint-pgi+ 
+back-normals-hint-pgi+ 
hint-pgi 
copy-color-sub-table-ext 
color-sub-table-ext 
+image-scale-x-hp+ 
+image-scale-y-hp+ 
+image-translate-x-hp+ 
+image-translate-y-hp+ 
+image-rotate-angle-hp+ 
+image-rotate-origin-x-hp+ 
+image-rotate-origin-y-hp+ 
+image-mag-filter-hp+ 
+image-min-filter-hp+ 
+image-cubic-weight-hp+ 
+cubic-hp+ 
+average-hp+ 
+image-transform-2d-hp+ 
+post-image-transform-color-table-hp+ 
+proxy-post-image-transform-color-table-hp+ 
get-image-transform-parameter-fv-hp 
get-image-transform-parameter-iv-hp 
image-transform-parameter-fv-hp 
image-transform-parameter-iv-hp 
image-transform-parameter-f-hp 
image-transform-parameter-i-hp 
flush-raster-sgix 
load-identity-deformation-map-sgix 
deform-sgix 
deformation-map-3f-sgix 
deformation-map-3d-sgix 
tag-sample-buffer-sgix 
point-parameter-fv-ext 
point-parameter-f-ext 
copy-tex-sub-image-3d-ext 
copy-tex-sub-image-2d-ext 
copy-tex-sub-image-1d-ext 
copy-tex-image-2d-ext 
copy-tex-image-1d-ext 
tex-sub-image-2d-ext 
tex-sub-image-1d-ext 
+rgba-float-mode-arb+ 
+clamp-vertex-color-arb+ 
+clamp-fragment-color-arb+ 
+clamp-read-color-arb+ 
+fixed-only-arb+ 
clamp-color-arb 
+max-draw-buffers-arb+ 
+draw-buffer0-arb+ 
+draw-buffer1-arb+ 
+draw-buffer2-arb+ 
+draw-buffer3-arb+ 
+draw-buffer4-arb+ 
+draw-buffer5-arb+ 
+draw-buffer6-arb+ 
+draw-buffer7-arb+ 
+draw-buffer8-arb+ 
+draw-buffer9-arb+ 
+draw-buffer10-arb+ 
+draw-buffer11-arb+ 
+draw-buffer12-arb+ 
+draw-buffer13-arb+ 
+draw-buffer14-arb+ 
+draw-buffer15-arb+ 
draw-buffers-arb 
+vertex-shader-arb+ 
+max-vertex-uniform-components-arb+ 
+max-varying-floats-arb+ 
+max-combined-texture-image-units-arb+ 
+object-active-attributes-arb+ 
+object-active-attribute-max-length-arb+ 
get-attrib-location-arb 
get-active-attrib-arb 
bind-attrib-location-arb 
+program-object-arb+ 
+shader-object-arb+ 
+object-type-arb+ 
+object-subtype-arb+ 
+float-vec2-arb+ 
+float-vec3-arb+ 
+float-vec4-arb+ 
+int-vec2-arb+ 
+int-vec3-arb+ 
+int-vec4-arb+ 
+bool-arb+ 
+bool-vec2-arb+ 
+bool-vec3-arb+ 
+bool-vec4-arb+ 
+float-mat2-arb+ 
+float-mat3-arb+ 
+float-mat4-arb+ 
+sampler-1d-arb+ 
+sampler-2d-arb+ 
+sampler-3d-arb+ 
+sampler-cube-arb+ 
+sampler-1d-shadow-arb+ 
+sampler-2d-shadow-arb+ 
+sampler-2d-rect-arb+ 
+sampler-2d-rect-shadow-arb+ 
+object-delete-status-arb+ 
+object-compile-status-arb+ 
+object-link-status-arb+ 
+object-validate-status-arb+ 
+object-info-log-length-arb+ 
+object-attached-objects-arb+ 
+object-active-uniforms-arb+ 
+object-active-uniform-max-length-arb+ 
+object-shader-source-length-arb+ 
get-shader-source-arb 
get-uniform-iv-arb 
get-uniform-fv-arb 
get-active-uniform-arb 
get-uniform-location-arb 
get-attached-objects-arb 
get-info-log-arb 
get-object-parameter-iv-arb 
get-object-parameter-fv-arb 
uniform-matrix-4fv-arb 
uniform-matrix-3fv-arb 
uniform-matrix-2fv-arb 
uniform-4iv-arb 
uniform-3iv-arb 
uniform-2iv-arb 
uniform-1iv-arb 
uniform-4fv-arb 
uniform-3fv-arb 
uniform-2fv-arb 
uniform-1fv-arb 
uniform-4i-arb 
uniform-3i-arb 
uniform-2i-arb 
uniform-1i-arb 
uniform-4f-arb 
uniform-3f-arb 
uniform-2f-arb 
uniform-1f-arb 
validate-program-arb 
use-program-object-arb 
link-program-arb 
attach-object-arb 
create-program-object-arb 
compile-shader-arb 
shader-source-arb 
create-shader-object-arb 
detach-object-arb 
get-handle-arb 
delete-object-arb 
+query-counter-bits-arb+ 
+current-query-arb+ 
+query-result-arb+ 
+query-result-available-arb+ 
+samples-passed-arb+ 
get-query-object-uiv-arb 
get-query-object-iv-arb 
get-query-iv-arb 
end-query-arb 
begin-query-arb 
is-query-arb 
delete-queries-arb 
gen-queries-arb 
+buffer-size-arb+ 
+buffer-usage-arb+ 
+array-buffer-arb+ 
+element-array-buffer-arb+ 
+array-buffer-binding-arb+ 
+element-array-buffer-binding-arb+ 
+vertex-array-buffer-binding-arb+ 
+normal-array-buffer-binding-arb+ 
+color-array-buffer-binding-arb+ 
+index-array-buffer-binding-arb+ 
+texture-coord-array-buffer-binding-arb+ 
+edge-flag-array-buffer-binding-arb+ 
+secondary-color-array-buffer-binding-arb+ 
+fog-coordinate-array-buffer-binding-arb+ 
+weight-array-buffer-binding-arb+ 
+vertex-attrib-array-buffer-binding-arb+ 
+read-only-arb+ 
+write-only-arb+ 
+read-write-arb+ 
+buffer-access-arb+ 
+buffer-mapped-arb+ 
+buffer-map-pointer-arb+ 
+stream-draw-arb+ 
+stream-read-arb+ 
+stream-copy-arb+ 
+static-draw-arb+ 
+static-read-arb+ 
+static-copy-arb+ 
+dynamic-draw-arb+ 
+dynamic-read-arb+ 
+dynamic-copy-arb+ 
get-buffer-pointerv-arb 
get-buffer-parameter-iv-arb 
unmap-buffer-arb 
map-buffer-arb 
get-buffer-sub-data-arb 
buffer-sub-data-arb 
buffer-data-arb 
is-buffer-arb 
gen-buffers-arb 
delete-buffers-arb 
bind-buffer-arb 
+color-sum-arb+ 
+vertex-program-arb+ 
+vertex-attrib-array-enabled-arb+ 
+vertex-attrib-array-size-arb+ 
+vertex-attrib-array-stride-arb+ 
+vertex-attrib-array-type-arb+ 
+current-vertex-attrib-arb+ 
+program-length-arb+ 
+program-string-arb+ 
+max-program-matrix-stack-depth-arb+ 
+max-program-matrices-arb+ 
+current-matrix-stack-depth-arb+ 
+current-matrix-arb+ 
+vertex-program-point-size-arb+ 
+vertex-program-two-side-arb+ 
+vertex-attrib-array-pointer-arb+ 
+program-error-position-arb+ 
+program-binding-arb+ 
+max-vertex-attribs-arb+ 
+vertex-attrib-array-normalized-arb+ 
+program-error-string-arb+ 
+program-format-ascii-arb+ 
+program-format-arb+ 
+program-instructions-arb+ 
+max-program-instructions-arb+ 
+program-native-instructions-arb+ 
+max-program-native-instructions-arb+ 
+program-temporaries-arb+ 
+max-program-temporaries-arb+ 
+program-native-temporaries-arb+ 
+max-program-native-temporaries-arb+ 
+program-parameters-arb+ 
+max-program-parameters-arb+ 
+program-native-parameters-arb+ 
+max-program-native-parameters-arb+ 
+program-attribs-arb+ 
+max-program-attribs-arb+ 
+program-native-attribs-arb+ 
+max-program-native-attribs-arb+ 
+program-address-registers-arb+ 
+max-program-address-registers-arb+ 
+program-native-address-registers-arb+ 
+max-program-native-address-registers-arb+ 
+max-program-local-parameters-arb+ 
+max-program-env-parameters-arb+ 
+program-under-native-limits-arb+ 
+transpose-current-matrix-arb+ 
+matrix0-arb+ 
+matrix1-arb+ 
+matrix2-arb+ 
+matrix3-arb+ 
+matrix4-arb+ 
+matrix5-arb+ 
+matrix6-arb+ 
+matrix7-arb+ 
+matrix8-arb+ 
+matrix9-arb+ 
+matrix10-arb+ 
+matrix11-arb+ 
+matrix12-arb+ 
+matrix13-arb+ 
+matrix14-arb+ 
+matrix15-arb+ 
+matrix16-arb+ 
+matrix17-arb+ 
+matrix18-arb+ 
+matrix19-arb+ 
+matrix20-arb+ 
+matrix21-arb+ 
+matrix22-arb+ 
+matrix23-arb+ 
+matrix24-arb+ 
+matrix25-arb+ 
+matrix26-arb+ 
+matrix27-arb+ 
+matrix28-arb+ 
+matrix29-arb+ 
+matrix30-arb+ 
+matrix31-arb+ 
is-program-arb 
get-vertex-attrib-pointerv-arb 
get-vertex-attrib-iv-arb 
get-vertex-attrib-fv-arb 
get-vertex-attrib-dv-arb 
get-program-string-arb 
get-program-iv-arb 
get-program-local-parameter-fv-arb 
get-program-local-parameter-dv-arb 
get-program-env-parameter-fv-arb 
get-program-env-parameter-dv-arb 
program-local-parameter-4fv-arb 
program-local-parameter-4f-arb 
program-local-parameter-4dv-arb 
program-local-parameter-4d-arb 
program-env-parameter-4fv-arb 
program-env-parameter-4f-arb 
program-env-parameter-4dv-arb 
program-env-parameter-4d-arb 
gen-programs-arb 
delete-programs-arb 
bind-program-arb 
program-string-arb 
disable-vertex-attrib-array-arb 
enable-vertex-attrib-array-arb 
vertex-attrib-pointer-arb 
vertex-attrib-4usv-arb 
vertex-attrib-4uiv-arb 
vertex-attrib-4ubv-arb 
vertex-attrib-4sv-arb 
vertex-attrib-4s-arb 
vertex-attrib-4iv-arb 
vertex-attrib-4fv-arb 
vertex-attrib-4f-arb 
vertex-attrib-4dv-arb 
vertex-attrib-4d-arb 
vertex-attrib-4bv-arb 
vertex-attrib-4n-usv-arb 
vertex-attrib-4n-uiv-arb 
vertex-attrib-4n-ubv-arb 
vertex-attrib-4n-ub-arb 
vertex-attrib-4n-sv-arb 
vertex-attrib-4n-iv-arb 
vertex-attrib-4n-bv-arb 
vertex-attrib-3sv-arb 
vertex-attrib-3s-arb 
vertex-attrib-3fv-arb 
vertex-attrib-3f-arb 
vertex-attrib-3dv-arb 
vertex-attrib-3d-arb 
vertex-attrib-2sv-arb 
vertex-attrib-2s-arb 
vertex-attrib-2fv-arb 
vertex-attrib-2f-arb 
vertex-attrib-2dv-arb 
vertex-attrib-2d-arb 
vertex-attrib-1sv-arb 
vertex-attrib-1s-arb 
vertex-attrib-1fv-arb 
vertex-attrib-1f-arb 
vertex-attrib-1dv-arb 
vertex-attrib-1d-arb 
window-pos-3sv-arb 
window-pos-3s-arb 
window-pos-3iv-arb 
window-pos-3i-arb 
window-pos-3fv-arb 
window-pos-3f-arb 
window-pos-3dv-arb 
window-pos-3d-arb 
window-pos-2sv-arb 
window-pos-2s-arb 
window-pos-2iv-arb 
window-pos-2i-arb 
window-pos-2fv-arb 
window-pos-2f-arb 
window-pos-2dv-arb 
window-pos-2d-arb 
+matrix-palette-arb+ 
+max-matrix-palette-stack-depth-arb+ 
+max-palette-matrices-arb+ 
+current-palette-matrix-arb+ 
+matrix-index-array-arb+ 
+current-matrix-index-arb+ 
+matrix-index-array-size-arb+ 
+matrix-index-array-type-arb+ 
+matrix-index-array-stride-arb+ 
+matrix-index-array-pointer-arb+ 
matrix-index-pointer-arb 
matrix-index-uiv-arb 
matrix-index-usv-arb 
matrix-index-ubv-arb 
current-palette-matrix-arb 
+max-vertex-units-arb+ 
+active-vertex-units-arb+ 
+weight-sum-unity-arb+ 
+vertex-blend-arb+ 
+current-weight-arb+ 
+weight-array-type-arb+ 
+weight-array-stride-arb+ 
+weight-array-size-arb+ 
+weight-array-pointer-arb+ 
+weight-array-arb+ 
+modelview0-arb+ 
+modelview1-arb+ 
+modelview2-arb+ 
+modelview3-arb+ 
+modelview4-arb+ 
+modelview5-arb+ 
+modelview6-arb+ 
+modelview7-arb+ 
+modelview8-arb+ 
+modelview9-arb+ 
+modelview10-arb+ 
+modelview11-arb+ 
+modelview12-arb+ 
+modelview13-arb+ 
+modelview14-arb+ 
+modelview15-arb+ 
+modelview16-arb+ 
+modelview17-arb+ 
+modelview18-arb+ 
+modelview19-arb+ 
+modelview20-arb+ 
+modelview21-arb+ 
+modelview22-arb+ 
+modelview23-arb+ 
+modelview24-arb+ 
+modelview25-arb+ 
+modelview26-arb+ 
+modelview27-arb+ 
+modelview28-arb+ 
+modelview29-arb+ 
+modelview30-arb+ 
+modelview31-arb+ 
vertex-blend-arb 
weight-pointer-arb 
weight-uiv-arb 
weight-usv-arb 
weight-ubv-arb 
weight-dv-arb 
weight-fv-arb 
weight-iv-arb 
weight-sv-arb 
weight-bv-arb 
point-parameter-fv-arb 
point-parameter-f-arb 
+compressed-alpha-arb+ 
+compressed-luminance-arb+ 
+compressed-luminance-alpha-arb+ 
+compressed-intensity-arb+ 
+compressed-rgb-arb+ 
+compressed-rgba-arb+ 
+texture-compression-hint-arb+ 
+texture-compressed-image-size-arb+ 
+texture-compressed-arb+ 
+num-compressed-texture-formats-arb+ 
+compressed-texture-formats-arb+ 
get-compressed-tex-image-arb 
compressed-tex-sub-image-1d-arb 
compressed-tex-sub-image-2d-arb 
compressed-tex-sub-image-3d-arb 
compressed-tex-image-1d-arb 
compressed-tex-image-2d-arb 
compressed-tex-image-3d-arb 
+transpose-modelview-matrix-arb+ 
+transpose-projection-matrix-arb+ 
+transpose-texture-matrix-arb+ 
+transpose-color-matrix-arb+ 
mult-transpose-matrix-d-arb 
mult-transpose-matrix-f-arb 
load-transpose-matrix-d-arb 
load-transpose-matrix-f-arb 
+texture0-arb+ 
+texture1-arb+ 
+texture2-arb+ 
+texture3-arb+ 
+texture4-arb+ 
+texture5-arb+ 
+texture6-arb+ 
+texture7-arb+ 
+texture8-arb+ 
+texture9-arb+ 
+texture10-arb+ 
+texture11-arb+ 
+texture12-arb+ 
+texture13-arb+ 
+texture14-arb+ 
+texture15-arb+ 
+texture16-arb+ 
+texture17-arb+ 
+texture18-arb+ 
+texture19-arb+ 
+texture20-arb+ 
+texture21-arb+ 
+texture22-arb+ 
+texture23-arb+ 
+texture24-arb+ 
+texture25-arb+ 
+texture26-arb+ 
+texture27-arb+ 
+texture28-arb+ 
+texture29-arb+ 
+texture30-arb+ 
+texture31-arb+ 
+active-texture-arb+ 
+client-active-texture-arb+ 
+max-texture-units-arb+ 
multi-tex-coord-4sv-arb 
multi-tex-coord-4s-arb 
multi-tex-coord-4iv-arb 
multi-tex-coord-4i-arb 
multi-tex-coord-4fv-arb 
multi-tex-coord-4f-arb 
multi-tex-coord-4dv-arb 
multi-tex-coord-4d-arb 
multi-tex-coord-3sv-arb 
multi-tex-coord-3s-arb 
multi-tex-coord-3iv-arb 
multi-tex-coord-3i-arb 
multi-tex-coord-3fv-arb 
multi-tex-coord-3f-arb 
multi-tex-coord-3dv-arb 
multi-tex-coord-3d-arb 
multi-tex-coord-2sv-arb 
multi-tex-coord-2s-arb 
multi-tex-coord-2iv-arb 
multi-tex-coord-2i-arb 
multi-tex-coord-2fv-arb 
multi-tex-coord-2f-arb 
multi-tex-coord-2dv-arb 
multi-tex-coord-2d-arb 
multi-tex-coord-1sv-arb 
multi-tex-coord-1s-arb 
multi-tex-coord-1iv-arb 
multi-tex-coord-1i-arb 
multi-tex-coord-1fv-arb 
multi-tex-coord-1f-arb 
multi-tex-coord-1dv-arb 
multi-tex-coord-1d-arb 
client-active-texture-arb 
active-texture-arb 
+current-raster-normal-sgix+ 
light-env-i-sgix 
get-fragment-material-iv-sgix 
get-fragment-material-fv-sgix 
get-fragment-light-iv-sgix 
get-fragment-light-fv-sgix 
fragment-material-iv-sgix 
fragment-material-i-sgix 
fragment-material-fv-sgix 
fragment-material-f-sgix 
fragment-light-model-iv-sgix 
fragment-light-model-i-sgix 
fragment-light-model-fv-sgix 
fragment-light-model-f-sgix 
fragment-light-iv-sgix 
fragment-light-i-sgix 
fragment-light-fv-sgix 
fragment-light-f-sgix 
fragment-color-material-sgix 
+parallel-arrays-intel+ 
+vertex-array-parallel-pointers-intel+ 
+normal-array-parallel-pointers-intel+ 
+color-array-parallel-pointers-intel+ 
+texture-coord-array-parallel-pointers-intel+ 
tex-coord-pointerv-intel 
color-pointerv-intel 
normal-pointerv-intel 
vertex-pointerv-intel 
+pixel-group-color-sgis+ 
get-pixel-tex-gen-parameter-fv-sgis 
get-pixel-tex-gen-parameter-iv-sgis 
pixel-tex-gen-parameter-fv-sgis 
pixel-tex-gen-parameter-f-sgis 
pixel-tex-gen-parameter-iv-sgis 
pixel-tex-gen-parameter-i-sgis 
+pixel-transform-2d-ext+ 
+pixel-mag-filter-ext+ 
+pixel-min-filter-ext+ 
+pixel-cubic-weight-ext+ 
+cubic-ext+ 
+average-ext+ 
+pixel-transform-2d-stack-depth-ext+ 
+max-pixel-transform-2d-stack-depth-ext+ 
+pixel-transform-2d-matrix-ext+ 
pixel-transform-parameter-fv-ext 
pixel-transform-parameter-iv-ext 
pixel-transform-parameter-f-ext 
pixel-transform-parameter-i-ext 
+texture-color-writemask-sgis+ 
texture-color-mask-sgis 
frame-zoom-sgix 
list-parameter-iv-sgix 
list-parameter-i-sgix 
list-parameter-fv-sgix 
list-parameter-f-sgix 
get-list-parameter-iv-sgix 
get-list-parameter-fv-sgix 
stop-instruments-sgix 
start-instruments-sgix 
read-instruments-sgix 
poll-instruments-sgix 
instruments-buffer-sgix 
get-instruments-sgix 
reference-plane-sgix 
+sprite-axial-sgix+ 
+sprite-object-aligned-sgix+ 
+sprite-eye-aligned-sgix+ 
sprite-parameter-iv-sgix 
sprite-parameter-i-sgix 
sprite-parameter-fv-sgix 
sprite-parameter-f-sgix 
tex-filter-func-sgis 
get-tex-filter-func-sgis 
pixel-tex-gen-sgix 
tex-sub-image-4d-sgis 
tex-image-4d-sgis 
get-fog-func-sgis 
fog-func-sgis 
+point-size-min+ 
+point-size-min-arb+ 
+point-size-min-ext+ 
+point-size-max+ 
+point-size-max-arb+ 
+point-size-max-ext+ 
+point-fade-threshold-size+ 
+point-fade-threshold-size-arb+ 
+point-fade-threshold-size-ext+ 
+point-distance-attenuation+ 
+point-distance-attenuation-arb+ 
+distance-attenuation-ext+ 
point-parameter-fv-sgis 
point-parameter-f-sgis 
get-color-table-parameteriv-sgi 
get-color-table-parameterfv-sgi 
get-color-table-sgi 
copy-color-table-sgi 
color-table-parameteriv-sgi 
color-table-parameterfv-sgi 
color-table-sgi 
get-sharpen-tex-func-sgis 
sharpen-tex-func-sgis 
sample-pattern-sgis 
sample-mask-sgis 
+multisample+ 
+sample-alpha-to-coverage+ 
+sample-alpha-to-one+ 
+sample-coverage+ 
+sample-buffers+ 
+samples+ 
+sample-coverage-value+ 
+sample-coverage-invert+ 
+multisample-arb+ 
+sample-alpha-to-coverage-arb+ 
+sample-alpha-to-one-arb+ 
+sample-coverage-arb+ 
+sample-buffers-arb+ 
+samples-arb+ 
+sample-coverage-value-arb+ 
+sample-coverage-invert-arb+ 
+multisample-bit-arb+ 
sample-coverage-arb 
get-detail-tex-func-sgis 
detail-tex-func-sgis 
+vertex-array-ext+ 
+normal-array-ext+ 
+color-array-ext+ 
+index-array-ext+ 
+texture-coord-array-ext+ 
+edge-flag-array-ext+ 
+vertex-array-size-ext+ 
+vertex-array-type-ext+ 
+vertex-array-stride-ext+ 
+normal-array-type-ext+ 
+normal-array-stride-ext+ 
+color-array-size-ext+ 
+color-array-type-ext+ 
+color-array-stride-ext+ 
+index-array-type-ext+ 
+index-array-stride-ext+ 
+texture-coord-array-size-ext+ 
+texture-coord-array-type-ext+ 
+texture-coord-array-stride-ext+ 
+edge-flag-array-stride-ext+ 
+vertex-array-pointer-ext+ 
+normal-array-pointer-ext+ 
+color-array-pointer-ext+ 
+index-array-pointer-ext+ 
+texture-coord-array-pointer-ext+ 
+edge-flag-array-pointer-ext+ 
vertex-pointer-ext 
tex-coord-pointer-ext 
normal-pointer-ext 
index-pointer-ext 
get-pointerv-ext 
edge-flag-pointer-ext 
draw-arrays-ext 
color-pointer-ext 
array-element-ext 
+pack-skip-images+ 
+pack-image-height+ 
+unpack-skip-images+ 
+unpack-image-height+ 
+texture-3d+ 
+proxy-texture-3d+ 
+texture-depth+ 
+texture-wrap-r+ 
+max-3d-texture-size+ 
tex-sub-image-3d-ext 
tex-image-3d-ext 
+texture-priority-ext+ 
+texture-resident-ext+ 
+texture-1d-binding-ext+ 
+texture-2d-binding-ext+ 
prioritize-textures-ext 
is-texture-ext 
gen-textures-ext 
delete-textures-ext 
bind-texture-ext 
are-textures-resident-ext 
+polygon-offset-ext+ 
+polygon-offset-factor-ext+ 
polygon-offset-ext 
reset-minmax-ext 
reset-histogram-ext 
minmax-ext 
histogram-ext 
get-minmax-parameter-iv-ext 
get-minmax-parameter-fv-ext 
get-minmax-ext 
get-histogram-parameter-iv-ext 
get-histogram-parameter-fv-ext 
get-histogram-ext 
separable-filter-2d-ext 
get-separable-filter-ext 
get-convolution-parameter-iv-ext 
get-convolution-parameter-fv-ext 
get-convolution-filter-ext 
copy-convolution-filter-2d-ext 
copy-convolution-filter-1d-ext 
convolution-parameter-iv-ext 
convolution-parameter-i-ext 
convolution-parameter-fv-ext 
convolution-parameter-f-ext 
convolution-filter-2d-ext 
convolution-filter-1d-ext 
blend-equation-ext 
blend-color-ext ))

(in-package #:opengl)

(cffi:load-foreign-library '(:or (:framework "OpenGL")
                                 "opengl32.dll"
                                 (:default "libGL")
                                 (:default "opengl")
                                 (:default "opengl32")
                                 (:default "GL")
                                 (:default "gl")
                                 (:default "libOpenGL")
                                 (:default "OpenGL")))

;; TYPES

(defctype enum :uint32)
(defctype boolean :uint8)
(defctype bitfield :uint32)
(defctype byte :int8)
(defctype short :int16)
(defctype int :int32)
(defctype sizei :int32)
(defctype ubyte :uint8)
(defctype ushort :uint16)
(defctype uint :uint32)
(defctype float :float)
(defctype clampf :float)
(defctype double :double)
(defctype clampd :double)
(defctype void :void)

(defctype uint64 :uint64)
(defctype int64 :int64)

(defctype intptr #.(find-symbol (format nil "INT~d" (* 8 (cffi:foreign-type-size :pointer))) (find-package '#:keyword)))
(defctype sizeiptr #.(find-symbol (format nil "INT~d" (* 8 (cffi:foreign-type-size :pointer))) (find-package '#:keyword)))

(defctype handle :unsigned-int)

(defctype char :char)

(defctype string :string)

(defctype half :unsigned-short) ; this is how glext.h defines it anyway


(eval-when (:compile-toplevel :load-toplevel :execute)

  (defmethod cffi:expand-to-foreign (value (type (eql 'boolean)))
    `(if ,value gl:+true+ gl:+false+))

  (defmethod cffi:expand-from-foreign (value (type (eql 'boolean)))
    `(not (= ,value gl:+false+)))

  (defmethod cffi:expand-to-foreign (value (type (eql 'clampf)))
    `(coerce ,value 'single-float))

  (defmethod cffi:expand-to-foreign (value (type (eql 'clampd)))
    `(coerce ,value 'double-float))

  (defmethod cffi:expand-to-foreign (value (type (eql 'float)))
    `(coerce ,value 'single-float))

  (defmethod cffi:expand-to-foreign (value (type (eql 'double)))
    `(coerce ,value 'double-float))

  (let ((type-maps (quote 
(|AccumOp| opengl:enum |AlphaFunction| opengl:enum |AttribMask| opengl:bitfield
 |BeginMode| opengl:enum |BinormalPointerTypeEXT| opengl:enum
 |BlendEquationMode| opengl:enum |BlendEquationModeEXT| opengl:enum
 |BlendFuncSeparateParameterEXT| opengl:enum |BlendingFactorDest| opengl:enum
 |BlendingFactorSrc| opengl:enum |Boolean| opengl:boolean |BooleanPointer|
 :pointer |Char| opengl:char |CharPointer| :pointer |CheckedFloat32|
 opengl:float |CheckedInt32| opengl:int |ClampColorTargetARB| opengl:enum
 |ClampColorModeARB| opengl:enum |ClampedColorF| opengl:clampf |ClampedFloat32|
 opengl:clampf |ClampedFloat64| opengl:clampd |ClampedStencilValue| opengl:int
 |ClearBufferMask| opengl:bitfield |ClientAttribMask| opengl:bitfield
 |ClipPlaneName| opengl:enum |ColorB| opengl:byte |ColorD| opengl:double
 |ColorF| opengl:float |ColorI| opengl:int |ColorIndexValueD| opengl:double
 |ColorIndexValueF| opengl:float |ColorIndexValueI| opengl:int
 |ColorIndexValueS| opengl:short |ColorIndexValueUB| opengl:ubyte
 |ColorMaterialParameter| opengl:enum |ColorPointerType| opengl:enum |ColorS|
 opengl:short |ColorTableParameterPName| opengl:enum
 |ColorTableParameterPNameSGI| opengl:enum |ColorTableTarget| opengl:enum
 |ColorTableTargetSGI| opengl:enum |ColorUB| opengl:ubyte |ColorUI| opengl:uint
 |ColorUS| opengl:ushort |CombinerBiasNV| opengl:enum
 |CombinerComponentUsageNV| opengl:enum |CombinerMappingNV| opengl:enum
 |CombinerParameterNV| opengl:enum |CombinerPortionNV| opengl:enum
 |CombinerRegisterNV| opengl:enum |CombinerScaleNV| opengl:enum
 |CombinerStageNV| opengl:enum |CombinerVariableNV| opengl:enum
 |CompressedTextureARB| opengl:void |ControlPointNV| opengl:void
 |ControlPointTypeNV| opengl:enum |ConvolutionParameter| opengl:enum
 |ConvolutionParameterEXT| opengl:enum |ConvolutionTarget| opengl:enum
 |ConvolutionTargetEXT| opengl:enum |CoordD| opengl:double |CoordF|
 opengl:float |CoordI| opengl:int |CoordS| opengl:short |CullFaceMode|
 opengl:enum |CullParameterEXT| opengl:enum |DepthFunction| opengl:enum
 |DrawBufferMode| opengl:enum |DrawElementsType| opengl:enum
 |ElementPointerTypeATI| opengl:enum |EnableCap| opengl:enum |ErrorCode|
 opengl:enum |EvalMapsModeNV| opengl:enum |EvalTargetNV| opengl:enum
 |FeedbackElement| opengl:float |FeedbackType| opengl:enum |FenceNV|
 opengl:uint |FenceConditionNV| opengl:enum |FenceParameterNameNV| opengl:enum
 |FfdMaskSGIX| opengl:bitfield |FfdTargetSGIX| opengl:enum |Float32|
 opengl:float |Float32Pointer| :pointer |Float64| opengl:double
 |Float64Pointer| :pointer |FogParameter| opengl:enum |FogPointerTypeEXT|
 opengl:enum |FogPointerTypeIBM| opengl:enum |FragmentLightModelParameterSGIX|
 opengl:enum |FragmentLightNameSGIX| opengl:enum |FragmentLightParameterSGIX|
 opengl:enum |FramebufferAttachment| opengl:enum |FramebufferTarget|
 opengl:enum |FrontFaceDirection| opengl:enum |FunctionPointer| :pointer
 |GetColorTableParameterPName| opengl:enum |GetColorTableParameterPNameSGI|
 opengl:enum |GetConvolutionParameterPName| opengl:enum
 |GetHistogramParameterPName| opengl:enum |GetHistogramParameterPNameEXT|
 opengl:enum |GetMapQuery| opengl:enum |GetMinmaxParameterPName| opengl:enum
 |GetMinmaxParameterPNameEXT| opengl:enum |GetPName| opengl:enum
 |GetPointervPName| opengl:enum |GetTextureParameter| opengl:enum |HintMode|
 opengl:enum |HintTarget| opengl:enum |HintTargetPGI| opengl:enum
 |HistogramTarget| opengl:enum |HistogramTargetEXT| opengl:enum
 |IglooFunctionSelectSGIX| opengl:enum |IglooParameterSGIX| opengl:void
 |ImageTransformPNameHP| opengl:enum |ImageTransformTargetHP| opengl:enum
 |IndexFunctionEXT| opengl:enum |IndexMaterialParameterEXT| opengl:enum
 |IndexPointerType| opengl:enum |Int16| opengl:short |Int32| opengl:int |Int8|
 opengl:byte |InterleavedArrayFormat| opengl:enum |LightEnvParameterSGIX|
 opengl:enum |LightModelParameter| opengl:enum |LightName| opengl:enum
 |LightParameter| opengl:enum |LightTextureModeEXT| opengl:enum
 |LightTexturePNameEXT| opengl:enum |LineStipple| opengl:ushort |List|
 opengl:uint |ListMode| opengl:enum |ListNameType| opengl:enum
 |ListParameterName| opengl:enum |LogicOp| opengl:enum |MapAttribParameterNV|
 opengl:enum |MapParameterNV| opengl:enum |MapTarget| opengl:enum |MapTargetNV|
 opengl:enum |MapTypeNV| opengl:enum |MaskedColorIndexValueF| opengl:float
 |MaskedColorIndexValueI| opengl:uint |MaskedStencilValue| opengl:uint
 |MaterialFace| opengl:enum |MaterialParameter| opengl:enum
 |MatrixIndexPointerTypeARB| opengl:enum |MatrixMode| opengl:enum
 |MatrixTransformNV| opengl:enum |MeshMode1| opengl:enum |MeshMode2|
 opengl:enum |MinmaxTarget| opengl:enum |MinmaxTargetEXT| opengl:enum
 |NormalPointerType| opengl:enum |NurbsCallback| opengl:enum |NurbsObj|
 :pointer |NurbsProperty| opengl:enum |NurbsTrim| opengl:enum
 |OcclusionQueryParameterNameNV| opengl:enum |PixelCopyType| opengl:enum
 |PixelFormat| opengl:enum |PixelInternalFormat| opengl:enum |PixelMap|
 opengl:enum |PixelStoreParameter| opengl:enum |PixelTexGenModeSGIX|
 opengl:enum |PixelTexGenParameterNameSGIS| opengl:enum
 |PixelTransferParameter| opengl:enum |PixelTransformPNameEXT| opengl:enum
 |PixelTransformTargetEXT| opengl:enum |PixelType| opengl:enum
 |PointParameterNameARB| opengl:enum |PolygonMode| opengl:enum |ProgramNV|
 opengl:uint |ProgramCharacterNV| opengl:ubyte |ProgramParameterNV| opengl:enum
 |ProgramParameterPName| opengl:enum |QuadricCallback| opengl:enum
 |QuadricDrawStyle| opengl:enum |QuadricNormal| opengl:enum |QuadricObj|
 :pointer |QuadricOrientation| opengl:enum |ReadBufferMode| opengl:enum
 |RenderbufferTarget| opengl:enum |RenderingMode| opengl:enum
 |ReplacementCodeSUN| opengl:uint |ReplacementCodeTypeSUN| opengl:enum
 |SamplePassARB| opengl:enum |SamplePatternEXT| opengl:enum |SamplePatternSGIS|
 opengl:enum |SecondaryColorPointerTypeIBM| opengl:enum |SelectName|
 opengl:uint |SeparableTarget| opengl:enum |SeparableTargetEXT| opengl:enum
 |ShadingModel| opengl:enum |SizeI| opengl:sizei |SpriteParameterNameSGIX|
 opengl:enum |StencilFunction| opengl:enum |StencilFaceDirection| opengl:enum
 |StencilOp| opengl:enum |StencilValue| opengl:int |String| opengl:string
 |StringName| opengl:enum |TangentPointerTypeEXT| opengl:enum |TessCallback|
 opengl:enum |TessContour| opengl:enum |TessProperty| opengl:enum
 |TesselatorObj| :pointer |TexCoordPointerType| opengl:enum |Texture|
 opengl:uint |TextureComponentCount| opengl:int |TextureCoordName| opengl:enum
 |TextureEnvParameter| opengl:enum |TextureEnvTarget| opengl:enum
 |TextureFilterSGIS| opengl:enum |TextureGenParameter| opengl:enum
 |TextureNormalModeEXT| opengl:enum |TextureParameterName| opengl:enum
 |TextureTarget| opengl:enum |TextureUnit| opengl:enum |UInt16| opengl:ushort
 |UInt32| opengl:uint |UInt8| opengl:ubyte |VertexAttribEnum| opengl:enum
 |VertexAttribEnumNV| opengl:enum |VertexAttribPointerTypeNV| opengl:enum
 |VertexPointerType| opengl:enum |VertexWeightPointerTypeEXT| opengl:enum
 |Void| opengl:void |VoidPointer| :pointer |ConstVoidPointer| :pointer
 |WeightPointerTypeARB| opengl:enum |WinCoord| opengl:int |void| :void
 |ArrayObjectPNameATI| opengl:enum |ArrayObjectUsageATI| opengl:enum
 |ConstFloat32| opengl:float |ConstInt32| opengl:int |ConstUInt32| opengl:uint
 |ConstVoid| opengl:void |DataTypeEXT| opengl:enum |FragmentOpATI| opengl:enum
 |GetTexBumpParameterATI| opengl:enum |GetVariantValueEXT| opengl:enum
 |ParameterRangeEXT| opengl:enum |PreserveModeATI| opengl:enum
 |ProgramFormatARB| opengl:enum |ProgramTargetARB| opengl:enum |ProgramTarget|
 opengl:enum |ProgramPropertyARB| opengl:enum |ProgramStringPropertyARB|
 opengl:enum |ScalarType| opengl:enum |SwizzleOpATI| opengl:enum
 |TexBumpParameterATI| opengl:enum |VariantCapEXT| opengl:enum
 |VertexAttribPointerPropertyARB| opengl:enum |VertexAttribPointerTypeARB|
 opengl:enum |VertexAttribPropertyARB| opengl:enum |VertexShaderCoordOutEXT|
 opengl:enum |VertexShaderOpEXT| opengl:enum |VertexShaderParameterEXT|
 opengl:enum |VertexShaderStorageTypeEXT| opengl:enum
 |VertexShaderTextureUnitParameter| opengl:enum |VertexShaderWriteMaskEXT|
 opengl:enum |VertexStreamATI| opengl:enum |PNTrianglesPNameATI| opengl:enum
 |BufferOffset| opengl:intptr |BufferSize| opengl:sizeiptr |BufferAccessARB|
 opengl:enum |BufferOffsetARB| opengl:intptr |BufferPNameARB| opengl:enum
 |BufferPointerNameARB| opengl:enum |BufferSizeARB| opengl:sizeiptr
 |BufferTargetARB| opengl:enum |BufferUsageARB| opengl:enum |ObjectTypeAPPLE|
 opengl:enum |VertexArrayPNameAPPLE| opengl:enum |DrawBufferModeATI|
 opengl:enum |Half16NV| opengl:half |PixelDataRangeTargetNV| opengl:enum
 |GLenum| opengl:enum |handleARB| opengl:handle |charARB| opengl:char
 |charPointerARB| :pointer |Int64EXT| opengl:int64 |UInt64EXT| opengl:uint64) )))
    (labels ((c-name (func-spec)    (first (first func-spec)))
	     (lisp-name (func-spec) (second (first func-spec)))
	     (freturn (func-spec)   (first (getf (rest func-spec) :return)))
	     (args (func-spec)      (getf (rest func-spec) :args))
	     (deconstant (symbol)
	       (if (not (constantp symbol))
		   symbol
		   (deconstant (intern (concatenate 'cl:string "_" (symbol-name symbol))))))
	     (final-arg-name (arg)
	       (deconstant (intern (string-upcase (symbol-name (getf arg :name))))))
	     (final-arg-type (arg)
	       (let ((type (getf type-maps (getf arg :type))))
		 (cond
		   ((eql 'void type) :pointer)
		   ((getf arg :array) (if (eql type 'char) :string :pointer))
		   (t type))))
	     (arg-element-type (arg)
	       (getf type-maps (getf arg :type)))
	     (conc-symbols (&rest symbols)
	       (intern (apply #'concatenate (cons 'cl:string (mapcar #'symbol-name symbols)))))
	     (array-wrappable-p (arg #|args|#)
	       (let ((resolved-type (getf type-maps (getf arg :type))))
		 (and (getf arg :array)	
		      ;; we must have a type, ie. not a void* pointer
		      (not (eql 'void resolved-type))
		      (not (eql :void resolved-type))
		      ;; opengl cannot retain this pointer, as we would destroy it after passing it
		      (not (getf arg :retained))     
		      ;; can we guarantee a size? - used to do this, but the app programmer must get it right himself for OpenGL anyway
		      ;; so doing it this way is consistent with the C-interface, though more dangerous
		      #|
		      (or (integerp (getf arg :size))
			  (and (symbolp (getf arg :size))
			       (find-if #'(lambda (other-arg)
					    (eql (getf arg :size) (final-arg-name other-arg)))
					args)))|#
		      ;; our own hook
		      (not (getf arg :wrapped)))))
	     (gl-function-definition (func-spec &optional (c-prefix "gl") (lisp-prefix '#:||))
	       `(defcfun (,(concatenate 'cl:string c-prefix (c-name func-spec))
			   ,(conc-symbols lisp-prefix (lisp-name func-spec)))
		    ,(getf type-maps (intern (freturn func-spec)))
		  ,@(mapcar #'(lambda (arg) (list (final-arg-name arg) (final-arg-type arg))) 
			    (args func-spec))))
	     (gl-funcall-definition (func-spec fpointer)
	       `(foreign-funcall ,fpointer 
				 ,@(mapcan #'(lambda (arg) 
					       `(,(final-arg-type arg) ,(final-arg-name arg)))
					   (args func-spec))
				 ,(getf type-maps (intern (freturn func-spec)))))
	     (expand-a-wrapping (func-spec final-content)
	       (let* ((func-spec (copy-tree func-spec)) ; duplicate because we're not supposed to modify macro params
		      (args (args func-spec))
		      (first-wrappable (position-if #'array-wrappable-p args)))
		 (if first-wrappable
		     (let* ((arg (elt (args func-spec) first-wrappable))
			    (original-array-name (gensym (symbol-name (final-arg-name arg))))
			    (array-name (final-arg-name arg)))
		       ;; set it wrapped by non-consingly attaching a wrapped property on the end
		       (nconc arg (list :wrapped t))
		       `(if (and (typep ,array-name 'sequence) (not (stringp ,array-name)))
			    ;; the actual allocation
			    (let* ((,original-array-name ,array-name)
				   (,array-name (foreign-alloc ',(arg-element-type arg)
							       ;; we used to base it on the count of whatever the spec said
							       #|:count ,(getf arg :size)|#
							       ;; but now, we'll use the user's sequence size, or just their content
							       ,@(if (eql (getf arg :direction) :in)
								     `(:initial-contents ,original-array-name)
								     `(:count (length ,original-array-name))))))
			      ;; (format t "Copying ~a elements of ~a: ~a into ~a~%"
			      ;; ,(getf arg :size) ',array-name ,original-array-name ,array-name)
			      (unwind-protect
				   (prog1
				       #| as input values are set above, we don't use this now (and above is a prog1, it was prog2 before)
				       ;; custom coersion of input values, before call ; ;
				       ,(when (eql (getf arg :direction) :in)
					      `(cond 
						 ((listp ,original-array-name)
						  (loop for i upfrom 0 for e in ,original-array-name
						     do (setf (mem-aref ,array-name ',(arg-element-type arg) i) e)))
						 ((vectorp ,original-array-name)
						  (loop for i upfrom 0 for e across ,original-array-name
						     do (setf (mem-aref ,array-name ',(arg-element-type arg) i) e)))))
				       |#
				       ;; recurse in case there are more
				       ,(expand-a-wrapping func-spec final-content)
				     ;; custom coersion of output values, after call
				     ,(when (eql (getf arg :direction) :out)
					    `(cond 
					       ((listp ,original-array-name)
						(do ((i 0 (1+ i))
						     (ce ,original-array-name (cdr ce)))
						    ((not ce))
  						    #|((or (not ce)
						  (>= i ,(getf arg :size))))|#
						  (setf (car ce)
							(mem-aref ,array-name ',(arg-element-type arg) i))))
					       ((vectorp ,original-array-name)
						(do ((i 0 (1+ i)))
						    ((>= i (length ,original-array-name)))
						  #|((or (>= i (length ,original-array-name))
						  (>= i ,(getf arg :size))))|#
						  (setf (aref ,original-array-name i)
							(mem-aref ,array-name ',(arg-element-type arg) i)))))))
				(foreign-free ,array-name)))
			    ;; in the case the arg wasn't a sequence, pass it straight through
			    ,(expand-a-wrapping func-spec final-content)))
		     ;; in the case that there is no more wrapping to be done, emit the final content to start unwinding
		     final-content))))

      (defun wrapped-win32-gl-function-definition (func-spec)
	`(let ((fpointer (foreign-funcall "wglGetProcAddress" 
					  :string ,(concatenate 'cl:string "gl" (c-name func-spec))
					  :pointer)))
	   ;; I know the CFFI guide recommends against holding pointers, but for extensions on win,
	   ;; function pointers are the only way to do it. I don't think the locations are compiled
	   ;; in-to the fasl files, as it's a top-level form.
	   (when (null-pointer-p fpointer) 
	     (error 'simple-error "Error! Can't find function ~a" (first func-spec)))
	   (defun ,(lisp-name func-spec)
	       ,(mapcar #'(lambda (arg) (final-arg-name arg))  
			(args func-spec))
	     ;; if there is more than 0 wrappable arrays
	     ,(let ((args (args func-spec)))
		   (if (some #'array-wrappable-p args)
		       (expand-a-wrapping func-spec
					  (gl-funcall-definition func-spec 'fpointer))
		       (gl-funcall-definition func-spec 'fpointer))))))

      (defun wrapped-gl-function-definition (func-spec)
	(let ((args (args func-spec)))
	  ;; if there is more than 0 wrappable arrays
	  (if (some #'array-wrappable-p args)
	      `(progn
		 ;; make an inlined function prefixed with %
		 (declaim (inline ,(conc-symbols '#:% (lisp-name func-spec))))
		 ,(gl-function-definition func-spec "gl" '#:%)
		 ;; the exposed function with wrappings
		 (defun ,(lisp-name func-spec) ,(mapcar #'final-arg-name (args func-spec))
		   ,(expand-a-wrapping func-spec
				       `(,(conc-symbols '#:% (lisp-name func-spec))
					  ,@(mapcar #'final-arg-name (args func-spec))))))
	      (gl-function-definition func-spec)))))))
    
(defmacro defglfun (func-spec)
  (wrapped-gl-function-definition func-spec))

(defmacro defglextfun (func-spec)
  #+win32 (wrapped-win32-gl-function-definition func-spec)
  #-win32 (wrapped-gl-function-definition func-spec))



;;;; Enumerations: AttribMask

(defconstant +current-bit+ #x1) 
(defconstant +point-bit+ #x2) 
(defconstant +line-bit+ #x4) 
(defconstant +polygon-bit+ #x8) 
(defconstant +polygon-stipple-bit+ #x10) 
(defconstant +pixel-mode-bit+ #x20) 
(defconstant +lighting-bit+ #x40) 
(defconstant +fog-bit+ #x80) 
(defconstant +depth-buffer-bit+ #x100) 
(defconstant +accum-buffer-bit+ #x200) 
(defconstant +stencil-buffer-bit+ #x400) 
(defconstant +viewport-bit+ #x800) 
(defconstant +transform-bit+ #x1000) 
(defconstant +enable-bit+ #x2000) 
(defconstant +color-buffer-bit+ #x4000) 
(defconstant +hint-bit+ #x8000) 
(defconstant +eval-bit+ #x10000) 
(defconstant +list-bit+ #x20000) 
(defconstant +texture-bit+ #x40000) 
(defconstant +scissor-bit+ #x80000) 
(defconstant +all-attrib-bits+ #xFFFFFFFF) 

;;;; Enumerations: ClearBufferMask
;; color_buffer_bit already defined
;; accum_buffer_bit already defined
;; stencil_buffer_bit already defined
;; depth_buffer_bit already defined

;;;; Enumerations: ClientAttribMask

(defconstant +client-pixel-store-bit+ #x1) 
(defconstant +client-vertex-array-bit+ #x2) 
(defconstant +client-all-attrib-bits+ #xFFFFFFFF) 

;;;; Enumerations: Boolean

(defconstant +false+ #x0) 
(defconstant +true+ #x1) 

;;;; Enumerations: BeginMode

(defconstant +points+ #x0) 
(defconstant +lines+ #x1) 
(defconstant +line-loop+ #x2) 
(defconstant +line-strip+ #x3) 
(defconstant +triangles+ #x4) 
(defconstant +triangle-strip+ #x5) 
(defconstant +triangle-fan+ #x6) 
(defconstant +quads+ #x7) 
(defconstant +quad-strip+ #x8) 
(defconstant +polygon+ #x9) 

;;;; Enumerations: AccumOp

(defconstant +accum+ #x100) 
(defconstant +load+ #x101) 
(defconstant +return+ #x102) 
(defconstant +mult+ #x103) 
(defconstant +add+ #x104) 

;;;; Enumerations: AlphaFunction

(defconstant +never+ #x200) 
(defconstant +less+ #x201) 
(defconstant +equal+ #x202) 
(defconstant +lequal+ #x203) 
(defconstant +greater+ #x204) 
(defconstant +notequal+ #x205) 
(defconstant +gequal+ #x206) 
(defconstant +always+ #x207) 

;;;; Enumerations: BlendingFactorDest

(defconstant +zero+ #x0) 
(defconstant +one+ #x1) 
(defconstant +src-color+ #x300) 
(defconstant +one-minus-src-color+ #x301) 
(defconstant +src-alpha+ #x302) 
(defconstant +one-minus-src-alpha+ #x303) 
(defconstant +dst-alpha+ #x304) 
(defconstant +one-minus-dst-alpha+ #x305) 
(defconstant +constant-color-ext+ #x8001) 
(defconstant +one-minus-constant-color-ext+ #x8002) 
(defconstant +constant-alpha-ext+ #x8003) 
(defconstant +one-minus-constant-alpha-ext+ #x8004) 

;;;; Enumerations: BlendingFactorSrc
;; zero already defined
;; one already defined
(defconstant +dst-color+ #x306) 
(defconstant +one-minus-dst-color+ #x307) 
(defconstant +src-alpha-saturate+ #x308) 
;; src_alpha already defined
;; one_minus_src_alpha already defined
;; dst_alpha already defined
;; one_minus_dst_alpha already defined
;; constant_color_ext already defined
;; one_minus_constant_color_ext already defined
;; constant_alpha_ext already defined
;; one_minus_constant_alpha_ext already defined

;;;; Enumerations: BlendEquationModeEXT

(defconstant +logic-op+ #xBF1) 
(defconstant +func-add-ext+ #x8006) 
(defconstant +min-ext+ #x8007) 
(defconstant +max-ext+ #x8008) 
(defconstant +func-subtract-ext+ #x800A) 
(defconstant +func-reverse-subtract-ext+ #x800B) 
(defconstant +alpha-min-sgix+ #x8320) 
(defconstant +alpha-max-sgix+ #x8321) 

;;;; Enumerations: ColorMaterialFace

(defconstant +front+ #x404) 
(defconstant +back+ #x405) 
(defconstant +front-and-back+ #x408) 

;;;; Enumerations: ColorMaterialParameter

(defconstant +ambient+ #x1200) 
(defconstant +diffuse+ #x1201) 
(defconstant +specular+ #x1202) 
(defconstant +emission+ #x1600) 
(defconstant +ambient-and-diffuse+ #x1602) 

;;;; Enumerations: ColorPointerType

(defconstant +byte+ #x1400) 
(defconstant +unsigned-byte+ #x1401) 
(defconstant +short+ #x1402) 
(defconstant +unsigned-short+ #x1403) 
(defconstant +int+ #x1404) 
(defconstant +unsigned-int+ #x1405) 
(defconstant +float+ #x1406) 
(defconstant +double+ #x140A) 

;;;; Enumerations: ColorTableParameterPNameSGI

(defconstant +color-table-scale-sgi+ #x80D6) 
(defconstant +color-table-bias-sgi+ #x80D7) 

;;;; Enumerations: ColorTableTargetSGI

(defconstant +color-table-sgi+ #x80D0) 
(defconstant +post-convolution-color-table-sgi+ #x80D1) 
(defconstant +post-color-matrix-color-table-sgi+ #x80D2) 
(defconstant +proxy-color-table-sgi+ #x80D3) 
(defconstant +proxy-post-convolution-color-table-sgi+ #x80D4) 
(defconstant +proxy-post-color-matrix-color-table-sgi+ #x80D5) 
(defconstant +texture-color-table-sgi+ #x80BC) 
(defconstant +proxy-texture-color-table-sgi+ #x80BD) 

;;;; Enumerations: ConvolutionBorderModeEXT

(defconstant +reduce-ext+ #x8016) 

;;;; Enumerations: ConvolutionParameterEXT

(defconstant +convolution-border-mode-ext+ #x8013) 
(defconstant +convolution-filter-scale-ext+ #x8014) 
(defconstant +convolution-filter-bias-ext+ #x8015) 

;;;; Enumerations: ConvolutionTargetEXT

(defconstant +convolution-1d-ext+ #x8010) 
(defconstant +convolution-2d-ext+ #x8011) 

;;;; Enumerations: CullFaceMode
;; front already defined
;; back already defined
;; front_and_back already defined

;;;; Enumerations: DepthFunction
;; never already defined
;; less already defined
;; equal already defined
;; lequal already defined
;; greater already defined
;; notequal already defined
;; gequal already defined
;; always already defined

;;;; Enumerations: DrawBufferMode

(defconstant +none+ #x0) 
(defconstant +front-left+ #x400) 
(defconstant +front-right+ #x401) 
(defconstant +back-left+ #x402) 
(defconstant +back-right+ #x403) 
;; front already defined
;; back already defined
(defconstant +left+ #x406) 
(defconstant +right+ #x407) 
;; front_and_back already defined
(defconstant +aux0+ #x409) 
(defconstant +aux1+ #x40A) 
(defconstant +aux2+ #x40B) 
(defconstant +aux3+ #x40C) 

;;;; Enumerations: EnableCap

(defconstant +fog+ #xB60) 
(defconstant +lighting+ #xB50) 
(defconstant +texture-1d+ #xDE0) 
(defconstant +texture-2d+ #xDE1) 
(defconstant +line-stipple+ #xB24) 
(defconstant +polygon-stipple+ #xB42) 
(defconstant +cull-face+ #xB44) 
(defconstant +alpha-test+ #xBC0) 
(defconstant +blend+ #xBE2) 
(defconstant +index-logic-op+ #xBF1) 
(defconstant +color-logic-op+ #xBF2) 
(defconstant +dither+ #xBD0) 
(defconstant +stencil-test+ #xB90) 
(defconstant +depth-test+ #xB71) 
(defconstant +clip-plane0+ #x3000) 
(defconstant +clip-plane1+ #x3001) 
(defconstant +clip-plane2+ #x3002) 
(defconstant +clip-plane3+ #x3003) 
(defconstant +clip-plane4+ #x3004) 
(defconstant +clip-plane5+ #x3005) 
(defconstant +light0+ #x4000) 
(defconstant +light1+ #x4001) 
(defconstant +light2+ #x4002) 
(defconstant +light3+ #x4003) 
(defconstant +light4+ #x4004) 
(defconstant +light5+ #x4005) 
(defconstant +light6+ #x4006) 
(defconstant +light7+ #x4007) 
(defconstant +texture-gen-s+ #xC60) 
(defconstant +texture-gen-t+ #xC61) 
(defconstant +texture-gen-r+ #xC62) 
(defconstant +texture-gen-q+ #xC63) 
(defconstant +map1-vertex-3+ #xD97) 
(defconstant +map1-vertex-4+ #xD98) 
(defconstant +map1-color-4+ #xD90) 
(defconstant +map1-index+ #xD91) 
(defconstant +map1-normal+ #xD92) 
(defconstant +map1-texture-coord-1+ #xD93) 
(defconstant +map1-texture-coord-2+ #xD94) 
(defconstant +map1-texture-coord-3+ #xD95) 
(defconstant +map1-texture-coord-4+ #xD96) 
(defconstant +map2-vertex-3+ #xDB7) 
(defconstant +map2-vertex-4+ #xDB8) 
(defconstant +map2-color-4+ #xDB0) 
(defconstant +map2-index+ #xDB1) 
(defconstant +map2-normal+ #xDB2) 
(defconstant +map2-texture-coord-1+ #xDB3) 
(defconstant +map2-texture-coord-2+ #xDB4) 
(defconstant +map2-texture-coord-3+ #xDB5) 
(defconstant +map2-texture-coord-4+ #xDB6) 
(defconstant +point-smooth+ #xB10) 
(defconstant +line-smooth+ #xB20) 
(defconstant +polygon-smooth+ #xB41) 
(defconstant +scissor-test+ #xC11) 
(defconstant +color-material+ #xB57) 
(defconstant +normalize+ #xBA1) 
(defconstant +auto-normal+ #xD80) 
(defconstant +polygon-offset-point+ #x2A01) 
(defconstant +polygon-offset-line+ #x2A02) 
(defconstant +polygon-offset-fill+ #x8037) 
(defconstant +vertex-array+ #x8074) 
(defconstant +normal-array+ #x8075) 
(defconstant +color-array+ #x8076) 
(defconstant +index-array+ #x8077) 
(defconstant +texture-coord-array+ #x8078) 
(defconstant +edge-flag-array+ #x8079) 
;; convolution_1d_ext already defined
;; convolution_2d_ext already defined
(defconstant +separable-2d-ext+ #x8012) 
(defconstant +histogram-ext+ #x8024) 
(defconstant +minmax-ext+ #x802E) 
(defconstant +rescale-normal-ext+ #x803A) 
(defconstant +shared-texture-palette-ext+ #x81FB) 
(defconstant +texture-3d-ext+ #x806F) 
(defconstant +multisample-sgis+ #x809D) 
(defconstant +sample-alpha-to-mask-sgis+ #x809E) 
(defconstant +sample-alpha-to-one-sgis+ #x809F) 
(defconstant +sample-mask-sgis+ #x80A0) 
(defconstant +texture-4d-sgis+ #x8134) 
(defconstant +async-histogram-sgix+ #x832C) 
(defconstant +async-tex-image-sgix+ #x835C) 
(defconstant +async-draw-pixels-sgix+ #x835D) 
(defconstant +async-read-pixels-sgix+ #x835E) 
(defconstant +calligraphic-fragment-sgix+ #x8183) 
(defconstant +fog-offset-sgix+ #x8198) 
(defconstant +fragment-lighting-sgix+ #x8400) 
(defconstant +fragment-color-material-sgix+ #x8401) 
(defconstant +fragment-light0-sgix+ #x840C) 
(defconstant +fragment-light1-sgix+ #x840D) 
(defconstant +fragment-light2-sgix+ #x840E) 
(defconstant +fragment-light3-sgix+ #x840F) 
(defconstant +fragment-light4-sgix+ #x8410) 
(defconstant +fragment-light5-sgix+ #x8411) 
(defconstant +fragment-light6-sgix+ #x8412) 
(defconstant +fragment-light7-sgix+ #x8413) 
(defconstant +framezoom-sgix+ #x818B) 
(defconstant +interlace-sgix+ #x8094) 
(defconstant +ir-instrument1-sgix+ #x817F) 
(defconstant +pixel-tex-gen-sgix+ #x8139) 
(defconstant +pixel-texture-sgis+ #x8353) 
(defconstant +reference-plane-sgix+ #x817D) 
(defconstant +sprite-sgix+ #x8148) 
;; color_table_sgi already defined
;; post_convolution_color_table_sgi already defined
;; post_color_matrix_color_table_sgi already defined
;; texture_color_table_sgi already defined

;;;; Enumerations: ErrorCode

(defconstant +no-error+ #x0) 
(defconstant +invalid-enum+ #x500) 
(defconstant +invalid-value+ #x501) 
(defconstant +invalid-operation+ #x502) 
(defconstant +stack-overflow+ #x503) 
(defconstant +stack-underflow+ #x504) 
(defconstant +out-of-memory+ #x505) 
(defconstant +table-too-large-ext+ #x8031) 
(defconstant +texture-too-large-ext+ #x8065) 

;;;; Enumerations: FeedbackType

(defconstant +2d+ #x600) 
(defconstant +3d+ #x601) 
(defconstant +3d-color+ #x602) 
(defconstant +3d-color-texture+ #x603) 
(defconstant +4d-color-texture+ #x604) 

;;;; Enumerations: FeedBackToken

(defconstant +pass-through-token+ #x700) 
(defconstant +point-token+ #x701) 
(defconstant +line-token+ #x702) 
(defconstant +polygon-token+ #x703) 
(defconstant +bitmap-token+ #x704) 
(defconstant +draw-pixel-token+ #x705) 
(defconstant +copy-pixel-token+ #x706) 
(defconstant +line-reset-token+ #x707) 

;;;; Enumerations: FfdMaskSGIX

(defconstant +texture-deformation-bit-sgix+ #x1) 
(defconstant +geometry-deformation-bit-sgix+ #x2) 

;;;; Enumerations: FfdTargetSGIX

(defconstant +geometry-deformation-sgix+ #x8194) 
(defconstant +texture-deformation-sgix+ #x8195) 

;;;; Enumerations: FogMode

(defconstant +linear+ #x2601) 
(defconstant +exp+ #x800) 
(defconstant +exp2+ #x801) 
(defconstant +fog-func-sgis+ #x812A) 

;;;; Enumerations: FogParameter

(defconstant +fog-color+ #xB66) 
(defconstant +fog-density+ #xB62) 
(defconstant +fog-end+ #xB64) 
(defconstant +fog-index+ #xB61) 
(defconstant +fog-mode+ #xB65) 
(defconstant +fog-start+ #xB63) 
(defconstant +fog-offset-value-sgix+ #x8199) 

;;;; Enumerations: FragmentLightModelParameterSGIX

(defconstant +fragment-light-model-local-viewer-sgix+ #x8408) 
(defconstant +fragment-light-model-two-side-sgix+ #x8409) 
(defconstant +fragment-light-model-ambient-sgix+ #x840A) 
(defconstant +fragment-light-model-normal-interpolation-sgix+ #x840B) 

;;;; Enumerations: FrontFaceDirection

(defconstant +cw+ #x900) 
(defconstant +ccw+ #x901) 

;;;; Enumerations: GetColorTableParameterPNameSGI
;; color_table_scale_sgi already defined
;; color_table_bias_sgi already defined
(defconstant +color-table-format-sgi+ #x80D8) 
(defconstant +color-table-width-sgi+ #x80D9) 
(defconstant +color-table-red-size-sgi+ #x80DA) 
(defconstant +color-table-green-size-sgi+ #x80DB) 
(defconstant +color-table-blue-size-sgi+ #x80DC) 
(defconstant +color-table-alpha-size-sgi+ #x80DD) 
(defconstant +color-table-luminance-size-sgi+ #x80DE) 
(defconstant +color-table-intensity-size-sgi+ #x80DF) 

;;;; Enumerations: GetConvolutionParameter
;; convolution_border_mode_ext already defined
;; convolution_filter_scale_ext already defined
;; convolution_filter_bias_ext already defined
(defconstant +convolution-format-ext+ #x8017) 
(defconstant +convolution-width-ext+ #x8018) 
(defconstant +convolution-height-ext+ #x8019) 
(defconstant +max-convolution-width-ext+ #x801A) 
(defconstant +max-convolution-height-ext+ #x801B) 

;;;; Enumerations: GetHistogramParameterPNameEXT

(defconstant +histogram-width-ext+ #x8026) 
(defconstant +histogram-format-ext+ #x8027) 
(defconstant +histogram-red-size-ext+ #x8028) 
(defconstant +histogram-green-size-ext+ #x8029) 
(defconstant +histogram-blue-size-ext+ #x802A) 
(defconstant +histogram-alpha-size-ext+ #x802B) 
(defconstant +histogram-luminance-size-ext+ #x802C) 
(defconstant +histogram-sink-ext+ #x802D) 

;;;; Enumerations: GetMapQuery

(defconstant +coeff+ #xA00) 
(defconstant +order+ #xA01) 
(defconstant +domain+ #xA02) 

;;;; Enumerations: GetMinmaxParameterPNameEXT

(defconstant +minmax-format-ext+ #x802F) 
(defconstant +minmax-sink-ext+ #x8030) 

;;;; Enumerations: GetPixelMap

(defconstant +pixel-map-i-to-i+ #xC70) 
(defconstant +pixel-map-s-to-s+ #xC71) 
(defconstant +pixel-map-i-to-r+ #xC72) 
(defconstant +pixel-map-i-to-g+ #xC73) 
(defconstant +pixel-map-i-to-b+ #xC74) 
(defconstant +pixel-map-i-to-a+ #xC75) 
(defconstant +pixel-map-r-to-r+ #xC76) 
(defconstant +pixel-map-g-to-g+ #xC77) 
(defconstant +pixel-map-b-to-b+ #xC78) 
(defconstant +pixel-map-a-to-a+ #xC79) 

;;;; Enumerations: GetPointervPName

(defconstant +vertex-array-pointer+ #x808E) 
(defconstant +normal-array-pointer+ #x808F) 
(defconstant +color-array-pointer+ #x8090) 
(defconstant +index-array-pointer+ #x8091) 
(defconstant +texture-coord-array-pointer+ #x8092) 
(defconstant +edge-flag-array-pointer+ #x8093) 
(defconstant +feedback-buffer-pointer+ #xDF0) 
(defconstant +selection-buffer-pointer+ #xDF3) 
(defconstant +instrument-buffer-pointer-sgix+ #x8180) 

;;;; Enumerations: GetPName

(defconstant +current-color+ #xB00) 
(defconstant +current-index+ #xB01) 
(defconstant +current-normal+ #xB02) 
(defconstant +current-texture-coords+ #xB03) 
(defconstant +current-raster-color+ #xB04) 
(defconstant +current-raster-index+ #xB05) 
(defconstant +current-raster-texture-coords+ #xB06) 
(defconstant +current-raster-position+ #xB07) 
(defconstant +current-raster-position-valid+ #xB08) 
(defconstant +current-raster-distance+ #xB09) 
;; point_smooth already defined
(defconstant +point-size+ #xB11) 
(defconstant +point-size-range+ #xB12) 
(defconstant +point-size-granularity+ #xB13) 
;; line_smooth already defined
(defconstant +line-width+ #xB21) 
(defconstant +line-width-range+ #xB22) 
(defconstant +line-width-granularity+ #xB23) 
;; line_stipple already defined
(defconstant +line-stipple-pattern+ #xB25) 
(defconstant +line-stipple-repeat+ #xB26) 
(defconstant +smooth-point-size-range+ #xB12) 
(defconstant +smooth-point-size-granularity+ #xB13) 
(defconstant +smooth-line-width-range+ #xB22) 
(defconstant +smooth-line-width-granularity+ #xB23) 
(defconstant +aliased-point-size-range+ #x846D) 
(defconstant +aliased-line-width-range+ #x846E) 
(defconstant +list-mode+ #xB30) 
(defconstant +max-list-nesting+ #xB31) 
(defconstant +list-base+ #xB32) 
(defconstant +list-index+ #xB33) 
(defconstant +polygon-mode+ #xB40) 
;; polygon_smooth already defined
;; polygon_stipple already defined
(defconstant +edge-flag+ #xB43) 
;; cull_face already defined
(defconstant +cull-face-mode+ #xB45) 
(defconstant +front-face+ #xB46) 
;; lighting already defined
(defconstant +light-model-local-viewer+ #xB51) 
(defconstant +light-model-two-side+ #xB52) 
(defconstant +light-model-ambient+ #xB53) 
(defconstant +shade-model+ #xB54) 
(defconstant +color-material-face+ #xB55) 
(defconstant +color-material-parameter+ #xB56) 
;; color_material already defined
;; fog already defined
;; fog_index already defined
;; fog_density already defined
;; fog_start already defined
;; fog_end already defined
;; fog_mode already defined
;; fog_color already defined
(defconstant +depth-range+ #xB70) 
;; depth_test already defined
(defconstant +depth-writemask+ #xB72) 
(defconstant +depth-clear-value+ #xB73) 
(defconstant +depth-func+ #xB74) 
(defconstant +accum-clear-value+ #xB80) 
;; stencil_test already defined
(defconstant +stencil-clear-value+ #xB91) 
(defconstant +stencil-func+ #xB92) 
(defconstant +stencil-value-mask+ #xB93) 
(defconstant +stencil-fail+ #xB94) 
(defconstant +stencil-pass-depth-fail+ #xB95) 
(defconstant +stencil-pass-depth-pass+ #xB96) 
(defconstant +stencil-ref+ #xB97) 
(defconstant +stencil-writemask+ #xB98) 
(defconstant +matrix-mode+ #xBA0) 
;; normalize already defined
(defconstant +viewport+ #xBA2) 
(defconstant +modelview-stack-depth+ #xBA3) 
(defconstant +projection-stack-depth+ #xBA4) 
(defconstant +texture-stack-depth+ #xBA5) 
(defconstant +modelview-matrix+ #xBA6) 
(defconstant +projection-matrix+ #xBA7) 
(defconstant +texture-matrix+ #xBA8) 
(defconstant +attrib-stack-depth+ #xBB0) 
(defconstant +client-attrib-stack-depth+ #xBB1) 
;; alpha_test already defined
(defconstant +alpha-test-func+ #xBC1) 
(defconstant +alpha-test-ref+ #xBC2) 
;; dither already defined
(defconstant +blend-dst+ #xBE0) 
(defconstant +blend-src+ #xBE1) 
;; blend already defined
(defconstant +logic-op-mode+ #xBF0) 
;; index_logic_op already defined
;; logic_op already defined
;; color_logic_op already defined
(defconstant +aux-buffers+ #xC00) 
(defconstant +draw-buffer+ #xC01) 
(defconstant +read-buffer+ #xC02) 
(defconstant +scissor-box+ #xC10) 
;; scissor_test already defined
(defconstant +index-clear-value+ #xC20) 
(defconstant +index-writemask+ #xC21) 
(defconstant +color-clear-value+ #xC22) 
(defconstant +color-writemask+ #xC23) 
(defconstant +index-mode+ #xC30) 
(defconstant +rgba-mode+ #xC31) 
(defconstant +doublebuffer+ #xC32) 
(defconstant +stereo+ #xC33) 
(defconstant +render-mode+ #xC40) 
(defconstant +perspective-correction-hint+ #xC50) 
(defconstant +point-smooth-hint+ #xC51) 
(defconstant +line-smooth-hint+ #xC52) 
(defconstant +polygon-smooth-hint+ #xC53) 
(defconstant +fog-hint+ #xC54) 
;; texture_gen_s already defined
;; texture_gen_t already defined
;; texture_gen_r already defined
;; texture_gen_q already defined
(defconstant +pixel-map-i-to-i-size+ #xCB0) 
(defconstant +pixel-map-s-to-s-size+ #xCB1) 
(defconstant +pixel-map-i-to-r-size+ #xCB2) 
(defconstant +pixel-map-i-to-g-size+ #xCB3) 
(defconstant +pixel-map-i-to-b-size+ #xCB4) 
(defconstant +pixel-map-i-to-a-size+ #xCB5) 
(defconstant +pixel-map-r-to-r-size+ #xCB6) 
(defconstant +pixel-map-g-to-g-size+ #xCB7) 
(defconstant +pixel-map-b-to-b-size+ #xCB8) 
(defconstant +pixel-map-a-to-a-size+ #xCB9) 
(defconstant +unpack-swap-bytes+ #xCF0) 
(defconstant +unpack-lsb-first+ #xCF1) 
(defconstant +unpack-row-length+ #xCF2) 
(defconstant +unpack-skip-rows+ #xCF3) 
(defconstant +unpack-skip-pixels+ #xCF4) 
(defconstant +unpack-alignment+ #xCF5) 
(defconstant +pack-swap-bytes+ #xD00) 
(defconstant +pack-lsb-first+ #xD01) 
(defconstant +pack-row-length+ #xD02) 
(defconstant +pack-skip-rows+ #xD03) 
(defconstant +pack-skip-pixels+ #xD04) 
(defconstant +pack-alignment+ #xD05) 
(defconstant +map-color+ #xD10) 
(defconstant +map-stencil+ #xD11) 
(defconstant +index-shift+ #xD12) 
(defconstant +index-offset+ #xD13) 
(defconstant +red-scale+ #xD14) 
(defconstant +red-bias+ #xD15) 
(defconstant +zoom-x+ #xD16) 
(defconstant +zoom-y+ #xD17) 
(defconstant +green-scale+ #xD18) 
(defconstant +green-bias+ #xD19) 
(defconstant +blue-scale+ #xD1A) 
(defconstant +blue-bias+ #xD1B) 
(defconstant +alpha-scale+ #xD1C) 
(defconstant +alpha-bias+ #xD1D) 
(defconstant +depth-scale+ #xD1E) 
(defconstant +depth-bias+ #xD1F) 
(defconstant +max-eval-order+ #xD30) 
(defconstant +max-lights+ #xD31) 
(defconstant +max-clip-planes+ #xD32) 
(defconstant +max-texture-size+ #xD33) 
(defconstant +max-pixel-map-table+ #xD34) 
(defconstant +max-attrib-stack-depth+ #xD35) 
(defconstant +max-modelview-stack-depth+ #xD36) 
(defconstant +max-name-stack-depth+ #xD37) 
(defconstant +max-projection-stack-depth+ #xD38) 
(defconstant +max-texture-stack-depth+ #xD39) 
(defconstant +max-viewport-dims+ #xD3A) 
(defconstant +max-client-attrib-stack-depth+ #xD3B) 
(defconstant +subpixel-bits+ #xD50) 
(defconstant +index-bits+ #xD51) 
(defconstant +red-bits+ #xD52) 
(defconstant +green-bits+ #xD53) 
(defconstant +blue-bits+ #xD54) 
(defconstant +alpha-bits+ #xD55) 
(defconstant +depth-bits+ #xD56) 
(defconstant +stencil-bits+ #xD57) 
(defconstant +accum-red-bits+ #xD58) 
(defconstant +accum-green-bits+ #xD59) 
(defconstant +accum-blue-bits+ #xD5A) 
(defconstant +accum-alpha-bits+ #xD5B) 
(defconstant +name-stack-depth+ #xD70) 
;; auto_normal already defined
;; map1_color_4 already defined
;; map1_index already defined
;; map1_normal already defined
;; map1_texture_coord_1 already defined
;; map1_texture_coord_2 already defined
;; map1_texture_coord_3 already defined
;; map1_texture_coord_4 already defined
;; map1_vertex_3 already defined
;; map1_vertex_4 already defined
;; map2_color_4 already defined
;; map2_index already defined
;; map2_normal already defined
;; map2_texture_coord_1 already defined
;; map2_texture_coord_2 already defined
;; map2_texture_coord_3 already defined
;; map2_texture_coord_4 already defined
;; map2_vertex_3 already defined
;; map2_vertex_4 already defined
(defconstant +map1-grid-domain+ #xDD0) 
(defconstant +map1-grid-segments+ #xDD1) 
(defconstant +map2-grid-domain+ #xDD2) 
(defconstant +map2-grid-segments+ #xDD3) 
;; texture_1d already defined
;; texture_2d already defined
(defconstant +feedback-buffer-size+ #xDF1) 
(defconstant +feedback-buffer-type+ #xDF2) 
(defconstant +selection-buffer-size+ #xDF4) 
(defconstant +polygon-offset-units+ #x2A00) 
;; polygon_offset_point already defined
;; polygon_offset_line already defined
;; polygon_offset_fill already defined
(defconstant +polygon-offset-factor+ #x8038) 
(defconstant +texture-binding-1d+ #x8068) 
(defconstant +texture-binding-2d+ #x8069) 
(defconstant +texture-binding-3d+ #x806A) 
;; vertex_array already defined
;; normal_array already defined
;; color_array already defined
;; index_array already defined
;; texture_coord_array already defined
;; edge_flag_array already defined
(defconstant +vertex-array-size+ #x807A) 
(defconstant +vertex-array-type+ #x807B) 
(defconstant +vertex-array-stride+ #x807C) 
(defconstant +normal-array-type+ #x807E) 
(defconstant +normal-array-stride+ #x807F) 
(defconstant +color-array-size+ #x8081) 
(defconstant +color-array-type+ #x8082) 
(defconstant +color-array-stride+ #x8083) 
(defconstant +index-array-type+ #x8085) 
(defconstant +index-array-stride+ #x8086) 
(defconstant +texture-coord-array-size+ #x8088) 
(defconstant +texture-coord-array-type+ #x8089) 
(defconstant +texture-coord-array-stride+ #x808A) 
(defconstant +edge-flag-array-stride+ #x808C) 
;; clip_plane0 already defined
;; clip_plane1 already defined
;; clip_plane2 already defined
;; clip_plane3 already defined
;; clip_plane4 already defined
;; clip_plane5 already defined
;; light0 already defined
;; light1 already defined
;; light2 already defined
;; light3 already defined
;; light4 already defined
;; light5 already defined
;; light6 already defined
;; light7 already defined
(defconstant +light-model-color-control+ #x81F8) 
(defconstant +blend-color-ext+ #x8005) 
(defconstant +blend-equation-ext+ #x8009) 
(defconstant +pack-cmyk-hint-ext+ #x800E) 
(defconstant +unpack-cmyk-hint-ext+ #x800F) 
;; convolution_1d_ext already defined
;; convolution_2d_ext already defined
;; separable_2d_ext already defined
(defconstant +post-convolution-red-scale-ext+ #x801C) 
(defconstant +post-convolution-green-scale-ext+ #x801D) 
(defconstant +post-convolution-blue-scale-ext+ #x801E) 
(defconstant +post-convolution-alpha-scale-ext+ #x801F) 
(defconstant +post-convolution-red-bias-ext+ #x8020) 
(defconstant +post-convolution-green-bias-ext+ #x8021) 
(defconstant +post-convolution-blue-bias-ext+ #x8022) 
(defconstant +post-convolution-alpha-bias-ext+ #x8023) 
;; histogram_ext already defined
;; minmax_ext already defined
(defconstant +polygon-offset-bias-ext+ #x8039) 
;; rescale_normal_ext already defined
;; shared_texture_palette_ext already defined
(defconstant +texture-3d-binding-ext+ #x806A) 
(defconstant +pack-skip-images-ext+ #x806B) 
(defconstant +pack-image-height-ext+ #x806C) 
(defconstant +unpack-skip-images-ext+ #x806D) 
(defconstant +unpack-image-height-ext+ #x806E) 
;; texture_3d_ext already defined
(defconstant +max-3d-texture-size-ext+ #x8073) 
(defconstant +vertex-array-count-ext+ #x807D) 
(defconstant +normal-array-count-ext+ #x8080) 
(defconstant +color-array-count-ext+ #x8084) 
(defconstant +index-array-count-ext+ #x8087) 
(defconstant +texture-coord-array-count-ext+ #x808B) 
(defconstant +edge-flag-array-count-ext+ #x808D) 
(defconstant +detail-texture-2d-binding-sgis+ #x8096) 
(defconstant +fog-func-points-sgis+ #x812B) 
(defconstant +max-fog-func-points-sgis+ #x812C) 
(defconstant +generate-mipmap-hint-sgis+ #x8192) 
;; multisample_sgis already defined
;; sample_alpha_to_mask_sgis already defined
;; sample_alpha_to_one_sgis already defined
;; sample_mask_sgis already defined
(defconstant +sample-buffers-sgis+ #x80A8) 
(defconstant +samples-sgis+ #x80A9) 
(defconstant +sample-mask-value-sgis+ #x80AA) 
(defconstant +sample-mask-invert-sgis+ #x80AB) 
(defconstant +sample-pattern-sgis+ #x80AC) 
;; pixel_texture_sgis already defined
(defconstant +point-size-min-sgis+ #x8126) 
(defconstant +point-size-max-sgis+ #x8127) 
(defconstant +point-fade-threshold-size-sgis+ #x8128) 
(defconstant +distance-attenuation-sgis+ #x8129) 
(defconstant +pack-skip-volumes-sgis+ #x8130) 
(defconstant +pack-image-depth-sgis+ #x8131) 
(defconstant +unpack-skip-volumes-sgis+ #x8132) 
(defconstant +unpack-image-depth-sgis+ #x8133) 
;; texture_4d_sgis already defined
(defconstant +max-4d-texture-size-sgis+ #x8138) 
(defconstant +texture-4d-binding-sgis+ #x814F) 
(defconstant +async-marker-sgix+ #x8329) 
;; async_histogram_sgix already defined
(defconstant +max-async-histogram-sgix+ #x832D) 
;; async_tex_image_sgix already defined
;; async_draw_pixels_sgix already defined
;; async_read_pixels_sgix already defined
(defconstant +max-async-tex-image-sgix+ #x835F) 
(defconstant +max-async-draw-pixels-sgix+ #x8360) 
(defconstant +max-async-read-pixels-sgix+ #x8361) 
;; calligraphic_fragment_sgix already defined
(defconstant +max-clipmap-virtual-depth-sgix+ #x8178) 
(defconstant +max-clipmap-depth-sgix+ #x8177) 
(defconstant +convolution-hint-sgix+ #x8316) 
;; fog_offset_sgix already defined
;; fog_offset_value_sgix already defined
;; fragment_lighting_sgix already defined
;; fragment_color_material_sgix already defined
(defconstant +fragment-color-material-face-sgix+ #x8402) 
(defconstant +fragment-color-material-parameter-sgix+ #x8403) 
(defconstant +max-fragment-lights-sgix+ #x8404) 
(defconstant +max-active-lights-sgix+ #x8405) 
(defconstant +light-env-mode-sgix+ #x8407) 
;; fragment_light_model_local_viewer_sgix already defined
;; fragment_light_model_two_side_sgix already defined
;; fragment_light_model_ambient_sgix already defined
;; fragment_light_model_normal_interpolation_sgix already defined
;; fragment_light0_sgix already defined
;; framezoom_sgix already defined
(defconstant +framezoom-factor-sgix+ #x818C) 
(defconstant +max-framezoom-factor-sgix+ #x818D) 
(defconstant +instrument-measurements-sgix+ #x8181) 
;; interlace_sgix already defined
;; ir_instrument1_sgix already defined
;; pixel_tex_gen_sgix already defined
(defconstant +pixel-tex-gen-mode-sgix+ #x832B) 
(defconstant +pixel-tile-best-alignment-sgix+ #x813E) 
(defconstant +pixel-tile-cache-increment-sgix+ #x813F) 
(defconstant +pixel-tile-width-sgix+ #x8140) 
(defconstant +pixel-tile-height-sgix+ #x8141) 
(defconstant +pixel-tile-grid-width-sgix+ #x8142) 
(defconstant +pixel-tile-grid-height-sgix+ #x8143) 
(defconstant +pixel-tile-grid-depth-sgix+ #x8144) 
(defconstant +pixel-tile-cache-size-sgix+ #x8145) 
(defconstant +deformations-mask-sgix+ #x8196) 
(defconstant +reference-plane-equation-sgix+ #x817E) 
;; reference_plane_sgix already defined
;; sprite_sgix already defined
(defconstant +sprite-mode-sgix+ #x8149) 
(defconstant +sprite-axis-sgix+ #x814A) 
(defconstant +sprite-translation-sgix+ #x814B) 
(defconstant +pack-subsample-rate-sgix+ #x85A0) 
(defconstant +unpack-subsample-rate-sgix+ #x85A1) 
(defconstant +pack-resample-sgix+ #x842C) 
(defconstant +unpack-resample-sgix+ #x842D) 
(defconstant +post-texture-filter-bias-range-sgix+ #x817B) 
(defconstant +post-texture-filter-scale-range-sgix+ #x817C) 
(defconstant +vertex-preclip-sgix+ #x83EE) 
(defconstant +vertex-preclip-hint-sgix+ #x83EF) 
(defconstant +color-matrix-sgi+ #x80B1) 
(defconstant +color-matrix-stack-depth-sgi+ #x80B2) 
(defconstant +max-color-matrix-stack-depth-sgi+ #x80B3) 
(defconstant +post-color-matrix-red-scale-sgi+ #x80B4) 
(defconstant +post-color-matrix-green-scale-sgi+ #x80B5) 
(defconstant +post-color-matrix-blue-scale-sgi+ #x80B6) 
(defconstant +post-color-matrix-alpha-scale-sgi+ #x80B7) 
(defconstant +post-color-matrix-red-bias-sgi+ #x80B8) 
(defconstant +post-color-matrix-green-bias-sgi+ #x80B9) 
(defconstant +post-color-matrix-blue-bias-sgi+ #x80BA) 
(defconstant +post-color-matrix-alpha-bias-sgi+ #x80BB) 
;; color_table_sgi already defined
;; post_convolution_color_table_sgi already defined
;; post_color_matrix_color_table_sgi already defined
;; texture_color_table_sgi already defined

;;;; Enumerations: GetTextureParameter

(defconstant +texture-mag-filter+ #x2800) 
(defconstant +texture-min-filter+ #x2801) 
(defconstant +texture-wrap-s+ #x2802) 
(defconstant +texture-wrap-t+ #x2803) 
(defconstant +texture-width+ #x1000) 
(defconstant +texture-height+ #x1001) 
(defconstant +texture-internal-format+ #x1003) 
(defconstant +texture-components+ #x1003) 
(defconstant +texture-border-color+ #x1004) 
(defconstant +texture-border+ #x1005) 
(defconstant +texture-red-size+ #x805C) 
(defconstant +texture-green-size+ #x805D) 
(defconstant +texture-blue-size+ #x805E) 
(defconstant +texture-alpha-size+ #x805F) 
(defconstant +texture-luminance-size+ #x8060) 
(defconstant +texture-intensity-size+ #x8061) 
(defconstant +texture-priority+ #x8066) 
(defconstant +texture-resident+ #x8067) 
(defconstant +texture-depth-ext+ #x8071) 
(defconstant +texture-wrap-r-ext+ #x8072) 
(defconstant +detail-texture-level-sgis+ #x809A) 
(defconstant +detail-texture-mode-sgis+ #x809B) 
(defconstant +detail-texture-func-points-sgis+ #x809C) 
(defconstant +generate-mipmap-sgis+ #x8191) 
(defconstant +sharpen-texture-func-points-sgis+ #x80B0) 
(defconstant +texture-filter4-size-sgis+ #x8147) 
(defconstant +texture-min-lod-sgis+ #x813A) 
(defconstant +texture-max-lod-sgis+ #x813B) 
(defconstant +texture-base-level-sgis+ #x813C) 
(defconstant +texture-max-level-sgis+ #x813D) 
(defconstant +dual-texture-select-sgis+ #x8124) 
(defconstant +quad-texture-select-sgis+ #x8125) 
(defconstant +texture-4dsize-sgis+ #x8136) 
(defconstant +texture-wrap-q-sgis+ #x8137) 
(defconstant +texture-clipmap-center-sgix+ #x8171) 
(defconstant +texture-clipmap-frame-sgix+ #x8172) 
(defconstant +texture-clipmap-offset-sgix+ #x8173) 
(defconstant +texture-clipmap-virtual-depth-sgix+ #x8174) 
(defconstant +texture-clipmap-lod-offset-sgix+ #x8175) 
(defconstant +texture-clipmap-depth-sgix+ #x8176) 
(defconstant +texture-compare-sgix+ #x819A) 
(defconstant +texture-compare-operator-sgix+ #x819B) 
(defconstant +texture-lequal-r-sgix+ #x819C) 
(defconstant +texture-gequal-r-sgix+ #x819D) 
(defconstant +shadow-ambient-sgix+ #x80BF) 
(defconstant +texture-max-clamp-s-sgix+ #x8369) 
(defconstant +texture-max-clamp-t-sgix+ #x836A) 
(defconstant +texture-max-clamp-r-sgix+ #x836B) 
(defconstant +texture-lod-bias-s-sgix+ #x818E) 
(defconstant +texture-lod-bias-t-sgix+ #x818F) 
(defconstant +texture-lod-bias-r-sgix+ #x8190) 
(defconstant +post-texture-filter-bias-sgix+ #x8179) 
(defconstant +post-texture-filter-scale-sgix+ #x817A) 

;;;; Enumerations: HintMode

(defconstant +dont-care+ #x1100) 
(defconstant +fastest+ #x1101) 
(defconstant +nicest+ #x1102) 

;;;; Enumerations: HintTarget
;; perspective_correction_hint already defined
;; point_smooth_hint already defined
;; line_smooth_hint already defined
;; polygon_smooth_hint already defined
;; fog_hint already defined
;; pack_cmyk_hint_ext already defined
;; unpack_cmyk_hint_ext already defined
;; generate_mipmap_hint_sgis already defined
;; convolution_hint_sgix already defined
(defconstant +texture-multi-buffer-hint-sgix+ #x812E) 
;; vertex_preclip_hint_sgix already defined

;;;; Enumerations: HistogramTargetEXT
;; histogram_ext already defined
(defconstant +proxy-histogram-ext+ #x8025) 

;;;; Enumerations: IndexPointerType
;; short already defined
;; int already defined
;; float already defined
;; double already defined

;;;; Enumerations: LightEnvModeSGIX

(defconstant +replace+ #x1E01) 
(defconstant +modulate+ #x2100) 
;; add already defined

;;;; Enumerations: LightEnvParameterSGIX
;; light_env_mode_sgix already defined

;;;; Enumerations: LightModelColorControl

(defconstant +single-color+ #x81F9) 
(defconstant +separate-specular-color+ #x81FA) 

;;;; Enumerations: LightModelParameter
;; light_model_ambient already defined
;; light_model_local_viewer already defined
;; light_model_two_side already defined
;; light_model_color_control already defined

;;;; Enumerations: LightParameter
;; ambient already defined
;; diffuse already defined
;; specular already defined
(defconstant +position+ #x1203) 
(defconstant +spot-direction+ #x1204) 
(defconstant +spot-exponent+ #x1205) 
(defconstant +spot-cutoff+ #x1206) 
(defconstant +constant-attenuation+ #x1207) 
(defconstant +linear-attenuation+ #x1208) 
(defconstant +quadratic-attenuation+ #x1209) 

;;;; Enumerations: ListMode

(defconstant +compile+ #x1300) 
(defconstant +compile-and-execute+ #x1301) 

;;;; Enumerations: DataType
;; byte already defined
;; unsigned_byte already defined
;; short already defined
;; unsigned_short already defined
;; int already defined
;; unsigned_int already defined
;; float already defined
(defconstant +2-bytes+ #x1407) 
(defconstant +3-bytes+ #x1408) 
(defconstant +4-bytes+ #x1409) 
;; double already defined
(defconstant +double-ext+ #x140A) 

;;;; Enumerations: ListNameType
;; byte already defined
;; unsigned_byte already defined
;; short already defined
;; unsigned_short already defined
;; int already defined
;; unsigned_int already defined
;; float already defined
;; 2_bytes already defined
;; 3_bytes already defined
;; 4_bytes already defined

;;;; Enumerations: ListParameterName

(defconstant +list-priority-sgix+ #x8182) 

;;;; Enumerations: LogicOp

(defconstant +clear+ #x1500) 
(defconstant +and+ #x1501) 
(defconstant +and-reverse+ #x1502) 
(defconstant +copy+ #x1503) 
(defconstant +and-inverted+ #x1504) 
(defconstant +noop+ #x1505) 
(defconstant +xor+ #x1506) 
(defconstant +or+ #x1507) 
(defconstant +nor+ #x1508) 
(defconstant +equiv+ #x1509) 
(defconstant +invert+ #x150A) 
(defconstant +or-reverse+ #x150B) 
(defconstant +copy-inverted+ #x150C) 
(defconstant +or-inverted+ #x150D) 
(defconstant +nand+ #x150E) 
(defconstant +set+ #x150F) 

;;;; Enumerations: MapTarget
;; map1_color_4 already defined
;; map1_index already defined
;; map1_normal already defined
;; map1_texture_coord_1 already defined
;; map1_texture_coord_2 already defined
;; map1_texture_coord_3 already defined
;; map1_texture_coord_4 already defined
;; map1_vertex_3 already defined
;; map1_vertex_4 already defined
;; map2_color_4 already defined
;; map2_index already defined
;; map2_normal already defined
;; map2_texture_coord_1 already defined
;; map2_texture_coord_2 already defined
;; map2_texture_coord_3 already defined
;; map2_texture_coord_4 already defined
;; map2_vertex_3 already defined
;; map2_vertex_4 already defined
;; geometry_deformation_sgix already defined
;; texture_deformation_sgix already defined

;;;; Enumerations: MaterialFace
;; front already defined
;; back already defined
;; front_and_back already defined

;;;; Enumerations: MaterialParameter
;; emission already defined
(defconstant +shininess+ #x1601) 
;; ambient_and_diffuse already defined
(defconstant +color-indexes+ #x1603) 
;; ambient already defined
;; diffuse already defined
;; specular already defined

;;;; Enumerations: MatrixMode

(defconstant +modelview+ #x1700) 
(defconstant +projection+ #x1701) 
(defconstant +texture+ #x1702) 

;;;; Enumerations: MeshMode1

(defconstant +point+ #x1B00) 
(defconstant +line+ #x1B01) 

;;;; Enumerations: MeshMode2
;; point already defined
;; line already defined
(defconstant +fill+ #x1B02) 

;;;; Enumerations: MinmaxTargetEXT
;; minmax_ext already defined

;;;; Enumerations: NormalPointerType
;; byte already defined
;; short already defined
;; int already defined
;; float already defined
;; double already defined

;;;; Enumerations: PixelCopyType

(defconstant +color+ #x1800) 
(defconstant +depth+ #x1801) 
(defconstant +stencil+ #x1802) 

;;;; Enumerations: PixelFormat

(defconstant +color-index+ #x1900) 
(defconstant +stencil-index+ #x1901) 
(defconstant +depth-component+ #x1902) 
(defconstant +red+ #x1903) 
(defconstant +green+ #x1904) 
(defconstant +blue+ #x1905) 
(defconstant +alpha+ #x1906) 
(defconstant +rgb+ #x1907) 
(defconstant +rgba+ #x1908) 
(defconstant +luminance+ #x1909) 
(defconstant +luminance-alpha+ #x190A) 
(defconstant +abgr-ext+ #x8000) 
(defconstant +cmyk-ext+ #x800C) 
(defconstant +cmyka-ext+ #x800D) 
(defconstant +r5-g6-b5-icc-sgix+ nil) 
(defconstant +r5-g6-b5-a8-icc-sgix+ nil) 
(defconstant +alpha16-icc-sgix+ nil) 
(defconstant +luminance16-icc-sgix+ nil) 
(defconstant +luminance16-alpha8-icc-sgix+ nil) 
(defconstant +ycrcb-422-sgix+ #x81BB) 
(defconstant +ycrcb-444-sgix+ #x81BC) 

;;;; Enumerations: PixelMap
;; pixel_map_i_to_i already defined
;; pixel_map_s_to_s already defined
;; pixel_map_i_to_r already defined
;; pixel_map_i_to_g already defined
;; pixel_map_i_to_b already defined
;; pixel_map_i_to_a already defined
;; pixel_map_r_to_r already defined
;; pixel_map_g_to_g already defined
;; pixel_map_b_to_b already defined
;; pixel_map_a_to_a already defined

;;;; Enumerations: PixelStoreParameter
;; unpack_swap_bytes already defined
;; unpack_lsb_first already defined
;; unpack_row_length already defined
;; unpack_skip_rows already defined
;; unpack_skip_pixels already defined
;; unpack_alignment already defined
;; pack_swap_bytes already defined
;; pack_lsb_first already defined
;; pack_row_length already defined
;; pack_skip_rows already defined
;; pack_skip_pixels already defined
;; pack_alignment already defined
;; pack_skip_images_ext already defined
;; pack_image_height_ext already defined
;; unpack_skip_images_ext already defined
;; unpack_image_height_ext already defined
;; pack_skip_volumes_sgis already defined
;; pack_image_depth_sgis already defined
;; unpack_skip_volumes_sgis already defined
;; unpack_image_depth_sgis already defined
;; pixel_tile_width_sgix already defined
;; pixel_tile_height_sgix already defined
;; pixel_tile_grid_width_sgix already defined
;; pixel_tile_grid_height_sgix already defined
;; pixel_tile_grid_depth_sgix already defined
;; pixel_tile_cache_size_sgix already defined
;; pack_subsample_rate_sgix already defined
;; unpack_subsample_rate_sgix already defined
;; pack_resample_sgix already defined
;; unpack_resample_sgix already defined

;;;; Enumerations: PixelStoreResampleMode

(defconstant +resample-replicate-sgix+ #x842E) 
(defconstant +resample-zero-fill-sgix+ #x842F) 
(defconstant +resample-decimate-sgix+ #x8430) 

;;;; Enumerations: PixelStoreSubsampleRate

(defconstant +pixel-subsample-4444-sgix+ #x85A2) 
(defconstant +pixel-subsample-2424-sgix+ #x85A3) 
(defconstant +pixel-subsample-4242-sgix+ #x85A4) 

;;;; Enumerations: PixelTexGenMode
;; none already defined
;; rgb already defined
;; rgba already defined
;; luminance already defined
;; luminance_alpha already defined
(defconstant +pixel-tex-gen-alpha-replace-sgix+ #x8187) 
(defconstant +pixel-tex-gen-alpha-no-replace-sgix+ #x8188) 
(defconstant +pixel-tex-gen-alpha-ms-sgix+ #x818A) 
(defconstant +pixel-tex-gen-alpha-ls-sgix+ #x8189) 

;;;; Enumerations: PixelTexGenParameterNameSGIS

(defconstant +pixel-fragment-rgb-source-sgis+ #x8354) 
(defconstant +pixel-fragment-alpha-source-sgis+ #x8355) 

;;;; Enumerations: PixelTransferParameter
;; map_color already defined
;; map_stencil already defined
;; index_shift already defined
;; index_offset already defined
;; red_scale already defined
;; red_bias already defined
;; green_scale already defined
;; green_bias already defined
;; blue_scale already defined
;; blue_bias already defined
;; alpha_scale already defined
;; alpha_bias already defined
;; depth_scale already defined
;; depth_bias already defined
;; post_convolution_red_scale_ext already defined
;; post_convolution_green_scale_ext already defined
;; post_convolution_blue_scale_ext already defined
;; post_convolution_alpha_scale_ext already defined
;; post_convolution_red_bias_ext already defined
;; post_convolution_green_bias_ext already defined
;; post_convolution_blue_bias_ext already defined
;; post_convolution_alpha_bias_ext already defined
;; post_color_matrix_red_scale_sgi already defined
;; post_color_matrix_green_scale_sgi already defined
;; post_color_matrix_blue_scale_sgi already defined
;; post_color_matrix_alpha_scale_sgi already defined
;; post_color_matrix_red_bias_sgi already defined
;; post_color_matrix_green_bias_sgi already defined
;; post_color_matrix_blue_bias_sgi already defined
;; post_color_matrix_alpha_bias_sgi already defined

;;;; Enumerations: PixelType

(defconstant +bitmap+ #x1A00) 
;; byte already defined
;; unsigned_byte already defined
;; short already defined
;; unsigned_short already defined
;; int already defined
;; unsigned_int already defined
;; float already defined
(defconstant +unsigned-byte-3-3-2-ext+ #x8032) 
(defconstant +unsigned-short-4-4-4-4-ext+ #x8033) 
(defconstant +unsigned-short-5-5-5-1-ext+ #x8034) 
(defconstant +unsigned-int-8-8-8-8-ext+ #x8035) 
(defconstant +unsigned-int-10-10-10-2-ext+ #x8036) 

;;;; Enumerations: PointParameterNameSGIS
;; point_size_min_sgis already defined
;; point_size_max_sgis already defined
;; point_fade_threshold_size_sgis already defined
;; distance_attenuation_sgis already defined

;;;; Enumerations: PolygonMode
;; point already defined
;; line already defined
;; fill already defined

;;;; Enumerations: ReadBufferMode
;; front_left already defined
;; front_right already defined
;; back_left already defined
;; back_right already defined
;; front already defined
;; back already defined
;; left already defined
;; right already defined
;; aux0 already defined
;; aux1 already defined
;; aux2 already defined
;; aux3 already defined

;;;; Enumerations: RenderingMode

(defconstant +render+ #x1C00) 
(defconstant +feedback+ #x1C01) 
(defconstant +select+ #x1C02) 

;;;; Enumerations: SamplePatternSGIS

(defconstant +1pass-sgis+ #x80A1) 
(defconstant +2pass-0-sgis+ #x80A2) 
(defconstant +2pass-1-sgis+ #x80A3) 
(defconstant +4pass-0-sgis+ #x80A4) 
(defconstant +4pass-1-sgis+ #x80A5) 
(defconstant +4pass-2-sgis+ #x80A6) 
(defconstant +4pass-3-sgis+ #x80A7) 

;;;; Enumerations: SeparableTargetEXT
;; separable_2d_ext already defined

;;;; Enumerations: ShadingModel

(defconstant +flat+ #x1D00) 
(defconstant +smooth+ #x1D01) 

;;;; Enumerations: StencilFunction
;; never already defined
;; less already defined
;; equal already defined
;; lequal already defined
;; greater already defined
;; notequal already defined
;; gequal already defined
;; always already defined

;;;; Enumerations: StencilOp
;; zero already defined
(defconstant +keep+ #x1E00) 
;; replace already defined
(defconstant +incr+ #x1E02) 
(defconstant +decr+ #x1E03) 
;; invert already defined

;;;; Enumerations: StringName

(defconstant +vendor+ #x1F00) 
(defconstant +renderer+ #x1F01) 
(defconstant +version+ #x1F02) 
(defconstant +extensions+ #x1F03) 

;;;; Enumerations: TexCoordPointerType
;; short already defined
;; int already defined
;; float already defined
;; double already defined

;;;; Enumerations: TextureCoordName

(defconstant +s+ #x2000) 
(defconstant +t+ #x2001) 
(defconstant +r+ #x2002) 
(defconstant +q+ #x2003) 

;;;; Enumerations: TextureEnvMode
;; modulate already defined
(defconstant +decal+ #x2101) 
;; blend already defined
(defconstant +replace-ext+ #x8062) 
;; add already defined
(defconstant +texture-env-bias-sgix+ #x80BE) 

;;;; Enumerations: TextureEnvParameter

(defconstant +texture-env-mode+ #x2200) 
(defconstant +texture-env-color+ #x2201) 

;;;; Enumerations: TextureEnvTarget

(defconstant +texture-env+ #x2300) 

;;;; Enumerations: TextureFilterFuncSGIS

(defconstant +filter4-sgis+ #x8146) 

;;;; Enumerations: TextureGenMode

(defconstant +eye-linear+ #x2400) 
(defconstant +object-linear+ #x2401) 
(defconstant +sphere-map+ #x2402) 
(defconstant +eye-distance-to-point-sgis+ #x81F0) 
(defconstant +object-distance-to-point-sgis+ #x81F1) 
(defconstant +eye-distance-to-line-sgis+ #x81F2) 
(defconstant +object-distance-to-line-sgis+ #x81F3) 

;;;; Enumerations: TextureGenParameter

(defconstant +texture-gen-mode+ #x2500) 
(defconstant +object-plane+ #x2501) 
(defconstant +eye-plane+ #x2502) 
(defconstant +eye-point-sgis+ #x81F4) 
(defconstant +object-point-sgis+ #x81F5) 
(defconstant +eye-line-sgis+ #x81F6) 
(defconstant +object-line-sgis+ #x81F7) 

;;;; Enumerations: TextureMagFilter

(defconstant +nearest+ #x2600) 
;; linear already defined
(defconstant +linear-detail-sgis+ #x8097) 
(defconstant +linear-detail-alpha-sgis+ #x8098) 
(defconstant +linear-detail-color-sgis+ #x8099) 
(defconstant +linear-sharpen-sgis+ #x80AD) 
(defconstant +linear-sharpen-alpha-sgis+ #x80AE) 
(defconstant +linear-sharpen-color-sgis+ #x80AF) 
;; filter4_sgis already defined
(defconstant +pixel-tex-gen-q-ceiling-sgix+ #x8184) 
(defconstant +pixel-tex-gen-q-round-sgix+ #x8185) 
(defconstant +pixel-tex-gen-q-floor-sgix+ #x8186) 

;;;; Enumerations: TextureMinFilter
;; nearest already defined
;; linear already defined
(defconstant +nearest-mipmap-nearest+ #x2700) 
(defconstant +linear-mipmap-nearest+ #x2701) 
(defconstant +nearest-mipmap-linear+ #x2702) 
(defconstant +linear-mipmap-linear+ #x2703) 
;; filter4_sgis already defined
(defconstant +linear-clipmap-linear-sgix+ #x8170) 
(defconstant +nearest-clipmap-nearest-sgix+ #x844D) 
(defconstant +nearest-clipmap-linear-sgix+ #x844E) 
(defconstant +linear-clipmap-nearest-sgix+ #x844F) 
;; pixel_tex_gen_q_ceiling_sgix already defined
;; pixel_tex_gen_q_round_sgix already defined
;; pixel_tex_gen_q_floor_sgix already defined

;;;; Enumerations: TextureParameterName
;; texture_mag_filter already defined
;; texture_min_filter already defined
;; texture_wrap_s already defined
;; texture_wrap_t already defined
;; texture_border_color already defined
;; texture_priority already defined
;; texture_wrap_r_ext already defined
;; detail_texture_level_sgis already defined
;; detail_texture_mode_sgis already defined
;; generate_mipmap_sgis already defined
;; dual_texture_select_sgis already defined
;; quad_texture_select_sgis already defined
;; texture_wrap_q_sgis already defined
;; texture_clipmap_center_sgix already defined
;; texture_clipmap_frame_sgix already defined
;; texture_clipmap_offset_sgix already defined
;; texture_clipmap_virtual_depth_sgix already defined
;; texture_clipmap_lod_offset_sgix already defined
;; texture_clipmap_depth_sgix already defined
;; texture_compare_sgix already defined
;; texture_compare_operator_sgix already defined
;; shadow_ambient_sgix already defined
;; texture_max_clamp_s_sgix already defined
;; texture_max_clamp_t_sgix already defined
;; texture_max_clamp_r_sgix already defined
;; texture_lod_bias_s_sgix already defined
;; texture_lod_bias_t_sgix already defined
;; texture_lod_bias_r_sgix already defined
;; post_texture_filter_bias_sgix already defined
;; post_texture_filter_scale_sgix already defined

;;;; Enumerations: TextureTarget
;; texture_1d already defined
;; texture_2d already defined
(defconstant +proxy-texture-1d+ #x8063) 
(defconstant +proxy-texture-2d+ #x8064) 
;; texture_3d_ext already defined
(defconstant +proxy-texture-3d-ext+ #x8070) 
(defconstant +detail-texture-2d-sgis+ #x8095) 
;; texture_4d_sgis already defined
(defconstant +proxy-texture-4d-sgis+ #x8135) 
;; texture_min_lod_sgis already defined
;; texture_max_lod_sgis already defined
;; texture_base_level_sgis already defined
;; texture_max_level_sgis already defined

;;;; Enumerations: TextureWrapMode

(defconstant +clamp+ #x2900) 
(defconstant +repeat+ #x2901) 
(defconstant +clamp-to-border-sgis+ #x812D) 
(defconstant +clamp-to-edge-sgis+ #x812F) 

;;;; Enumerations: PixelInternalFormat

(defconstant +r3-g3-b2+ #x2A10) 
(defconstant +alpha4+ #x803B) 
(defconstant +alpha8+ #x803C) 
(defconstant +alpha12+ #x803D) 
(defconstant +alpha16+ #x803E) 
(defconstant +luminance4+ #x803F) 
(defconstant +luminance8+ #x8040) 
(defconstant +luminance12+ #x8041) 
(defconstant +luminance16+ #x8042) 
(defconstant +luminance4-alpha4+ #x8043) 
(defconstant +luminance6-alpha2+ #x8044) 
(defconstant +luminance8-alpha8+ #x8045) 
(defconstant +luminance12-alpha4+ #x8046) 
(defconstant +luminance12-alpha12+ #x8047) 
(defconstant +luminance16-alpha16+ #x8048) 
(defconstant +intensity+ #x8049) 
(defconstant +intensity4+ #x804A) 
(defconstant +intensity8+ #x804B) 
(defconstant +intensity12+ #x804C) 
(defconstant +intensity16+ #x804D) 
(defconstant +rgb4+ #x804F) 
(defconstant +rgb5+ #x8050) 
(defconstant +rgb8+ #x8051) 
(defconstant +rgb10+ #x8052) 
(defconstant +rgb12+ #x8053) 
(defconstant +rgb16+ #x8054) 
(defconstant +rgba2+ #x8055) 
(defconstant +rgba4+ #x8056) 
(defconstant +rgb5-a1+ #x8057) 
(defconstant +rgba8+ #x8058) 
(defconstant +rgb10-a2+ #x8059) 
(defconstant +rgba12+ #x805A) 
(defconstant +rgba16+ #x805B) 
(defconstant +rgb2-ext+ #x804E) 
(defconstant +dual-alpha4-sgis+ #x8110) 
(defconstant +dual-alpha8-sgis+ #x8111) 
(defconstant +dual-alpha12-sgis+ #x8112) 
(defconstant +dual-alpha16-sgis+ #x8113) 
(defconstant +dual-luminance4-sgis+ #x8114) 
(defconstant +dual-luminance8-sgis+ #x8115) 
(defconstant +dual-luminance12-sgis+ #x8116) 
(defconstant +dual-luminance16-sgis+ #x8117) 
(defconstant +dual-intensity4-sgis+ #x8118) 
(defconstant +dual-intensity8-sgis+ #x8119) 
(defconstant +dual-intensity12-sgis+ #x811A) 
(defconstant +dual-intensity16-sgis+ #x811B) 
(defconstant +dual-luminance-alpha4-sgis+ #x811C) 
(defconstant +dual-luminance-alpha8-sgis+ #x811D) 
(defconstant +quad-alpha4-sgis+ #x811E) 
(defconstant +quad-alpha8-sgis+ #x811F) 
(defconstant +quad-luminance4-sgis+ #x8120) 
(defconstant +quad-luminance8-sgis+ #x8121) 
(defconstant +quad-intensity4-sgis+ #x8122) 
(defconstant +quad-intensity8-sgis+ #x8123) 
(defconstant +depth-component16-sgix+ #x81A5) 
(defconstant +depth-component24-sgix+ #x81A6) 
(defconstant +depth-component32-sgix+ #x81A7) 
(defconstant +rgb-icc-sgix+ nil) 
(defconstant +rgba-icc-sgix+ nil) 
(defconstant +alpha-icc-sgix+ nil) 
(defconstant +luminance-icc-sgix+ nil) 
(defconstant +intensity-icc-sgix+ nil) 
(defconstant +luminance-alpha-icc-sgix+ nil) 
;; r5_g6_b5_icc_sgix already defined
;; r5_g6_b5_a8_icc_sgix already defined
;; alpha16_icc_sgix already defined
;; luminance16_icc_sgix already defined
(defconstant +intensity16-icc-sgix+ nil) 
;; luminance16_alpha8_icc_sgix already defined

;;;; Enumerations: InterleavedArrayFormat

(defconstant +v2f+ #x2A20) 
(defconstant +v3f+ #x2A21) 
(defconstant +c4ub-v2f+ #x2A22) 
(defconstant +c4ub-v3f+ #x2A23) 
(defconstant +c3f-v3f+ #x2A24) 
(defconstant +n3f-v3f+ #x2A25) 
(defconstant +c4f-n3f-v3f+ #x2A26) 
(defconstant +t2f-v3f+ #x2A27) 
(defconstant +t4f-v4f+ #x2A28) 
(defconstant +t2f-c4ub-v3f+ #x2A29) 
(defconstant +t2f-c3f-v3f+ #x2A2A) 
(defconstant +t2f-n3f-v3f+ #x2A2B) 
(defconstant +t2f-c4f-n3f-v3f+ #x2A2C) 
(defconstant +t4f-c4f-n3f-v4f+ #x2A2D) 

;;;; Enumerations: VertexPointerType
;; short already defined
;; int already defined
;; float already defined
;; double already defined

;;;; Enumerations: ClipPlaneName
;; clip_plane0 already defined
;; clip_plane1 already defined
;; clip_plane2 already defined
;; clip_plane3 already defined
;; clip_plane4 already defined
;; clip_plane5 already defined

;;;; Enumerations: LightName
;; light0 already defined
;; light1 already defined
;; light2 already defined
;; light3 already defined
;; light4 already defined
;; light5 already defined
;; light6 already defined
;; light7 already defined
;; fragment_light0_sgix already defined
;; fragment_light1_sgix already defined
;; fragment_light2_sgix already defined
;; fragment_light3_sgix already defined
;; fragment_light4_sgix already defined
;; fragment_light5_sgix already defined
;; fragment_light6_sgix already defined
;; fragment_light7_sgix already defined

;;;; Enumerations: EXT_abgr
;; abgr_ext already defined

;;;; Enumerations: EXT_blend_subtract

(defconstant +func-subtract+ #x800A) 
;; func_subtract_ext already defined
(defconstant +func-reverse-subtract+ #x800B) 
;; func_reverse_subtract_ext already defined

;;;; Enumerations: EXT_cmyka
;; cmyk_ext already defined
;; cmyka_ext already defined
;; pack_cmyk_hint_ext already defined
;; unpack_cmyk_hint_ext already defined

;;;; Enumerations: EXT_packed_pixels

(defconstant +unsigned-byte-3-3-2+ #x8032) 
;; unsigned_byte_3_3_2_ext already defined
(defconstant +unsigned-short-4-4-4-4+ #x8033) 
;; unsigned_short_4_4_4_4_ext already defined
(defconstant +unsigned-short-5-5-5-1+ #x8034) 
;; unsigned_short_5_5_5_1_ext already defined
(defconstant +unsigned-int-8-8-8-8+ #x8035) 
;; unsigned_int_8_8_8_8_ext already defined
(defconstant +unsigned-int-10-10-10-2+ #x8036) 
;; unsigned_int_10_10_10_2_ext already defined
(defconstant +unsigned-byte-2-3-3-rev+ #x8362) 
(defconstant +unsigned-byte-2-3-3-rev-ext+ #x8362) 
(defconstant +unsigned-short-5-6-5+ #x8363) 
(defconstant +unsigned-short-5-6-5-ext+ #x8363) 
(defconstant +unsigned-short-5-6-5-rev+ #x8364) 
(defconstant +unsigned-short-5-6-5-rev-ext+ #x8364) 
(defconstant +unsigned-short-4-4-4-4-rev+ #x8365) 
(defconstant +unsigned-short-4-4-4-4-rev-ext+ #x8365) 
(defconstant +unsigned-short-1-5-5-5-rev+ #x8366) 
(defconstant +unsigned-short-1-5-5-5-rev-ext+ #x8366) 
(defconstant +unsigned-int-8-8-8-8-rev+ #x8367) 
(defconstant +unsigned-int-8-8-8-8-rev-ext+ #x8367) 
(defconstant +unsigned-int-2-10-10-10-rev+ #x8368) 
(defconstant +unsigned-int-2-10-10-10-rev-ext+ #x8368) 

;;;; Enumerations: EXT_rescale_normal

(defconstant +rescale-normal+ #x803A) 
;; rescale_normal_ext already defined

;;;; Enumerations: EXT_texture

(defconstant +alpha4-ext+ #x803B) 
(defconstant +alpha8-ext+ #x803C) 
(defconstant +alpha12-ext+ #x803D) 
(defconstant +alpha16-ext+ #x803E) 
(defconstant +luminance4-ext+ #x803F) 
(defconstant +luminance8-ext+ #x8040) 
(defconstant +luminance12-ext+ #x8041) 
(defconstant +luminance16-ext+ #x8042) 
(defconstant +luminance4-alpha4-ext+ #x8043) 
(defconstant +luminance6-alpha2-ext+ #x8044) 
(defconstant +luminance8-alpha8-ext+ #x8045) 
(defconstant +luminance12-alpha4-ext+ #x8046) 
(defconstant +luminance12-alpha12-ext+ #x8047) 
(defconstant +luminance16-alpha16-ext+ #x8048) 
(defconstant +intensity-ext+ #x8049) 
(defconstant +intensity4-ext+ #x804A) 
(defconstant +intensity8-ext+ #x804B) 
(defconstant +intensity12-ext+ #x804C) 
(defconstant +intensity16-ext+ #x804D) 
;; rgb2_ext already defined
(defconstant +rgb4-ext+ #x804F) 
(defconstant +rgb5-ext+ #x8050) 
(defconstant +rgb8-ext+ #x8051) 
(defconstant +rgb10-ext+ #x8052) 
(defconstant +rgb12-ext+ #x8053) 
(defconstant +rgb16-ext+ #x8054) 
(defconstant +rgba2-ext+ #x8055) 
(defconstant +rgba4-ext+ #x8056) 
(defconstant +rgb5-a1-ext+ #x8057) 
(defconstant +rgba8-ext+ #x8058) 
(defconstant +rgb10-a2-ext+ #x8059) 
(defconstant +rgba12-ext+ #x805A) 
(defconstant +rgba16-ext+ #x805B) 
(defconstant +texture-red-size-ext+ #x805C) 
(defconstant +texture-green-size-ext+ #x805D) 
(defconstant +texture-blue-size-ext+ #x805E) 
(defconstant +texture-alpha-size-ext+ #x805F) 
(defconstant +texture-luminance-size-ext+ #x8060) 
(defconstant +texture-intensity-size-ext+ #x8061) 
;; replace_ext already defined
(defconstant +proxy-texture-1d-ext+ #x8063) 
(defconstant +proxy-texture-2d-ext+ #x8064) 
;; texture_too_large_ext already defined

;;;; Enumerations: SGIX_interlace
;; interlace_sgix already defined

;;;; Enumerations: SGI_color_matrix

(defconstant +color-matrix+ #x80B1) 
;; color_matrix_sgi already defined
(defconstant +color-matrix-stack-depth+ #x80B2) 
;; color_matrix_stack_depth_sgi already defined
(defconstant +max-color-matrix-stack-depth+ #x80B3) 
;; max_color_matrix_stack_depth_sgi already defined
(defconstant +post-color-matrix-red-scale+ #x80B4) 
;; post_color_matrix_red_scale_sgi already defined
(defconstant +post-color-matrix-green-scale+ #x80B5) 
;; post_color_matrix_green_scale_sgi already defined
(defconstant +post-color-matrix-blue-scale+ #x80B6) 
;; post_color_matrix_blue_scale_sgi already defined
(defconstant +post-color-matrix-alpha-scale+ #x80B7) 
;; post_color_matrix_alpha_scale_sgi already defined
(defconstant +post-color-matrix-red-bias+ #x80B8) 
;; post_color_matrix_red_bias_sgi already defined
(defconstant +post-color-matrix-green-bias+ #x80B9) 
;; post_color_matrix_green_bias_sgi already defined
(defconstant +post-color-matrix-blue-bias+ #x80BA) 
;; post_color_matrix_blue_bias_sgi already defined
(defconstant +post-color-matrix-alpha-bias+ #x80BB) 
;; post_color_matrix_alpha_bias_sgi already defined

;;;; Enumerations: SGI_texture_color_table
;; texture_color_table_sgi already defined
;; proxy_texture_color_table_sgi already defined

;;;; Enumerations: SGIX_texture_add_env
;; texture_env_bias_sgix already defined

;;;; Enumerations: SGIX_shadow_ambient
;; shadow_ambient_sgix already defined

;;;; Enumerations: EXT_bgra

(defconstant +bgr+ #x80E0) 
(defconstant +bgr-ext+ #x80E0) 
(defconstant +bgra+ #x80E1) 
(defconstant +bgra-ext+ #x80E1) 

;;;; Enumerations: SGIS_texture_select
;; dual_alpha4_sgis already defined
;; dual_alpha8_sgis already defined
;; dual_alpha12_sgis already defined
;; dual_alpha16_sgis already defined
;; dual_luminance4_sgis already defined
;; dual_luminance8_sgis already defined
;; dual_luminance12_sgis already defined
;; dual_luminance16_sgis already defined
;; dual_intensity4_sgis already defined
;; dual_intensity8_sgis already defined
;; dual_intensity12_sgis already defined
;; dual_intensity16_sgis already defined
;; dual_luminance_alpha4_sgis already defined
;; dual_luminance_alpha8_sgis already defined
;; quad_alpha4_sgis already defined
;; quad_alpha8_sgis already defined
;; quad_luminance4_sgis already defined
;; quad_luminance8_sgis already defined
;; quad_intensity4_sgis already defined
;; quad_intensity8_sgis already defined
;; dual_texture_select_sgis already defined
;; quad_texture_select_sgis already defined

;;;; Enumerations: SGIS_texture_border_clamp

(defconstant +clamp-to-border+ #x812D) 
(defconstant +clamp-to-border-arb+ #x812D) 
;; clamp_to_border_sgis already defined

;;;; Enumerations: SGIX_texture_multi_buffer
;; texture_multi_buffer_hint_sgix already defined

;;;; Enumerations: SGIS_texture_edge_clamp

(defconstant +clamp-to-edge+ #x812F) 
;; clamp_to_edge_sgis already defined

;;;; Enumerations: SGIS_texture_lod

(defconstant +texture-min-lod+ #x813A) 
;; texture_min_lod_sgis already defined
(defconstant +texture-max-lod+ #x813B) 
;; texture_max_lod_sgis already defined
(defconstant +texture-base-level+ #x813C) 
;; texture_base_level_sgis already defined
(defconstant +texture-max-level+ #x813D) 
;; texture_max_level_sgis already defined

;;;; Enumerations: SGIX_pixel_tiles
;; pixel_tile_best_alignment_sgix already defined
;; pixel_tile_cache_increment_sgix already defined
;; pixel_tile_width_sgix already defined
;; pixel_tile_height_sgix already defined
;; pixel_tile_grid_width_sgix already defined
;; pixel_tile_grid_height_sgix already defined
;; pixel_tile_grid_depth_sgix already defined
;; pixel_tile_cache_size_sgix already defined

;;;; Enumerations: HP_convolution_border_modes

(defconstant +ignore-border-hp+ #x8150) 
(defconstant +constant-border+ #x8151) 
(defconstant +constant-border-hp+ #x8151) 
(defconstant +replicate-border+ #x8153) 
(defconstant +replicate-border-hp+ #x8153) 
(defconstant +convolution-border-color+ #x8154) 
(defconstant +convolution-border-color-hp+ #x8154) 

;;;; Enumerations: SGIX_clipmap
;; linear_clipmap_linear_sgix already defined
;; texture_clipmap_center_sgix already defined
;; texture_clipmap_frame_sgix already defined
;; texture_clipmap_offset_sgix already defined
;; texture_clipmap_virtual_depth_sgix already defined
;; texture_clipmap_lod_offset_sgix already defined
;; texture_clipmap_depth_sgix already defined
;; max_clipmap_depth_sgix already defined
;; max_clipmap_virtual_depth_sgix already defined
;; nearest_clipmap_nearest_sgix already defined
;; nearest_clipmap_linear_sgix already defined
;; linear_clipmap_nearest_sgix already defined

;;;; Enumerations: SGIX_texture_scale_bias
;; post_texture_filter_bias_sgix already defined
;; post_texture_filter_scale_sgix already defined
;; post_texture_filter_bias_range_sgix already defined
;; post_texture_filter_scale_range_sgix already defined

;;;; Enumerations: SGIX_ir_instrument1
;; ir_instrument1_sgix already defined

;;;; Enumerations: SGIX_calligraphic_fragment
;; calligraphic_fragment_sgix already defined

;;;; Enumerations: SGIX_impact_pixel_texture
;; pixel_tex_gen_q_ceiling_sgix already defined
;; pixel_tex_gen_q_round_sgix already defined
;; pixel_tex_gen_q_floor_sgix already defined
;; pixel_tex_gen_alpha_replace_sgix already defined
;; pixel_tex_gen_alpha_no_replace_sgix already defined
;; pixel_tex_gen_alpha_ls_sgix already defined
;; pixel_tex_gen_alpha_ms_sgix already defined

;;;; Enumerations: SGIX_texture_lod_bias
;; texture_lod_bias_s_sgix already defined
;; texture_lod_bias_t_sgix already defined
;; texture_lod_bias_r_sgix already defined

;;;; Enumerations: SGIS_generate_mipmap

(defconstant +generate-mipmap+ #x8191) 
;; generate_mipmap_sgis already defined
(defconstant +generate-mipmap-hint+ #x8192) 
;; generate_mipmap_hint_sgis already defined
;; geometry_deformation_sgix already defined
;; texture_deformation_sgix already defined
;; deformations_mask_sgix already defined
(defconstant +max-deformation-order-sgix+ #x8197) 

;;;; Enumerations: SGIX_fog_offset
;; fog_offset_sgix already defined
;; fog_offset_value_sgix already defined

;;;; Enumerations: SGIX_shadow
;; texture_compare_sgix already defined
;; texture_compare_operator_sgix already defined
;; texture_lequal_r_sgix already defined
;; texture_gequal_r_sgix already defined

;;;; Enumerations: SGIX_depth_texture

(defconstant +depth-component16+ #x81A5) 
;; depth_component16_sgix already defined
(defconstant +depth-component24+ #x81A6) 
;; depth_component24_sgix already defined
(defconstant +depth-component32+ #x81A7) 
;; depth_component32_sgix already defined

;;;; Enumerations: SGIX_ycrcb
;; ycrcb_422_sgix already defined
;; ycrcb_444_sgix already defined

;;;; Enumerations: SGIS_point_line_texgen
;; eye_distance_to_point_sgis already defined
;; object_distance_to_point_sgis already defined
;; eye_distance_to_line_sgis already defined
;; object_distance_to_line_sgis already defined
;; eye_point_sgis already defined
;; object_point_sgis already defined
;; eye_line_sgis already defined
;; object_line_sgis already defined

;;;; Enumerations: EXT_separate_specular_color
;; light_model_color_control already defined
(defconstant +light-model-color-control-ext+ #x81F8) 
;; single_color already defined
(defconstant +single-color-ext+ #x81F9) 
;; separate_specular_color already defined
(defconstant +separate-specular-color-ext+ #x81FA) 

;;;; Enumerations: EXT_shared_texture_palette
;; shared_texture_palette_ext already defined

;;;; Enumerations: SGIX_convolution_accuracy
;; convolution_hint_sgix already defined

;;;; Enumerations: SGIX_blend_alpha_minmax
;; alpha_min_sgix already defined
;; alpha_max_sgix already defined
;; async_marker_sgix already defined

;;;; Enumerations: SGIX_async_histogram
;; async_histogram_sgix already defined
;; max_async_histogram_sgix already defined

;;;; Enumerations: SGIX_async_pixel
;; async_tex_image_sgix already defined
;; async_draw_pixels_sgix already defined
;; async_read_pixels_sgix already defined
;; max_async_tex_image_sgix already defined
;; max_async_draw_pixels_sgix already defined
;; max_async_read_pixels_sgix already defined

;;;; Enumerations: SGIX_texture_coordinate_clamp
;; texture_max_clamp_s_sgix already defined
;; texture_max_clamp_t_sgix already defined
;; texture_max_clamp_r_sgix already defined
(defconstant +fog-factor-to-alpha-sgix+ #x836F) 

;;;; Enumerations: SGIX_vertex_preclip
;; vertex_preclip_sgix already defined
;; vertex_preclip_hint_sgix already defined

;;;; Enumerations: EXT_texture_compression_s3tc

(defconstant +compressed-rgb-s3tc-dxt1-ext+ #x83F0) 
(defconstant +compressed-rgba-s3tc-dxt1-ext+ #x83F1) 
(defconstant +compressed-rgba-s3tc-dxt3-ext+ #x83F2) 
(defconstant +compressed-rgba-s3tc-dxt5-ext+ #x83F3) 

;;;; Enumerations: SGIX_resample
;; pack_resample_sgix already defined
;; unpack_resample_sgix already defined
;; resample_replicate_sgix already defined
;; resample_zero_fill_sgix already defined
;; resample_decimate_sgix already defined

;;;; Enumerations: SGIX_subsample
;; pack_subsample_rate_sgix already defined
;; unpack_subsample_rate_sgix already defined
;; pixel_subsample_4444_sgix already defined
;; pixel_subsample_2424_sgix already defined
;; pixel_subsample_4242_sgix already defined

;;;; Enumerations: ARB_imaging

(defconstant +constant-color+ #x8001) 
(defconstant +one-minus-constant-color+ #x8002) 
(defconstant +constant-alpha+ #x8003) 
(defconstant +one-minus-constant-alpha+ #x8004) 
(defconstant +blend-color+ #x8005) 
(defconstant +func-add+ #x8006) 
(defconstant +min+ #x8007) 
(defconstant +max+ #x8008) 
(defconstant +blend-equation+ #x8009) 
;; func_subtract already defined
;; func_reverse_subtract already defined
(defconstant +convolution-1d+ #x8010) 
(defconstant +convolution-2d+ #x8011) 
(defconstant +separable-2d+ #x8012) 
(defconstant +convolution-border-mode+ #x8013) 
(defconstant +convolution-filter-scale+ #x8014) 
(defconstant +convolution-filter-bias+ #x8015) 
(defconstant +reduce+ #x8016) 
(defconstant +convolution-format+ #x8017) 
(defconstant +convolution-width+ #x8018) 
(defconstant +convolution-height+ #x8019) 
(defconstant +max-convolution-width+ #x801A) 
(defconstant +max-convolution-height+ #x801B) 
(defconstant +post-convolution-red-scale+ #x801C) 
(defconstant +post-convolution-green-scale+ #x801D) 
(defconstant +post-convolution-blue-scale+ #x801E) 
(defconstant +post-convolution-alpha-scale+ #x801F) 
(defconstant +post-convolution-red-bias+ #x8020) 
(defconstant +post-convolution-green-bias+ #x8021) 
(defconstant +post-convolution-blue-bias+ #x8022) 
(defconstant +post-convolution-alpha-bias+ #x8023) 
(defconstant +histogram+ #x8024) 
(defconstant +proxy-histogram+ #x8025) 
(defconstant +histogram-width+ #x8026) 
(defconstant +histogram-format+ #x8027) 
(defconstant +histogram-red-size+ #x8028) 
(defconstant +histogram-green-size+ #x8029) 
(defconstant +histogram-blue-size+ #x802A) 
(defconstant +histogram-alpha-size+ #x802B) 
(defconstant +histogram-luminance-size+ #x802C) 
(defconstant +histogram-sink+ #x802D) 
(defconstant +minmax+ #x802E) 
(defconstant +minmax-format+ #x802F) 
(defconstant +minmax-sink+ #x8030) 
(defconstant +table-too-large+ #x8031) 
;; color_matrix already defined
;; color_matrix_stack_depth already defined
;; max_color_matrix_stack_depth already defined
;; post_color_matrix_red_scale already defined
;; post_color_matrix_green_scale already defined
;; post_color_matrix_blue_scale already defined
;; post_color_matrix_alpha_scale already defined
;; post_color_matrix_red_bias already defined
;; post_color_matrix_green_bias already defined
;; post_color_matrix_blue_bias already defined
;; post_color_matrix_alpha_bias already defined
(defconstant +color-table+ #x80D0) 
(defconstant +post-convolution-color-table+ #x80D1) 
(defconstant +post-color-matrix-color-table+ #x80D2) 
(defconstant +proxy-color-table+ #x80D3) 
(defconstant +proxy-post-convolution-color-table+ #x80D4) 
(defconstant +proxy-post-color-matrix-color-table+ #x80D5) 
(defconstant +color-table-scale+ #x80D6) 
(defconstant +color-table-bias+ #x80D7) 
(defconstant +color-table-format+ #x80D8) 
(defconstant +color-table-width+ #x80D9) 
(defconstant +color-table-red-size+ #x80DA) 
(defconstant +color-table-green-size+ #x80DB) 
(defconstant +color-table-blue-size+ #x80DC) 
(defconstant +color-table-alpha-size+ #x80DD) 
(defconstant +color-table-luminance-size+ #x80DE) 
(defconstant +color-table-intensity-size+ #x80DF) 
;; constant_border already defined
;; replicate_border already defined
;; convolution_border_color already defined

;;;; Enumerations: ARB_texture_cube_map

(defconstant +normal-map-arb+ #x8511) 
(defconstant +reflection-map-arb+ #x8512) 
(defconstant +texture-cube-map-arb+ #x8513) 
(defconstant +texture-binding-cube-map-arb+ #x8514) 
(defconstant +texture-cube-map-positive-x-arb+ #x8515) 
(defconstant +texture-cube-map-negative-x-arb+ #x8516) 
(defconstant +texture-cube-map-positive-y-arb+ #x8517) 
(defconstant +texture-cube-map-negative-y-arb+ #x8518) 
(defconstant +texture-cube-map-positive-z-arb+ #x8519) 
(defconstant +texture-cube-map-negative-z-arb+ #x851A) 
(defconstant +proxy-texture-cube-map-arb+ #x851B) 
(defconstant +max-cube-map-texture-size-arb+ #x851C) 

;;;; Enumerations: ARB_texture_border_clamp
;; clamp_to_border_arb already defined

;;;; Enumerations: ARB_texture_env_combine

(defconstant +combine-arb+ #x8570) 
(defconstant +combine-rgb-arb+ #x8571) 
(defconstant +combine-alpha-arb+ #x8572) 
(defconstant +source0-rgb-arb+ #x8580) 
(defconstant +source1-rgb-arb+ #x8581) 
(defconstant +source2-rgb-arb+ #x8582) 
(defconstant +source0-alpha-arb+ #x8588) 
(defconstant +source1-alpha-arb+ #x8589) 
(defconstant +source2-alpha-arb+ #x858A) 
(defconstant +operand0-rgb-arb+ #x8590) 
(defconstant +operand1-rgb-arb+ #x8591) 
(defconstant +operand2-rgb-arb+ #x8592) 
(defconstant +operand0-alpha-arb+ #x8598) 
(defconstant +operand1-alpha-arb+ #x8599) 
(defconstant +operand2-alpha-arb+ #x859A) 
(defconstant +rgb-scale-arb+ #x8573) 
(defconstant +add-signed-arb+ #x8574) 
(defconstant +interpolate-arb+ #x8575) 
(defconstant +subtract-arb+ #x84E7) 
(defconstant +constant-arb+ #x8576) 
(defconstant +primary-color-arb+ #x8577) 
(defconstant +previous-arb+ #x8578) 

;;;; Enumerations: ARB_texture_env_dot3

(defconstant +dot3-rgb-arb+ #x86AE) 
(defconstant +dot3-rgba-arb+ #x86AF) 

;;;; Enumerations: ARB_texture_mirrored_repeat

(defconstant +mirrored-repeat-arb+ #x8370) 

;;;; Enumerations: ARB_depth_texture

(defconstant +depth-component16-arb+ #x81A5) 
(defconstant +depth-component24-arb+ #x81A6) 
(defconstant +depth-component32-arb+ #x81A7) 
(defconstant +texture-depth-size-arb+ #x884A) 
(defconstant +depth-texture-mode-arb+ #x884B) 

;;;; Enumerations: ARB_shadow

(defconstant +texture-compare-mode-arb+ #x884C) 
(defconstant +texture-compare-func-arb+ #x884D) 
(defconstant +compare-r-to-texture-arb+ #x884E) 

;;;; Enumerations: ARB_shadow_ambient

(defconstant +texture-compare-fail-value-arb+ #x80BF) 

;;;; Enumerations: ARB_fragment_program

(defconstant +fragment-program-arb+ #x8804) 
(defconstant +program-alu-instructions-arb+ #x8805) 
(defconstant +program-tex-instructions-arb+ #x8806) 
(defconstant +program-tex-indirections-arb+ #x8807) 
(defconstant +program-native-alu-instructions-arb+ #x8808) 
(defconstant +program-native-tex-instructions-arb+ #x8809) 
(defconstant +program-native-tex-indirections-arb+ #x880A) 
(defconstant +max-program-alu-instructions-arb+ #x880B) 
(defconstant +max-program-tex-instructions-arb+ #x880C) 
(defconstant +max-program-tex-indirections-arb+ #x880D) 
(defconstant +max-program-native-alu-instructions-arb+ #x880E) 
(defconstant +max-program-native-tex-instructions-arb+ #x880F) 
(defconstant +max-program-native-tex-indirections-arb+ #x8810) 
(defconstant +max-texture-coords-arb+ #x8871) 
(defconstant +max-texture-image-units-arb+ #x8872) 

;;;; Enumerations: ARB_fragment_shader

(defconstant +fragment-shader-arb+ #x8B30) 
(defconstant +max-fragment-uniform-components-arb+ #x8B49) 
(defconstant +fragment-shader-derivative-hint-arb+ #x8B8B) 

;;;; Enumerations: ARB_shading_language_100

(defconstant +shading-language-version-arb+ #x8B8C) 

;;;; Enumerations: ARB_point_sprite

(defconstant +point-sprite-arb+ #x8861) 
(defconstant +coord-replace-arb+ #x8862) 

;;;; Enumerations: ARB_texture_rectangle

(defconstant +texture-rectangle-arb+ #x84F5) 
(defconstant +texture-binding-rectangle-arb+ #x84F6) 
(defconstant +proxy-texture-rectangle-arb+ #x84F7) 
(defconstant +max-rectangle-texture-size-arb+ #x84F8) 

;;;; Enumerations: ARB_half_float_pixel

(defconstant +half-float-arb+ #x140B) 

;;;; Enumerations: ARB_texture_float

(defconstant +texture-red-type-arb+ #x8C10) 
(defconstant +texture-green-type-arb+ #x8C11) 
(defconstant +texture-blue-type-arb+ #x8C12) 
(defconstant +texture-alpha-type-arb+ #x8C13) 
(defconstant +texture-luminance-type-arb+ #x8C14) 
(defconstant +texture-intensity-type-arb+ #x8C15) 
(defconstant +texture-depth-type-arb+ #x8C16) 
(defconstant +unsigned-normalized-arb+ #x8C17) 
(defconstant +rgba32f-arb+ #x8814) 
(defconstant +rgb32f-arb+ #x8815) 
(defconstant +alpha32f-arb+ #x8816) 
(defconstant +intensity32f-arb+ #x8817) 
(defconstant +luminance32f-arb+ #x8818) 
(defconstant +luminance-alpha32f-arb+ #x8819) 
(defconstant +rgba16f-arb+ #x881A) 
(defconstant +rgb16f-arb+ #x881B) 
(defconstant +alpha16f-arb+ #x881C) 
(defconstant +intensity16f-arb+ #x881D) 
(defconstant +luminance16f-arb+ #x881E) 
(defconstant +luminance-alpha16f-arb+ #x881F) 

;;;; Enumerations: ARB_pixel_buffer_object

(defconstant +pixel-pack-buffer-arb+ #x88EB) 
(defconstant +pixel-unpack-buffer-arb+ #x88EC) 
(defconstant +pixel-pack-buffer-binding-arb+ #x88ED) 
(defconstant +pixel-unpack-buffer-binding-arb+ #x88EF) 

;;;; Enumerations: EXT_abgr
;; abgr_ext already defined

;;;; Enumerations: EXT_texture
;; alpha4_ext already defined
;; alpha8_ext already defined
;; alpha12_ext already defined
;; alpha16_ext already defined
;; luminance4_ext already defined
;; luminance8_ext already defined
;; luminance12_ext already defined
;; luminance16_ext already defined
;; luminance4_alpha4_ext already defined
;; luminance6_alpha2_ext already defined
;; luminance8_alpha8_ext already defined
;; luminance12_alpha4_ext already defined
;; luminance12_alpha12_ext already defined
;; luminance16_alpha16_ext already defined
;; intensity_ext already defined
;; intensity4_ext already defined
;; intensity8_ext already defined
;; intensity12_ext already defined
;; intensity16_ext already defined
;; rgb2_ext already defined
;; rgb4_ext already defined
;; rgb5_ext already defined
;; rgb8_ext already defined
;; rgb10_ext already defined
;; rgb12_ext already defined
;; rgb16_ext already defined
;; rgba2_ext already defined
;; rgba4_ext already defined
;; rgb5_a1_ext already defined
;; rgba8_ext already defined
;; rgb10_a2_ext already defined
;; rgba12_ext already defined
;; rgba16_ext already defined
;; texture_red_size_ext already defined
;; texture_green_size_ext already defined
;; texture_blue_size_ext already defined
;; texture_alpha_size_ext already defined
;; texture_luminance_size_ext already defined
;; texture_intensity_size_ext already defined
;; replace_ext already defined
;; proxy_texture_1d_ext already defined
;; proxy_texture_2d_ext already defined
;; texture_too_large_ext already defined

;;;; Enumerations: SGI_color_matrix
;; color_matrix_sgi already defined
;; color_matrix_stack_depth_sgi already defined
;; max_color_matrix_stack_depth_sgi already defined
;; post_color_matrix_red_scale_sgi already defined
;; post_color_matrix_green_scale_sgi already defined
;; post_color_matrix_blue_scale_sgi already defined
;; post_color_matrix_alpha_scale_sgi already defined
;; post_color_matrix_red_bias_sgi already defined
;; post_color_matrix_green_bias_sgi already defined
;; post_color_matrix_blue_bias_sgi already defined
;; post_color_matrix_alpha_bias_sgi already defined

;;;; Enumerations: SGI_texture_color_table
;; texture_color_table_sgi already defined
;; proxy_texture_color_table_sgi already defined

;;;; Enumerations: EXT_cmyka
;; cmyk_ext already defined
;; cmyka_ext already defined
;; pack_cmyk_hint_ext already defined
;; unpack_cmyk_hint_ext already defined

;;;; Enumerations: EXT_packed_pixels
;; unsigned_byte_3_3_2_ext already defined
;; unsigned_short_4_4_4_4_ext already defined
;; unsigned_short_5_5_5_1_ext already defined
;; unsigned_int_8_8_8_8_ext already defined
;; unsigned_int_10_10_10_2_ext already defined

;;;; Enumerations: SGIS_texture_lod
;; texture_min_lod_sgis already defined
;; texture_max_lod_sgis already defined
;; texture_base_level_sgis already defined
;; texture_max_level_sgis already defined

;;;; Enumerations: EXT_rescale_normal
;; rescale_normal_ext already defined

;;;; Enumerations: SGIS_generate_mipmap
;; generate_mipmap_sgis already defined
;; generate_mipmap_hint_sgis already defined

;;;; Enumerations: SGIX_clipmap
;; linear_clipmap_linear_sgix already defined
;; texture_clipmap_center_sgix already defined
;; texture_clipmap_frame_sgix already defined
;; texture_clipmap_offset_sgix already defined
;; texture_clipmap_virtual_depth_sgix already defined
;; texture_clipmap_lod_offset_sgix already defined
;; texture_clipmap_depth_sgix already defined
;; max_clipmap_depth_sgix already defined
;; max_clipmap_virtual_depth_sgix already defined
;; nearest_clipmap_nearest_sgix already defined
;; nearest_clipmap_linear_sgix already defined
;; linear_clipmap_nearest_sgix already defined

;;;; Enumerations: SGIX_shadow
;; texture_compare_sgix already defined
;; texture_compare_operator_sgix already defined
;; texture_lequal_r_sgix already defined
;; texture_gequal_r_sgix already defined

;;;; Enumerations: SGIS_texture_edge_clamp
;; clamp_to_edge_sgis already defined

;;;; Enumerations: SGIS_texture_border_clamp
;; clamp_to_border_sgis already defined

;;;; Enumerations: EXT_blend_subtract
;; func_subtract_ext already defined
;; func_reverse_subtract_ext already defined

;;;; Enumerations: SGIX_interlace
;; interlace_sgix already defined

;;;; Enumerations: SGIX_pixel_tiles
;; pixel_tile_best_alignment_sgix already defined
;; pixel_tile_cache_increment_sgix already defined
;; pixel_tile_width_sgix already defined
;; pixel_tile_height_sgix already defined
;; pixel_tile_grid_width_sgix already defined
;; pixel_tile_grid_height_sgix already defined
;; pixel_tile_grid_depth_sgix already defined
;; pixel_tile_cache_size_sgix already defined

;;;; Enumerations: SGIS_texture_select
;; dual_alpha4_sgis already defined
;; dual_alpha8_sgis already defined
;; dual_alpha12_sgis already defined
;; dual_alpha16_sgis already defined
;; dual_luminance4_sgis already defined
;; dual_luminance8_sgis already defined
;; dual_luminance12_sgis already defined
;; dual_luminance16_sgis already defined
;; dual_intensity4_sgis already defined
;; dual_intensity8_sgis already defined
;; dual_intensity12_sgis already defined
;; dual_intensity16_sgis already defined
;; dual_luminance_alpha4_sgis already defined
;; dual_luminance_alpha8_sgis already defined
;; quad_alpha4_sgis already defined
;; quad_alpha8_sgis already defined
;; quad_luminance4_sgis already defined
;; quad_luminance8_sgis already defined
;; quad_intensity4_sgis already defined
;; quad_intensity8_sgis already defined
;; dual_texture_select_sgis already defined
;; quad_texture_select_sgis already defined

;;;; Enumerations: SGIX_texture_multi_buffer
;; texture_multi_buffer_hint_sgix already defined

;;;; Enumerations: SGIX_texture_scale_bias
;; post_texture_filter_bias_sgix already defined
;; post_texture_filter_scale_sgix already defined
;; post_texture_filter_bias_range_sgix already defined
;; post_texture_filter_scale_range_sgix already defined

;;;; Enumerations: FfdMaskSGIX
;; texture_deformation_bit_sgix already defined
;; geometry_deformation_bit_sgix already defined

;;;; Enumerations: SGIX_depth_texture
;; depth_component16_sgix already defined
;; depth_component24_sgix already defined
;; depth_component32_sgix already defined

;;;; Enumerations: SGIX_fog_offset
;; fog_offset_sgix already defined
;; fog_offset_value_sgix already defined

;;;; Enumerations: HP_convolution_border_modes
;; ignore_border_hp already defined
;; constant_border_hp already defined
;; replicate_border_hp already defined
;; convolution_border_color_hp already defined

;;;; Enumerations: SGIX_texture_add_env
;; texture_env_bias_sgix already defined

;;;; Enumerations: PGI_vertex_hints

(defconstant +vertex-data-hint-pgi+ #x1A22A) 
(defconstant +vertex-consistent-hint-pgi+ #x1A22B) 
(defconstant +material-side-hint-pgi+ #x1A22C) 
(defconstant +max-vertex-hint-pgi+ #x1A22D) 
(defconstant +color3-bit-pgi+ #x10000) 
(defconstant +color4-bit-pgi+ #x20000) 
(defconstant +edgeflag-bit-pgi+ #x40000) 
(defconstant +index-bit-pgi+ #x80000) 
(defconstant +mat-ambient-bit-pgi+ #x100000) 
(defconstant +mat-ambient-and-diffuse-bit-pgi+ #x200000) 
(defconstant +mat-diffuse-bit-pgi+ #x400000) 
(defconstant +mat-emission-bit-pgi+ #x800000) 
(defconstant +mat-color-indexes-bit-pgi+ #x1000000) 
(defconstant +mat-shininess-bit-pgi+ #x2000000) 
(defconstant +mat-specular-bit-pgi+ #x4000000) 
(defconstant +normal-bit-pgi+ #x8000000) 
(defconstant +texcoord1-bit-pgi+ #x10000000) 
(defconstant +texcoord2-bit-pgi+ #x20000000) 
(defconstant +texcoord3-bit-pgi+ #x40000000) 
(defconstant +texcoord4-bit-pgi+ #x80000000) 
(defconstant +vertex23-bit-pgi+ #x4) 
(defconstant +vertex4-bit-pgi+ #x8) 

;;;; Enumerations: EXT_clip_volume_hint

(defconstant +clip-volume-clipping-hint-ext+ #x80F0) 

;;;; Enumerations: SGIX_ir_instrument1
;; ir_instrument1_sgix already defined

;;;; Enumerations: SGIX_calligraphic_fragment
;; calligraphic_fragment_sgix already defined

;;;; Enumerations: SGIX_texture_lod_bias
;; texture_lod_bias_s_sgix already defined
;; texture_lod_bias_t_sgix already defined
;; texture_lod_bias_r_sgix already defined

;;;; Enumerations: SGIX_shadow_ambient
;; shadow_ambient_sgix already defined

;;;; Enumerations: EXT_index_array_formats

(defconstant +iui-v2f-ext+ #x81AD) 
(defconstant +iui-v3f-ext+ #x81AE) 
(defconstant +iui-n3f-v2f-ext+ #x81AF) 
(defconstant +iui-n3f-v3f-ext+ #x81B0) 
(defconstant +t2f-iui-v2f-ext+ #x81B1) 
(defconstant +t2f-iui-v3f-ext+ #x81B2) 
(defconstant +t2f-iui-n3f-v2f-ext+ #x81B3) 
(defconstant +t2f-iui-n3f-v3f-ext+ #x81B4) 

;;;; Enumerations: SGIX_ycrcb
;; ycrcb_422_sgix already defined
;; ycrcb_444_sgix already defined

;;;; Enumerations: IBM_rasterpos_clip

(defconstant +raster-position-unclipped-ibm+ #x19262) 

;;;; Enumerations: HP_texture_lighting

(defconstant +texture-lighting-mode-hp+ #x8167) 
(defconstant +texture-post-specular-hp+ #x8168) 
(defconstant +texture-pre-specular-hp+ #x8169) 

;;;; Enumerations: WIN_phong_shading

(defconstant +phong-win+ #x80EA) 
(defconstant +phong-hint-win+ #x80EB) 

;;;; Enumerations: WIN_specular_fog

(defconstant +fog-specular-texture-win+ #x80EC) 

;;;; Enumerations: SGIX_blend_alpha_minmax
;; alpha_min_sgix already defined
;; alpha_max_sgix already defined

;;;; Enumerations: SGIX_impact_pixel_texture
;; pixel_tex_gen_q_ceiling_sgix already defined
;; pixel_tex_gen_q_round_sgix already defined
;; pixel_tex_gen_q_floor_sgix already defined
;; pixel_tex_gen_alpha_replace_sgix already defined
;; pixel_tex_gen_alpha_no_replace_sgix already defined
;; pixel_tex_gen_alpha_ls_sgix already defined
;; pixel_tex_gen_alpha_ms_sgix already defined

;;;; Enumerations: EXT_bgra
;; bgr_ext already defined
;; bgra_ext already defined

;;;; Enumerations: SGIX_async_pixel
;; async_tex_image_sgix already defined
;; async_draw_pixels_sgix already defined
;; async_read_pixels_sgix already defined
;; max_async_tex_image_sgix already defined
;; max_async_draw_pixels_sgix already defined
;; max_async_read_pixels_sgix already defined

;;;; Enumerations: SGIX_async_histogram
;; async_histogram_sgix already defined
;; max_async_histogram_sgix already defined

;;;; Enumerations: HP_occlusion_test

(defconstant +occlusion-test-hp+ #x8165) 
(defconstant +occlusion-test-result-hp+ #x8166) 

;;;; Enumerations: EXT_shared_texture_palette
;; shared_texture_palette_ext already defined

;;;; Enumerations: EXT_separate_specular_color
;; light_model_color_control_ext already defined
;; single_color_ext already defined
;; separate_specular_color_ext already defined

;;;; Enumerations: REND_screen_coordinates

(defconstant +screen-coordinates-rend+ #x8490) 
(defconstant +inverted-screen-w-rend+ #x8491) 

;;;; Enumerations: EXT_texture_env_combine

(defconstant +combine-ext+ #x8570) 
(defconstant +combine-rgb-ext+ #x8571) 
(defconstant +combine-alpha-ext+ #x8572) 
(defconstant +rgb-scale-ext+ #x8573) 
(defconstant +add-signed-ext+ #x8574) 
(defconstant +interpolate-ext+ #x8575) 
(defconstant +constant-ext+ #x8576) 
(defconstant +primary-color-ext+ #x8577) 
(defconstant +previous-ext+ #x8578) 
(defconstant +source0-rgb-ext+ #x8580) 
(defconstant +source1-rgb-ext+ #x8581) 
(defconstant +source2-rgb-ext+ #x8582) 
(defconstant +source0-alpha-ext+ #x8588) 
(defconstant +source1-alpha-ext+ #x8589) 
(defconstant +source2-alpha-ext+ #x858A) 
(defconstant +operand0-rgb-ext+ #x8590) 
(defconstant +operand1-rgb-ext+ #x8591) 
(defconstant +operand2-rgb-ext+ #x8592) 
(defconstant +operand0-alpha-ext+ #x8598) 
(defconstant +operand1-alpha-ext+ #x8599) 
(defconstant +operand2-alpha-ext+ #x859A) 

;;;; Enumerations: APPLE_specular_vector

(defconstant +light-model-specular-vector-apple+ #x85B0) 

;;;; Enumerations: APPLE_transform_hint

(defconstant +transform-hint-apple+ #x85B1) 

;;;; Enumerations: SGIX_fog_scale

(defconstant +fog-scale-sgix+ #x81FC) 
(defconstant +fog-scale-value-sgix+ #x81FD) 

;;;; Enumerations: INGR_color_clamp

(defconstant +red-min-clamp-ingr+ #x8560) 
(defconstant +green-min-clamp-ingr+ #x8561) 
(defconstant +blue-min-clamp-ingr+ #x8562) 
(defconstant +alpha-min-clamp-ingr+ #x8563) 
(defconstant +red-max-clamp-ingr+ #x8564) 
(defconstant +green-max-clamp-ingr+ #x8565) 
(defconstant +blue-max-clamp-ingr+ #x8566) 
(defconstant +alpha-max-clamp-ingr+ #x8567) 

;;;; Enumerations: INGR_interlace_read

(defconstant +interlace-read-ingr+ #x8568) 

;;;; Enumerations: EXT_stencil_wrap

(defconstant +incr-wrap-ext+ #x8507) 
(defconstant +decr-wrap-ext+ #x8508) 

;;;; Enumerations: EXT_422_pixels

(defconstant +422-ext+ #x80CC) 
(defconstant +422-rev-ext+ #x80CD) 
(defconstant +422-average-ext+ #x80CE) 
(defconstant +422-rev-average-ext+ #x80CF) 

;;;; Enumerations: NV_texgen_reflection

(defconstant +normal-map-nv+ #x8511) 
(defconstant +reflection-map-nv+ #x8512) 

;;;; Enumerations: EXT_texture_cube_map

(defconstant +normal-map-ext+ #x8511) 
(defconstant +reflection-map-ext+ #x8512) 
(defconstant +texture-cube-map-ext+ #x8513) 
(defconstant +texture-binding-cube-map-ext+ #x8514) 
(defconstant +texture-cube-map-positive-x-ext+ #x8515) 
(defconstant +texture-cube-map-negative-x-ext+ #x8516) 
(defconstant +texture-cube-map-positive-y-ext+ #x8517) 
(defconstant +texture-cube-map-negative-y-ext+ #x8518) 
(defconstant +texture-cube-map-positive-z-ext+ #x8519) 
(defconstant +texture-cube-map-negative-z-ext+ #x851A) 
(defconstant +proxy-texture-cube-map-ext+ #x851B) 
(defconstant +max-cube-map-texture-size-ext+ #x851C) 

;;;; Enumerations: SUN_convolution_border_modes

(defconstant +wrap-border-sun+ #x81D4) 

;;;; Enumerations: EXT_texture_lod_bias

(defconstant +max-texture-lod-bias-ext+ #x84FD) 
(defconstant +texture-filter-control-ext+ #x8500) 
(defconstant +texture-lod-bias-ext+ #x8501) 

;;;; Enumerations: EXT_texture_filter_anisotropic

(defconstant +texture-max-anisotropy-ext+ #x84FE) 
(defconstant +max-texture-max-anisotropy-ext+ #x84FF) 

;;;; Enumerations: NV_light_max_exponent

(defconstant +max-shininess-nv+ #x8504) 
(defconstant +max-spot-exponent-nv+ #x8505) 

;;;; Enumerations: NV_fog_distance

(defconstant +fog-distance-mode-nv+ #x855A) 
(defconstant +eye-radial-nv+ #x855B) 
(defconstant +eye-plane-absolute-nv+ #x855C) 
;; eye_plane already defined

;;;; Enumerations: NV_texgen_emboss

(defconstant +emboss-light-nv+ #x855D) 
(defconstant +emboss-constant-nv+ #x855E) 
(defconstant +emboss-map-nv+ #x855F) 

;;;; Enumerations: NV_texture_env_combine4

(defconstant +combine4-nv+ #x8503) 
(defconstant +source3-rgb-nv+ #x8583) 
(defconstant +source3-alpha-nv+ #x858B) 
(defconstant +operand3-rgb-nv+ #x8593) 
(defconstant +operand3-alpha-nv+ #x859B) 

;;;; Enumerations: EXT_texture_compression_s3tc
;; compressed_rgb_s3tc_dxt1_ext already defined
;; compressed_rgba_s3tc_dxt1_ext already defined
;; compressed_rgba_s3tc_dxt3_ext already defined
;; compressed_rgba_s3tc_dxt5_ext already defined

;;;; Enumerations: IBM_cull_vertex

(defconstant +cull-vertex-ibm+ #x1928A) 

;;;; Enumerations: SGIX_subsample
;; pack_subsample_rate_sgix already defined
;; unpack_subsample_rate_sgix already defined
;; pixel_subsample_4444_sgix already defined
;; pixel_subsample_2424_sgix already defined
;; pixel_subsample_4242_sgix already defined

;;;; Enumerations: SGIX_ycrcb_subsample
;; pack_subsample_rate_sgix already defined
;; unpack_subsample_rate_sgix already defined
;; pixel_subsample_4444_sgix already defined
;; pixel_subsample_2424_sgix already defined
;; pixel_subsample_4242_sgix already defined

;;;; Enumerations: SGIX_ycrcba

(defconstant +ycrcb-sgix+ #x8318) 
(defconstant +ycrcba-sgix+ #x8319) 

;;;; Enumerations: SGI_depth_pass_instrument

(defconstant +depth-pass-instrument-sgix+ #x8310) 
(defconstant +depth-pass-instrument-counters-sgix+ #x8311) 
(defconstant +depth-pass-instrument-max-sgix+ #x8312) 

;;;; Enumerations: 3DFX_texture_compression_FXT1

(defconstant +compressed-rgb-fxt1-3dfx+ #x86B0) 
(defconstant +compressed-rgba-fxt1-3dfx+ #x86B1) 

;;;; Enumerations: 3DFX_multisample

(defconstant +multisample-3dfx+ #x86B2) 
(defconstant +sample-buffers-3dfx+ #x86B3) 
(defconstant +samples-3dfx+ #x86B4) 
(defconstant +multisample-bit-3dfx+ #x20000000) 

;;;; Enumerations: SGIX_vertex_preclip
;; vertex_preclip_sgix already defined
;; vertex_preclip_hint_sgix already defined

;;;; Enumerations: SGIX_convolution_accuracy
;; convolution_hint_sgix already defined

;;;; Enumerations: SGIX_resample
;; pack_resample_sgix already defined
;; unpack_resample_sgix already defined
;; resample_replicate_sgix already defined
;; resample_zero_fill_sgix already defined
;; resample_decimate_sgix already defined

;;;; Enumerations: SGIS_point_line_texgen
;; eye_distance_to_point_sgis already defined
;; object_distance_to_point_sgis already defined
;; eye_distance_to_line_sgis already defined
;; object_distance_to_line_sgis already defined
;; eye_point_sgis already defined
;; object_point_sgis already defined
;; eye_line_sgis already defined
;; object_line_sgis already defined

;;;; Enumerations: EXT_texture_env_dot3

(defconstant +dot3-rgb-ext+ #x8740) 
(defconstant +dot3-rgba-ext+ #x8741) 

;;;; Enumerations: ATI_texture_mirror_once

(defconstant +mirror-clamp-ati+ #x8742) 
(defconstant +mirror-clamp-to-edge-ati+ #x8743) 

;;;; Enumerations: IBM_texture_mirrored_repeat

(defconstant +mirrored-repeat-ibm+ #x8370) 

;;;; Enumerations: NV_packed_depth_stencil

(defconstant +depth-stencil-nv+ #x84F9) 
(defconstant +unsigned-int-24-8-nv+ #x84FA) 

;;;; Enumerations: NV_texture_rectangle

(defconstant +texture-rectangle-nv+ #x84F5) 
(defconstant +texture-binding-rectangle-nv+ #x84F6) 
(defconstant +proxy-texture-rectangle-nv+ #x84F7) 
(defconstant +max-rectangle-texture-size-nv+ #x84F8) 

;;;; Enumerations: NV_texture_shader

(defconstant +offset-texture-rectangle-nv+ #x864C) 
(defconstant +offset-texture-rectangle-scale-nv+ #x864D) 
(defconstant +dot-product-texture-rectangle-nv+ #x864E) 
(defconstant +rgba-unsigned-dot-product-mapping-nv+ #x86D9) 
(defconstant +unsigned-int-s8-s8-8-8-nv+ #x86DA) 
(defconstant +unsigned-int-8-8-s8-s8-rev-nv+ #x86DB) 
(defconstant +dsdt-mag-intensity-nv+ #x86DC) 
(defconstant +shader-consistent-nv+ #x86DD) 
(defconstant +texture-shader-nv+ #x86DE) 
(defconstant +shader-operation-nv+ #x86DF) 
(defconstant +cull-modes-nv+ #x86E0) 
(defconstant +offset-texture-matrix-nv+ #x86E1) 
(defconstant +offset-texture-scale-nv+ #x86E2) 
(defconstant +offset-texture-bias-nv+ #x86E3) 
(defconstant +offset-texture-2d-matrix-nv+ #x86E1) 
(defconstant +offset-texture-2d-scale-nv+ #x86E2) 
(defconstant +offset-texture-2d-bias-nv+ #x86E3) 
(defconstant +previous-texture-input-nv+ #x86E4) 
(defconstant +const-eye-nv+ #x86E5) 
(defconstant +pass-through-nv+ #x86E6) 
(defconstant +cull-fragment-nv+ #x86E7) 
(defconstant +offset-texture-2d-nv+ #x86E8) 
(defconstant +dependent-ar-texture-2d-nv+ #x86E9) 
(defconstant +dependent-gb-texture-2d-nv+ #x86EA) 
(defconstant +dot-product-nv+ #x86EC) 
(defconstant +dot-product-depth-replace-nv+ #x86ED) 
(defconstant +dot-product-texture-2d-nv+ #x86EE) 
(defconstant +dot-product-texture-cube-map-nv+ #x86F0) 
(defconstant +dot-product-diffuse-cube-map-nv+ #x86F1) 
(defconstant +dot-product-reflect-cube-map-nv+ #x86F2) 
(defconstant +dot-product-const-eye-reflect-cube-map-nv+ #x86F3) 
(defconstant +hilo-nv+ #x86F4) 
(defconstant +dsdt-nv+ #x86F5) 
(defconstant +dsdt-mag-nv+ #x86F6) 
(defconstant +dsdt-mag-vib-nv+ #x86F7) 
(defconstant +hilo16-nv+ #x86F8) 
(defconstant +signed-hilo-nv+ #x86F9) 
(defconstant +signed-hilo16-nv+ #x86FA) 
(defconstant +signed-rgba-nv+ #x86FB) 
(defconstant +signed-rgba8-nv+ #x86FC) 
(defconstant +signed-rgb-nv+ #x86FE) 
(defconstant +signed-rgb8-nv+ #x86FF) 
(defconstant +signed-luminance-nv+ #x8701) 
(defconstant +signed-luminance8-nv+ #x8702) 
(defconstant +signed-luminance-alpha-nv+ #x8703) 
(defconstant +signed-luminance8-alpha8-nv+ #x8704) 
(defconstant +signed-alpha-nv+ #x8705) 
(defconstant +signed-alpha8-nv+ #x8706) 
(defconstant +signed-intensity-nv+ #x8707) 
(defconstant +signed-intensity8-nv+ #x8708) 
(defconstant +dsdt8-nv+ #x8709) 
(defconstant +dsdt8-mag8-nv+ #x870A) 
(defconstant +dsdt8-mag8-intensity8-nv+ #x870B) 
(defconstant +signed-rgb-unsigned-alpha-nv+ #x870C) 
(defconstant +signed-rgb8-unsigned-alpha8-nv+ #x870D) 
(defconstant +hi-scale-nv+ #x870E) 
(defconstant +lo-scale-nv+ #x870F) 
(defconstant +ds-scale-nv+ #x8710) 
(defconstant +dt-scale-nv+ #x8711) 
(defconstant +magnitude-scale-nv+ #x8712) 
(defconstant +vibrance-scale-nv+ #x8713) 
(defconstant +hi-bias-nv+ #x8714) 
(defconstant +lo-bias-nv+ #x8715) 
(defconstant +ds-bias-nv+ #x8716) 
(defconstant +dt-bias-nv+ #x8717) 
(defconstant +magnitude-bias-nv+ #x8718) 
(defconstant +vibrance-bias-nv+ #x8719) 
(defconstant +texture-border-values-nv+ #x871A) 
(defconstant +texture-hi-size-nv+ #x871B) 
(defconstant +texture-lo-size-nv+ #x871C) 
(defconstant +texture-ds-size-nv+ #x871D) 
(defconstant +texture-dt-size-nv+ #x871E) 
(defconstant +texture-mag-size-nv+ #x871F) 

;;;; Enumerations: NV_texture_shader2

(defconstant +dot-product-texture-3d-nv+ #x86EF) 

;;;; Enumerations: NV_vertex_array_range2

(defconstant +vertex-array-range-without-flush-nv+ #x8533) 

;;;; Enumerations: SGIX_texture_coordinate_clamp
;; texture_max_clamp_s_sgix already defined
;; texture_max_clamp_t_sgix already defined
;; texture_max_clamp_r_sgix already defined

;;;; Enumerations: SGIX_scalebias_hint

(defconstant +scalebias-hint-sgix+ #x8322) 

;;;; Enumerations: OML_interlace

(defconstant +interlace-oml+ #x8980) 
(defconstant +interlace-read-oml+ #x8981) 

;;;; Enumerations: OML_subsample

(defconstant +format-subsample-24-24-oml+ #x8982) 
(defconstant +format-subsample-244-244-oml+ #x8983) 

;;;; Enumerations: OML_resample

(defconstant +pack-resample-oml+ #x8984) 
(defconstant +unpack-resample-oml+ #x8985) 
(defconstant +resample-replicate-oml+ #x8986) 
(defconstant +resample-zero-fill-oml+ #x8987) 
(defconstant +resample-average-oml+ #x8988) 
(defconstant +resample-decimate-oml+ #x8989) 

;;;; Enumerations: NV_copy_depth_to_color

(defconstant +depth-stencil-to-rgba-nv+ #x886E) 
(defconstant +depth-stencil-to-bgra-nv+ #x886F) 

;;;; Enumerations: SUN_slice_accum

(defconstant +slice-accum-sun+ #x85CC) 

;;;; Enumerations: NV_multisample_filter_hint

(defconstant +multisample-filter-hint-nv+ #x8534) 

;;;; Enumerations: NV_depth_clamp

(defconstant +depth-clamp-nv+ #x864F) 

;;;; Enumerations: NV_texture_shader3

(defconstant +offset-projective-texture-2d-nv+ #x8850) 
(defconstant +offset-projective-texture-2d-scale-nv+ #x8851) 
(defconstant +offset-projective-texture-rectangle-nv+ #x8852) 
(defconstant +offset-projective-texture-rectangle-scale-nv+ #x8853) 
(defconstant +offset-hilo-texture-2d-nv+ #x8854) 
(defconstant +offset-hilo-texture-rectangle-nv+ #x8855) 
(defconstant +offset-hilo-projective-texture-2d-nv+ #x8856) 
(defconstant +offset-hilo-projective-texture-rectangle-nv+ #x8857) 
(defconstant +dependent-hilo-texture-2d-nv+ #x8858) 
(defconstant +dependent-rgb-texture-3d-nv+ #x8859) 
(defconstant +dependent-rgb-texture-cube-map-nv+ #x885A) 
(defconstant +dot-product-pass-through-nv+ #x885B) 
(defconstant +dot-product-texture-1d-nv+ #x885C) 
(defconstant +dot-product-affine-depth-replace-nv+ #x885D) 
(defconstant +hilo8-nv+ #x885E) 
(defconstant +signed-hilo8-nv+ #x885F) 
(defconstant +force-blue-to-one-nv+ #x8860) 

;;;; Enumerations: ATI_text_fragment_shader

(defconstant +text-fragment-shader-ati+ #x8200) 

;;;; Enumerations: APPLE_client_storage

(defconstant +unpack-client-storage-apple+ #x85B2) 

;;;; Enumerations: APPLE_ycbcr_422

(defconstant +ycbcr-422-apple+ #x85B9) 
(defconstant +unsigned-short-8-8-apple+ #x85BA) 
(defconstant +unsigned-short-8-8-rev-apple+ #x85BB) 

;;;; Enumerations: S3_s3tc

(defconstant +rgb-s3tc+ #x83A0) 
(defconstant +rgb4-s3tc+ #x83A1) 
(defconstant +rgba-s3tc+ #x83A2) 
(defconstant +rgba4-s3tc+ #x83A3) 

;;;; Enumerations: ATI_pixel_format_float

(defconstant +type-rgba-float-ati+ #x8820) 
(defconstant +color-clear-unclamped-value-ati+ #x8835) 

;;;; Enumerations: ATI_texture_env_combine3

(defconstant +modulate-add-ati+ #x8744) 
(defconstant +modulate-signed-add-ati+ #x8745) 
(defconstant +modulate-subtract-ati+ #x8746) 

;;;; Enumerations: ATI_texture_float

(defconstant +rgba-float32-ati+ #x8814) 
(defconstant +rgb-float32-ati+ #x8815) 
(defconstant +alpha-float32-ati+ #x8816) 
(defconstant +intensity-float32-ati+ #x8817) 
(defconstant +luminance-float32-ati+ #x8818) 
(defconstant +luminance-alpha-float32-ati+ #x8819) 
(defconstant +rgba-float16-ati+ #x881A) 
(defconstant +rgb-float16-ati+ #x881B) 
(defconstant +alpha-float16-ati+ #x881C) 
(defconstant +intensity-float16-ati+ #x881D) 
(defconstant +luminance-float16-ati+ #x881E) 
(defconstant +luminance-alpha-float16-ati+ #x881F) 

;;;; Enumerations: NV_float_buffer

(defconstant +float-r-nv+ #x8880) 
(defconstant +float-rg-nv+ #x8881) 
(defconstant +float-rgb-nv+ #x8882) 
(defconstant +float-rgba-nv+ #x8883) 
(defconstant +float-r16-nv+ #x8884) 
(defconstant +float-r32-nv+ #x8885) 
(defconstant +float-rg16-nv+ #x8886) 
(defconstant +float-rg32-nv+ #x8887) 
(defconstant +float-rgb16-nv+ #x8888) 
(defconstant +float-rgb32-nv+ #x8889) 
(defconstant +float-rgba16-nv+ #x888A) 
(defconstant +float-rgba32-nv+ #x888B) 
(defconstant +texture-float-components-nv+ #x888C) 
(defconstant +float-clear-color-value-nv+ #x888D) 
(defconstant +float-rgba-mode-nv+ #x888E) 

;;;; Enumerations: NV_texture_expand_normal

(defconstant +texture-unsigned-remap-mode-nv+ #x888F) 

;;;; Enumerations: OES_read_format

(defconstant +implementation-color-read-type-oes+ #x8B9A) 
(defconstant +implementation-color-read-format-oes+ #x8B9B) 

;;;; Enumerations: EXT_texture_mirror_clamp

(defconstant +mirror-clamp-ext+ #x8742) 
(defconstant +mirror-clamp-to-edge-ext+ #x8743) 
(defconstant +mirror-clamp-to-border-ext+ #x8912) 

;;;; Enumerations: MESA_pack_invert

(defconstant +pack-invert-mesa+ #x8758) 

;;;; Enumerations: MESA_ycbcr_texture

(defconstant +unsigned-short-8-8-mesa+ #x85BA) 
(defconstant +unsigned-short-8-8-rev-mesa+ #x85BB) 
(defconstant +ycbcr-mesa+ #x8757) 

;;;; Enumerations: EXT_pixel_buffer_object

(defconstant +pixel-pack-buffer-ext+ #x88EB) 
(defconstant +pixel-unpack-buffer-ext+ #x88EC) 
(defconstant +pixel-pack-buffer-binding-ext+ #x88ED) 
(defconstant +pixel-unpack-buffer-binding-ext+ #x88EF) 

;;;; Enumerations: NV_fragment_program2

(defconstant +max-program-exec-instructions-nv+ #x88F4) 
(defconstant +max-program-call-depth-nv+ #x88F5) 
(defconstant +max-program-if-depth-nv+ #x88F6) 
(defconstant +max-program-loop-depth-nv+ #x88F7) 
(defconstant +max-program-loop-count-nv+ #x88F8) 

;;;; Enumerations: NV_vertex_program2_option
;; max_program_exec_instructions_nv already defined
;; max_program_call_depth_nv already defined

;;;; Enumerations: NV_vertex_program3

(defconstant +max-vertex-texture-image-units-arb+ #x8B4C) 

;;;; Enumerations: EXT_packed_depth_stencil

(defconstant +depth-stencil-ext+ #x84F9) 
(defconstant +unsigned-int-24-8-ext+ #x84FA) 
(defconstant +depth24-stencil8-ext+ #x88F0) 
(defconstant +texture-stencil-size-ext+ #x88F1) 

;;;; Enumerations: EXT_texture_sRGB

(defconstant +srgb-ext+ #x8C40) 
(defconstant +srgb8-ext+ #x8C41) 
(defconstant +srgb-alpha-ext+ #x8C42) 
(defconstant +srgb8-alpha8-ext+ #x8C43) 
(defconstant +sluminance-alpha-ext+ #x8C44) 
(defconstant +sluminance8-alpha8-ext+ #x8C45) 
(defconstant +sluminance-ext+ #x8C46) 
(defconstant +sluminance8-ext+ #x8C47) 
(defconstant +compressed-srgb-ext+ #x8C48) 
(defconstant +compressed-srgb-alpha-ext+ #x8C49) 
(defconstant +compressed-sluminance-ext+ #x8C4A) 
(defconstant +compressed-sluminance-alpha-ext+ #x8C4B) 
(defconstant +compressed-srgb-s3tc-dxt1-ext+ #x8C4C) 
(defconstant +compressed-srgb-alpha-s3tc-dxt1-ext+ #x8C4D) 
(defconstant +compressed-srgb-alpha-s3tc-dxt3-ext+ #x8C4E) 
(defconstant +compressed-srgb-alpha-s3tc-dxt5-ext+ #x8C4F) 

;;;; Enumerations: MESAX_texture_stack

(defconstant +texture-1d-stack-mesax+ #x8759) 
(defconstant +texture-2d-stack-mesax+ #x875A) 
(defconstant +proxy-texture-1d-stack-mesax+ #x875B) 
(defconstant +proxy-texture-2d-stack-mesax+ #x875C) 
(defconstant +texture-1d-stack-binding-mesax+ #x875D) 
(defconstant +texture-2d-stack-binding-mesax+ #x875E) 

;;;; Enumerations: EXT_packed_float

(defconstant +r11f-g11f-b10f-ext+ #x8C3A) 
(defconstant +unsigned-int-10f-11f-11f-rev-ext+ #x8C3B) 
(defconstant +rgba-signed-components-ext+ #x8C3C) 

;;;; Enumerations: EXT_texture_array

(defconstant +texture-1d-array-ext+ #x8C18) 
(defconstant +proxy-texture-1d-array-ext+ #x8C19) 
(defconstant +texture-2d-array-ext+ #x8C1A) 
(defconstant +proxy-texture-2d-array-ext+ #x8C1B) 
(defconstant +texture-binding-1d-array-ext+ #x8C1C) 
(defconstant +texture-binding-2d-array-ext+ #x8C1D) 
(defconstant +max-array-texture-layers-ext+ #x88FF) 
(defconstant +compare-ref-depth-to-texture-ext+ #x884E) 
(defconstant +framebuffer-attachment-texture-layer-ext+ #x8CD4) 

;;;; Enumerations: EXT_texture_compression_latc

(defconstant +compressed-luminance-latc1-ext+ #x8C70) 
(defconstant +compressed-signed-luminance-latc1-ext+ #x8C71) 
(defconstant +compressed-luminance-alpha-latc2-ext+ #x8C72) 
(defconstant +compressed-signed-luminance-alpha-latc2-ext+ #x8C73) 

;;;; Enumerations: EXT_texture_compression_rgtc

(defconstant +compressed-red-rgtc1-ext+ #x8DBB) 
(defconstant +compressed-signed-red-rgtc1-ext+ #x8DBC) 
(defconstant +compressed-red-green-rgtc2-ext+ #x8DBD) 
(defconstant +compressed-signed-red-green-rgtc2-ext+ #x8DBE) 

;;;; Enumerations: EXT_texture_shared_exponent

(defconstant +rgb9-e5-ext+ #x8C3D) 
(defconstant +unsigned-int-5-9-9-9-rev-ext+ #x8C3E) 
(defconstant +texture-shared-size-ext+ #x8C3F) 

;;;; Enumerations: EXT_framebuffer_sRGB

(defconstant +framebuffer-srgb-ext+ #x8DB9) 
(defconstant +framebuffer-srgb-capable-ext+ #x8DBA) 

;;;; display-list

(defglfun
 (("ListBase" list-base) :args ((:name |base| :type |List| :direction :in))
  :return ("void") :category ("display-list") :version ("1.0") :glxropcode
  ("3") :glsopcode ("0x0036") :offset ("6"))) 
(defglfun
 (("GenLists" gen-lists) :args ((:name |range| :type |SizeI| :direction :in))
  :return ("List") :dlflags ("notlistable") :category ("display-list") :version
  ("1.0") :glxsingle ("104") :glsopcode ("0x0035") :offset ("5"))) 
(defglfun
 (("DeleteLists" delete-lists) :args
  ((:name |list| :type |List| :direction :in)
   (:name |range| :type |SizeI| :direction :in))
  :return ("void") :dlflags ("notlistable") :category ("display-list") :version
  ("1.0") :glxsingle ("103") :glsopcode ("0x0034") :wglflags ("batchable")
  :offset ("4"))) 
(defglfun
 (("CallLists" call-lists) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |type| :type |ListNameType| :direction :in)
   (:name |lists| :type |Void| :direction :in :array t :size (|n| |type|)))
  :return ("void") :category ("display-list") :glxflags
  ("client-handcode" "server-handcode") :version ("1.0") :glxropcode ("2")
  :glsopcode ("0x0033") :offset ("3"))) 
(defglfun
 (("CallList" call-list) :args ((:name |list| :type |List| :direction :in))
  :return ("void") :category ("display-list") :version ("1.0") :glxropcode
  ("1") :glsopcode ("0x0032") :offset ("2"))) 
(defglfun
 (("EndList" end-list) :args nil :return ("void") :dlflags ("notlistable")
  :category ("display-list") :version ("1.0") :glxsingle ("102") :glsopcode
  ("0x0031") :wglflags ("batchable") :offset ("1"))) 
(defglfun
 (("NewList" new-list) :args
  ((:name |list| :type |List| :direction :in)
   (:name |mode| :type |ListMode| :direction :in))
  :return ("void") :dlflags ("notlistable") :category ("display-list") :version
  ("1.0") :glxsingle ("101") :glsopcode ("0x0030") :wglflags ("batchable")
  :offset ("0"))) 

;;;; drawing

(defglfun
 (("Vertex4sv" vertex-4sv) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("76") :glsopcode
  ("0x007F") :offset ("149"))) 
(defglfun
 (("Vertex4s" vertex-4s) :args
  ((:name |x| :type |CoordS| :direction :in)
   (:name |y| :type |CoordS| :direction :in)
   (:name |z| :type |CoordS| :direction :in)
   (:name |w| :type |CoordS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Vertex4sv") :version
  ("1.0") :offset ("148"))) 
(defglfun
 (("Vertex4iv" vertex-4iv) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("75") :glsopcode
  ("0x007E") :offset ("147"))) 
(defglfun
 (("Vertex4i" vertex-4i) :args
  ((:name |x| :type |CoordI| :direction :in)
   (:name |y| :type |CoordI| :direction :in)
   (:name |z| :type |CoordI| :direction :in)
   (:name |w| :type |CoordI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Vertex4iv") :version
  ("1.0") :offset ("146"))) 
(defglfun
 (("Vertex4fv" vertex-4fv) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("74") :glsopcode
  ("0x007D") :offset ("145"))) 
(defglfun
 (("Vertex4f" vertex-4f) :args
  ((:name |x| :type |CoordF| :direction :in)
   (:name |y| :type |CoordF| :direction :in)
   (:name |z| :type |CoordF| :direction :in)
   (:name |w| :type |CoordF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Vertex4fv") :version
  ("1.0") :offset ("144"))) 
(defglfun
 (("Vertex4dv" vertex-4dv) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("73") :glsopcode
  ("0x007C") :offset ("143"))) 
(defglfun
 (("Vertex4d" vertex-4d) :args
  ((:name |x| :type |CoordD| :direction :in)
   (:name |y| :type |CoordD| :direction :in)
   (:name |z| :type |CoordD| :direction :in)
   (:name |w| :type |CoordD| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Vertex4dv") :version
  ("1.0") :offset ("142"))) 
(defglfun
 (("Vertex3sv" vertex-3sv) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("72") :glsopcode
  ("0x007B") :offset ("141"))) 
(defglfun
 (("Vertex3s" vertex-3s) :args
  ((:name |x| :type |CoordS| :direction :in)
   (:name |y| :type |CoordS| :direction :in)
   (:name |z| :type |CoordS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Vertex3sv") :version
  ("1.0") :offset ("140"))) 
(defglfun
 (("Vertex3iv" vertex-3iv) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("71") :glsopcode
  ("0x007A") :offset ("139"))) 
(defglfun
 (("Vertex3i" vertex-3i) :args
  ((:name |x| :type |CoordI| :direction :in)
   (:name |y| :type |CoordI| :direction :in)
   (:name |z| :type |CoordI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Vertex3iv") :version
  ("1.0") :offset ("138"))) 
(defglfun
 (("Vertex3fv" vertex-3fv) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("70") :glsopcode
  ("0x0079") :offset ("137"))) 
(defglfun
 (("Vertex3f" vertex-3f) :args
  ((:name |x| :type |CoordF| :direction :in)
   (:name |y| :type |CoordF| :direction :in)
   (:name |z| :type |CoordF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Vertex3fv") :version
  ("1.0") :offset ("136"))) 
(defglfun
 (("Vertex3dv" vertex-3dv) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("69") :glsopcode
  ("0x0078") :offset ("135"))) 
(defglfun
 (("Vertex3d" vertex-3d) :args
  ((:name |x| :type |CoordD| :direction :in)
   (:name |y| :type |CoordD| :direction :in)
   (:name |z| :type |CoordD| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Vertex3dv") :version
  ("1.0") :offset ("134"))) 
(defglfun
 (("Vertex2sv" vertex-2sv) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x2)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("68") :glsopcode
  ("0x0077") :offset ("133"))) 
(defglfun
 (("Vertex2s" vertex-2s) :args
  ((:name |x| :type |CoordS| :direction :in)
   (:name |y| :type |CoordS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Vertex2sv") :version
  ("1.0") :offset ("132"))) 
(defglfun
 (("Vertex2iv" vertex-2iv) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x2)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("67") :glsopcode
  ("0x0076") :offset ("131"))) 
(defglfun
 (("Vertex2i" vertex-2i) :args
  ((:name |x| :type |CoordI| :direction :in)
   (:name |y| :type |CoordI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Vertex2iv") :version
  ("1.0") :offset ("130"))) 
(defglfun
 (("Vertex2fv" vertex-2fv) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x2)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("66") :glsopcode
  ("0x0075") :offset ("129"))) 
(defglfun
 (("Vertex2f" vertex-2f) :args
  ((:name |x| :type |CoordF| :direction :in)
   (:name |y| :type |CoordF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Vertex2fv") :version
  ("1.0") :offset ("128"))) 
(defglfun
 (("Vertex2dv" vertex-2dv) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x2)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("65") :glsopcode
  ("0x0074") :offset ("127"))) 
(defglfun
 (("Vertex2d" vertex-2d) :args
  ((:name |x| :type |CoordD| :direction :in)
   (:name |y| :type |CoordD| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Vertex2dv") :version
  ("1.0") :offset ("126"))) 
(defglfun
 (("TexCoord4sv" tex-coord-4sv) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("64") :glsopcode
  ("0x0073") :offset ("125"))) 
(defglfun
 (("TexCoord4s" tex-coord-4s) :args
  ((:name |s| :type |CoordS| :direction :in)
   (:name |t| :type |CoordS| :direction :in)
   (:name |r| :type |CoordS| :direction :in)
   (:name |q| :type |CoordS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord4sv") :version
  ("1.0") :offset ("124"))) 
(defglfun
 (("TexCoord4iv" tex-coord-4iv) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("63") :glsopcode
  ("0x0072") :offset ("123"))) 
(defglfun
 (("TexCoord4i" tex-coord-4i) :args
  ((:name |s| :type |CoordI| :direction :in)
   (:name |t| :type |CoordI| :direction :in)
   (:name |r| :type |CoordI| :direction :in)
   (:name |q| :type |CoordI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord4iv") :version
  ("1.0") :offset ("122"))) 
(defglfun
 (("TexCoord4fv" tex-coord-4fv) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("62") :glsopcode
  ("0x0071") :offset ("121"))) 
(defglfun
 (("TexCoord4f" tex-coord-4f) :args
  ((:name |s| :type |CoordF| :direction :in)
   (:name |t| :type |CoordF| :direction :in)
   (:name |r| :type |CoordF| :direction :in)
   (:name |q| :type |CoordF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord4fv") :version
  ("1.0") :offset ("120"))) 
(defglfun
 (("TexCoord4dv" tex-coord-4dv) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("61") :glsopcode
  ("0x0070") :offset ("119"))) 
(defglfun
 (("TexCoord4d" tex-coord-4d) :args
  ((:name |s| :type |CoordD| :direction :in)
   (:name |t| :type |CoordD| :direction :in)
   (:name |r| :type |CoordD| :direction :in)
   (:name |q| :type |CoordD| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord4dv") :version
  ("1.0") :offset ("118"))) 
(defglfun
 (("TexCoord3sv" tex-coord-3sv) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("60") :glsopcode
  ("0x006F") :offset ("117"))) 
(defglfun
 (("TexCoord3s" tex-coord-3s) :args
  ((:name |s| :type |CoordS| :direction :in)
   (:name |t| :type |CoordS| :direction :in)
   (:name |r| :type |CoordS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord3sv") :version
  ("1.0") :offset ("116"))) 
(defglfun
 (("TexCoord3iv" tex-coord-3iv) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("59") :glsopcode
  ("0x006E") :offset ("115"))) 
(defglfun
 (("TexCoord3i" tex-coord-3i) :args
  ((:name |s| :type |CoordI| :direction :in)
   (:name |t| :type |CoordI| :direction :in)
   (:name |r| :type |CoordI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord3iv") :version
  ("1.0") :offset ("114"))) 
(defglfun
 (("TexCoord3fv" tex-coord-3fv) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("58") :glsopcode
  ("0x006D") :offset ("113"))) 
(defglfun
 (("TexCoord3f" tex-coord-3f) :args
  ((:name |s| :type |CoordF| :direction :in)
   (:name |t| :type |CoordF| :direction :in)
   (:name |r| :type |CoordF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord3fv") :version
  ("1.0") :offset ("112"))) 
(defglfun
 (("TexCoord3dv" tex-coord-3dv) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("57") :glsopcode
  ("0x006C") :offset ("111"))) 
(defglfun
 (("TexCoord3d" tex-coord-3d) :args
  ((:name |s| :type |CoordD| :direction :in)
   (:name |t| :type |CoordD| :direction :in)
   (:name |r| :type |CoordD| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord3dv") :version
  ("1.0") :offset ("110"))) 
(defglfun
 (("TexCoord2sv" tex-coord-2sv) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x2)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("56") :glsopcode
  ("0x006B") :offset ("109"))) 
(defglfun
 (("TexCoord2s" tex-coord-2s) :args
  ((:name |s| :type |CoordS| :direction :in)
   (:name |t| :type |CoordS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord2sv") :version
  ("1.0") :offset ("108"))) 
(defglfun
 (("TexCoord2iv" tex-coord-2iv) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x2)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("55") :glsopcode
  ("0x006A") :offset ("107"))) 
(defglfun
 (("TexCoord2i" tex-coord-2i) :args
  ((:name |s| :type |CoordI| :direction :in)
   (:name |t| :type |CoordI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord2iv") :version
  ("1.0") :offset ("106"))) 
(defglfun
 (("TexCoord2fv" tex-coord-2fv) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x2)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("54") :glsopcode
  ("0x0069") :offset ("105"))) 
(defglfun
 (("TexCoord2f" tex-coord-2f) :args
  ((:name |s| :type |CoordF| :direction :in)
   (:name |t| :type |CoordF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord2fv") :version
  ("1.0") :offset ("104"))) 
(defglfun
 (("TexCoord2dv" tex-coord-2dv) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x2)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("53") :glsopcode
  ("0x0068") :offset ("103"))) 
(defglfun
 (("TexCoord2d" tex-coord-2d) :args
  ((:name |s| :type |CoordD| :direction :in)
   (:name |t| :type |CoordD| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord2dv") :version
  ("1.0") :offset ("102"))) 
(defglfun
 (("TexCoord1sv" tex-coord-1sv) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x1)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("52") :glsopcode
  ("0x0067") :offset ("101"))) 
(defglfun
 (("TexCoord1s" tex-coord-1s) :args ((:name |s| :type |CoordS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord1sv") :version
  ("1.0") :offset ("100"))) 
(defglfun
 (("TexCoord1iv" tex-coord-1iv) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x1)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("51") :glsopcode
  ("0x0066") :offset ("99"))) 
(defglfun
 (("TexCoord1i" tex-coord-1i) :args ((:name |s| :type |CoordI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord1iv") :version
  ("1.0") :offset ("98"))) 
(defglfun
 (("TexCoord1fv" tex-coord-1fv) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x1)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("50") :glsopcode
  ("0x0065") :offset ("97"))) 
(defglfun
 (("TexCoord1f" tex-coord-1f) :args ((:name |s| :type |CoordF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord1fv") :version
  ("1.0") :offset ("96"))) 
(defglfun
 (("TexCoord1dv" tex-coord-1dv) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x1)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("49") :glsopcode
  ("0x0064") :offset ("95"))) 
(defglfun
 (("TexCoord1d" tex-coord-1d) :args ((:name |s| :type |CoordD| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("TexCoord1dv") :version
  ("1.0") :offset ("94"))) 
(defglfun
 (("Rectsv" rect-sv) :args
  ((:name |v1| :type |CoordS| :direction :in :array t :size #x2)
   (:name |v2| :type |CoordS| :direction :in :array t :size #x2))
  :return ("void") :category ("drawing") :version ("1.0") :glxropcode ("48")
  :glsopcode ("0x0063") :offset ("93"))) 
(defglfun
 (("Rects" rect-s) :args
  ((:name |x1| :type |CoordS| :direction :in)
   (:name |y1| :type |CoordS| :direction :in)
   (:name |x2| :type |CoordS| :direction :in)
   (:name |y2| :type |CoordS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Rectsv") :version
  ("1.0") :offset ("92"))) 
(defglfun
 (("Rectiv" rect-iv) :args
  ((:name |v1| :type |CoordI| :direction :in :array t :size #x2)
   (:name |v2| :type |CoordI| :direction :in :array t :size #x2))
  :return ("void") :category ("drawing") :version ("1.0") :glxropcode ("47")
  :glsopcode ("0x0062") :offset ("91"))) 
(defglfun
 (("Recti" rect-i) :args
  ((:name |x1| :type |CoordI| :direction :in)
   (:name |y1| :type |CoordI| :direction :in)
   (:name |x2| :type |CoordI| :direction :in)
   (:name |y2| :type |CoordI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Rectiv") :version
  ("1.0") :offset ("90"))) 
(defglfun
 (("Rectfv" rect-fv) :args
  ((:name |v1| :type |CoordF| :direction :in :array t :size #x2)
   (:name |v2| :type |CoordF| :direction :in :array t :size #x2))
  :return ("void") :category ("drawing") :version ("1.0") :glxropcode ("46")
  :glsopcode ("0x0061") :offset ("89"))) 
(defglfun
 (("Rectf" rect-f) :args
  ((:name |x1| :type |CoordF| :direction :in)
   (:name |y1| :type |CoordF| :direction :in)
   (:name |x2| :type |CoordF| :direction :in)
   (:name |y2| :type |CoordF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Rectfv") :version
  ("1.0") :offset ("88"))) 
(defglfun
 (("Rectdv" rect-dv) :args
  ((:name |v1| :type |CoordD| :direction :in :array t :size #x2)
   (:name |v2| :type |CoordD| :direction :in :array t :size #x2))
  :return ("void") :category ("drawing") :version ("1.0") :glxropcode ("45")
  :glsopcode ("0x0060") :offset ("87"))) 
(defglfun
 (("Rectd" rect-d) :args
  ((:name |x1| :type |CoordD| :direction :in)
   (:name |y1| :type |CoordD| :direction :in)
   (:name |x2| :type |CoordD| :direction :in)
   (:name |y2| :type |CoordD| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Rectdv") :version
  ("1.0") :offset ("86"))) 
(defglfun
 (("RasterPos4sv" raster-pos-4sv) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("44") :glsopcode
  ("0x005F") :offset ("85"))) 
(defglfun
 (("RasterPos4s" raster-pos-4s) :args
  ((:name |x| :type |CoordS| :direction :in)
   (:name |y| :type |CoordS| :direction :in)
   (:name |z| :type |CoordS| :direction :in)
   (:name |w| :type |CoordS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("RasterPos4sv") :version
  ("1.0") :offset ("84"))) 
(defglfun
 (("RasterPos4iv" raster-pos-4iv) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("43") :glsopcode
  ("0x005E") :offset ("83"))) 
(defglfun
 (("RasterPos4i" raster-pos-4i) :args
  ((:name |x| :type |CoordI| :direction :in)
   (:name |y| :type |CoordI| :direction :in)
   (:name |z| :type |CoordI| :direction :in)
   (:name |w| :type |CoordI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("RasterPos4iv") :version
  ("1.0") :offset ("82"))) 
(defglfun
 (("RasterPos4fv" raster-pos-4fv) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("42") :glsopcode
  ("0x005D") :offset ("81"))) 
(defglfun
 (("RasterPos4f" raster-pos-4f) :args
  ((:name |x| :type |CoordF| :direction :in)
   (:name |y| :type |CoordF| :direction :in)
   (:name |z| :type |CoordF| :direction :in)
   (:name |w| :type |CoordF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("RasterPos4fv") :version
  ("1.0") :offset ("80"))) 
(defglfun
 (("RasterPos4dv" raster-pos-4dv) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("41") :glsopcode
  ("0x005C") :offset ("79"))) 
(defglfun
 (("RasterPos4d" raster-pos-4d) :args
  ((:name |x| :type |CoordD| :direction :in)
   (:name |y| :type |CoordD| :direction :in)
   (:name |z| :type |CoordD| :direction :in)
   (:name |w| :type |CoordD| :direction :in))
  :return ("void") :vectorequiv ("RasterPos4dv") :category ("drawing") :version
  ("1.0") :offset ("78"))) 
(defglfun
 (("RasterPos3sv" raster-pos-3sv) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("40") :glsopcode
  ("0x005B") :offset ("77"))) 
(defglfun
 (("RasterPos3s" raster-pos-3s) :args
  ((:name |x| :type |CoordS| :direction :in)
   (:name |y| :type |CoordS| :direction :in)
   (:name |z| :type |CoordS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("RasterPos3sv") :version
  ("1.0") :offset ("76"))) 
(defglfun
 (("RasterPos3iv" raster-pos-3iv) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("39") :glsopcode
  ("0x005A") :offset ("75"))) 
(defglfun
 (("RasterPos3i" raster-pos-3i) :args
  ((:name |x| :type |CoordI| :direction :in)
   (:name |y| :type |CoordI| :direction :in)
   (:name |z| :type |CoordI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("RasterPos3iv") :version
  ("1.0") :offset ("74"))) 
(defglfun
 (("RasterPos3fv" raster-pos-3fv) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("38") :glsopcode
  ("0x0059") :offset ("73"))) 
(defglfun
 (("RasterPos3f" raster-pos-3f) :args
  ((:name |x| :type |CoordF| :direction :in)
   (:name |y| :type |CoordF| :direction :in)
   (:name |z| :type |CoordF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("RasterPos3fv") :version
  ("1.0") :offset ("72"))) 
(defglfun
 (("RasterPos3dv" raster-pos-3dv) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("37") :glsopcode
  ("0x0058") :offset ("71"))) 
(defglfun
 (("RasterPos3d" raster-pos-3d) :args
  ((:name |x| :type |CoordD| :direction :in)
   (:name |y| :type |CoordD| :direction :in)
   (:name |z| :type |CoordD| :direction :in))
  :return ("void") :vectorequiv ("RasterPos3dv") :category ("drawing") :version
  ("1.0") :offset ("70"))) 
(defglfun
 (("RasterPos2sv" raster-pos-2sv) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x2)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("36") :glsopcode
  ("0x0057") :offset ("69"))) 
(defglfun
 (("RasterPos2s" raster-pos-2s) :args
  ((:name |x| :type |CoordS| :direction :in)
   (:name |y| :type |CoordS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("RasterPos2sv") :version
  ("1.0") :offset ("68"))) 
(defglfun
 (("RasterPos2iv" raster-pos-2iv) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x2)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("35") :glsopcode
  ("0x0056") :offset ("67"))) 
(defglfun
 (("RasterPos2i" raster-pos-2i) :args
  ((:name |x| :type |CoordI| :direction :in)
   (:name |y| :type |CoordI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("RasterPos2iv") :version
  ("1.0") :offset ("66"))) 
(defglfun
 (("RasterPos2fv" raster-pos-2fv) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x2)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("34") :glsopcode
  ("0x0055") :offset ("65"))) 
(defglfun
 (("RasterPos2f" raster-pos-2f) :args
  ((:name |x| :type |CoordF| :direction :in)
   (:name |y| :type |CoordF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("RasterPos2fv") :version
  ("1.0") :offset ("64"))) 
(defglfun
 (("RasterPos2dv" raster-pos-2dv) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x2)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("33") :glsopcode
  ("0x0054") :offset ("63"))) 
(defglfun
 (("RasterPos2d" raster-pos-2d) :args
  ((:name |x| :type |CoordD| :direction :in)
   (:name |y| :type |CoordD| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("RasterPos2dv") :version
  ("1.0") :offset ("62"))) 
(defglfun
 (("Normal3sv" normal-3sv) :args
  ((:name |v| :type |Int16| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("32") :glsopcode
  ("0x0053") :offset ("61"))) 
(defglfun
 (("Normal3s" normal-3s) :args
  ((:name |nx| :type |Int16| :direction :in)
   (:name |ny| :type |Int16| :direction :in)
   (:name |nz| :type |Int16| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Normal3sv") :version
  ("1.0") :offset ("60"))) 
(defglfun
 (("Normal3iv" normal-3iv) :args
  ((:name |v| :type |Int32| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("31") :glsopcode
  ("0x0052") :offset ("59"))) 
(defglfun
 (("Normal3i" normal-3i) :args
  ((:name |nx| :type |Int32| :direction :in)
   (:name |ny| :type |Int32| :direction :in)
   (:name |nz| :type |Int32| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Normal3iv") :version
  ("1.0") :offset ("58"))) 
(defglfun
 (("Normal3fv" normal-3fv) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("30") :glsopcode
  ("0x0051") :offset ("57"))) 
(defglfun
 (("Normal3f" normal-3f) :args
  ((:name |nx| :type |CoordF| :direction :in)
   (:name |ny| :type |CoordF| :direction :in)
   (:name |nz| :type |CoordF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Normal3fv") :version
  ("1.0") :offset ("56"))) 
(defglfun
 (("Normal3dv" normal-3dv) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("29") :glsopcode
  ("0x0050") :offset ("55"))) 
(defglfun
 (("Normal3d" normal-3d) :args
  ((:name |nx| :type |CoordD| :direction :in)
   (:name |ny| :type |CoordD| :direction :in)
   (:name |nz| :type |CoordD| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Normal3dv") :version
  ("1.0") :offset ("54"))) 
(defglfun
 (("Normal3bv" normal-3bv) :args
  ((:name |v| :type |Int8| :direction :in :array t :size #x3)) :return ("void")
  :category ("drawing") :version ("1.0") :glxropcode ("28") :glsopcode
  ("0x004F") :offset ("53"))) 
(defglfun
 (("Normal3b" normal-3b) :args
  ((:name |nx| :type |Int8| :direction :in)
   (:name |ny| :type |Int8| :direction :in)
   (:name |nz| :type |Int8| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Normal3bv") :version
  ("1.0") :offset ("52"))) 
(defglfun
 (("Indexsv" index-sv) :args
  ((:name |c| :type |ColorIndexValueS| :direction :in :array t :size #x1))
  :return ("void") :category ("drawing") :version ("1.0") :glxropcode ("27")
  :glsopcode ("0x004E") :offset ("51"))) 
(defglfun
 (("Indexs" index-s) :args
  ((:name |c| :type |ColorIndexValueS| :direction :in)) :return ("void")
  :category ("drawing") :vectorequiv ("Indexsv") :version ("1.0") :offset
  ("50"))) 
(defglfun
 (("Indexiv" index-iv) :args
  ((:name |c| :type |ColorIndexValueI| :direction :in :array t :size #x1))
  :return ("void") :category ("drawing") :version ("1.0") :glxropcode ("26")
  :glsopcode ("0x004D") :offset ("49"))) 
(defglfun
 (("Indexi" index-i) :args
  ((:name |c| :type |ColorIndexValueI| :direction :in)) :return ("void")
  :category ("drawing") :vectorequiv ("Indexiv") :version ("1.0") :offset
  ("48"))) 
(defglfun
 (("Indexfv" index-fv) :args
  ((:name |c| :type |ColorIndexValueF| :direction :in :array t :size #x1))
  :return ("void") :category ("drawing") :version ("1.0") :glxropcode ("25")
  :glsopcode ("0x004C") :offset ("47"))) 
(defglfun
 (("Indexf" index-f) :args
  ((:name |c| :type |ColorIndexValueF| :direction :in)) :return ("void")
  :category ("drawing") :vectorequiv ("Indexfv") :version ("1.0") :offset
  ("46"))) 
(defglfun
 (("Indexdv" index-dv) :args
  ((:name |c| :type |ColorIndexValueD| :direction :in :array t :size #x1))
  :return ("void") :category ("drawing") :version ("1.0") :glxropcode ("24")
  :glsopcode ("0x004B") :offset ("45"))) 
(defglfun
 (("Indexd" index-d) :args
  ((:name |c| :type |ColorIndexValueD| :direction :in)) :return ("void")
  :category ("drawing") :vectorequiv ("Indexdv") :version ("1.0") :offset
  ("44"))) 
(defglfun
 (("End" end) :args nil :return ("void") :category ("drawing") :version ("1.0")
  :glxropcode ("23") :glsopcode ("0x004A") :offset ("43"))) 
(defglfun
 (("EdgeFlagv" edge-flagv) :args
  ((:name |flag| :type |Boolean| :direction :in :array t :size #x1)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("22") :glsopcode
  ("0x0049") :offset ("42"))) 
(defglfun
 (("EdgeFlag" edge-flag) :args ((:name |flag| :type |Boolean| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("EdgeFlagv") :version
  ("1.0") :offset ("41"))) 
(defglfun
 (("Color4usv" color-4usv) :args
  ((:name |v| :type |ColorUS| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("21") :glsopcode
  ("0x0048") :offset ("40"))) 
(defglfun
 (("Color4us" color-4us) :args
  ((:name |red| :type |ColorUS| :direction :in)
   (:name |green| :type |ColorUS| :direction :in)
   (:name |blue| :type |ColorUS| :direction :in)
   (:name |alpha| :type |ColorUS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color4usv") :version
  ("1.0") :offset ("39"))) 
(defglfun
 (("Color4uiv" color-4uiv) :args
  ((:name |v| :type |ColorUI| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("20") :glsopcode
  ("0x0047") :offset ("38"))) 
(defglfun
 (("Color4ui" color-4ui) :args
  ((:name |red| :type |ColorUI| :direction :in)
   (:name |green| :type |ColorUI| :direction :in)
   (:name |blue| :type |ColorUI| :direction :in)
   (:name |alpha| :type |ColorUI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color4uiv") :version
  ("1.0") :offset ("37"))) 
(defglfun
 (("Color4ubv" color-4ubv) :args
  ((:name |v| :type |ColorUB| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("19") :glsopcode
  ("0x0046") :offset ("36"))) 
(defglfun
 (("Color4ub" color-4ub) :args
  ((:name |red| :type |ColorUB| :direction :in)
   (:name |green| :type |ColorUB| :direction :in)
   (:name |blue| :type |ColorUB| :direction :in)
   (:name |alpha| :type |ColorUB| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color4ubv") :version
  ("1.0") :offset ("35"))) 
(defglfun
 (("Color4sv" color-4sv) :args
  ((:name |v| :type |ColorS| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("18") :glsopcode
  ("0x0045") :offset ("34"))) 
(defglfun
 (("Color4s" color-4s) :args
  ((:name |red| :type |ColorS| :direction :in)
   (:name |green| :type |ColorS| :direction :in)
   (:name |blue| :type |ColorS| :direction :in)
   (:name |alpha| :type |ColorS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color4sv") :version
  ("1.0") :offset ("33"))) 
(defglfun
 (("Color4iv" color-4iv) :args
  ((:name |v| :type |ColorI| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("17") :glsopcode
  ("0x0044") :offset ("32"))) 
(defglfun
 (("Color4i" color-4i) :args
  ((:name |red| :type |ColorI| :direction :in)
   (:name |green| :type |ColorI| :direction :in)
   (:name |blue| :type |ColorI| :direction :in)
   (:name |alpha| :type |ColorI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color4iv") :version
  ("1.0") :offset ("31"))) 
(defglfun
 (("Color4fv" color-4fv) :args
  ((:name |v| :type |ColorF| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("16") :glsopcode
  ("0x0043") :offset ("30"))) 
(defglfun
 (("Color4f" color-4f) :args
  ((:name |red| :type |ColorF| :direction :in)
   (:name |green| :type |ColorF| :direction :in)
   (:name |blue| :type |ColorF| :direction :in)
   (:name |alpha| :type |ColorF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color4fv") :version
  ("1.0") :offset ("29"))) 
(defglfun
 (("Color4dv" color-4dv) :args
  ((:name |v| :type |ColorD| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("15") :glsopcode
  ("0x0042") :offset ("28"))) 
(defglfun
 (("Color4d" color-4d) :args
  ((:name |red| :type |ColorD| :direction :in)
   (:name |green| :type |ColorD| :direction :in)
   (:name |blue| :type |ColorD| :direction :in)
   (:name |alpha| :type |ColorD| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color4dv") :version
  ("1.0") :offset ("27"))) 
(defglfun
 (("Color4bv" color-4bv) :args
  ((:name |v| :type |ColorB| :direction :in :array t :size #x4)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("14") :glsopcode
  ("0x0041") :offset ("26"))) 
(defglfun
 (("Color4b" color-4b) :args
  ((:name |red| :type |ColorB| :direction :in)
   (:name |green| :type |ColorB| :direction :in)
   (:name |blue| :type |ColorB| :direction :in)
   (:name |alpha| :type |ColorB| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color4bv") :version
  ("1.0") :offset ("25"))) 
(defglfun
 (("Color3usv" color-3usv) :args
  ((:name |v| :type |ColorUS| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("13") :glsopcode
  ("0x0040") :offset ("24"))) 
(defglfun
 (("Color3us" color-3us) :args
  ((:name |red| :type |ColorUS| :direction :in)
   (:name |green| :type |ColorUS| :direction :in)
   (:name |blue| :type |ColorUS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color3usv") :version
  ("1.0") :offset ("23"))) 
(defglfun
 (("Color3uiv" color-3uiv) :args
  ((:name |v| :type |ColorUI| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("12") :glsopcode
  ("0x003F") :offset ("22"))) 
(defglfun
 (("Color3ui" color-3ui) :args
  ((:name |red| :type |ColorUI| :direction :in)
   (:name |green| :type |ColorUI| :direction :in)
   (:name |blue| :type |ColorUI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color3uiv") :version
  ("1.0") :offset ("21"))) 
(defglfun
 (("Color3ubv" color-3ubv) :args
  ((:name |v| :type |ColorUB| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("11") :glsopcode
  ("0x003E") :offset ("20"))) 
(defglfun
 (("Color3ub" color-3ub) :args
  ((:name |red| :type |ColorUB| :direction :in)
   (:name |green| :type |ColorUB| :direction :in)
   (:name |blue| :type |ColorUB| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color3ubv") :version
  ("1.0") :offset ("19"))) 
(defglfun
 (("Color3sv" color-3sv) :args
  ((:name |v| :type |ColorS| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("10") :glsopcode
  ("0x003D") :offset ("18"))) 
(defglfun
 (("Color3s" color-3s) :args
  ((:name |red| :type |ColorS| :direction :in)
   (:name |green| :type |ColorS| :direction :in)
   (:name |blue| :type |ColorS| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color3sv") :version
  ("1.0") :offset ("17"))) 
(defglfun
 (("Color3iv" color-3iv) :args
  ((:name |v| :type |ColorI| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("9") :glsopcode
  ("0x003C") :offset ("16"))) 
(defglfun
 (("Color3i" color-3i) :args
  ((:name |red| :type |ColorI| :direction :in)
   (:name |green| :type |ColorI| :direction :in)
   (:name |blue| :type |ColorI| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color3iv") :version
  ("1.0") :offset ("15"))) 
(defglfun
 (("Color3fv" color-3fv) :args
  ((:name |v| :type |ColorF| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("8") :glsopcode
  ("0x003B") :offset ("14"))) 
(defglfun
 (("Color3f" color-3f) :args
  ((:name |red| :type |ColorF| :direction :in)
   (:name |green| :type |ColorF| :direction :in)
   (:name |blue| :type |ColorF| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color3fv") :version
  ("1.0") :offset ("13"))) 
(defglfun
 (("Color3dv" color-3dv) :args
  ((:name |v| :type |ColorD| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("7") :glsopcode
  ("0x003A") :offset ("12"))) 
(defglfun
 (("Color3d" color-3d) :args
  ((:name |red| :type |ColorD| :direction :in)
   (:name |green| :type |ColorD| :direction :in)
   (:name |blue| :type |ColorD| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color3dv") :version
  ("1.0") :offset ("11"))) 
(defglfun
 (("Color3bv" color-3bv) :args
  ((:name |v| :type |ColorB| :direction :in :array t :size #x3)) :return
  ("void") :category ("drawing") :version ("1.0") :glxropcode ("6") :glsopcode
  ("0x0039") :offset ("10"))) 
(defglfun
 (("Color3b" color-3b) :args
  ((:name |red| :type |ColorB| :direction :in)
   (:name |green| :type |ColorB| :direction :in)
   (:name |blue| :type |ColorB| :direction :in))
  :return ("void") :category ("drawing") :vectorequiv ("Color3bv") :version
  ("1.0") :offset ("9"))) 
(defglfun
 (("Bitmap" bitmap) :args
  ((:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |xorig| :type |CoordF| :direction :in)
   (:name |yorig| :type |CoordF| :direction :in)
   (:name |xmove| :type |CoordF| :direction :in)
   (:name |ymove| :type |CoordF| :direction :in)
   (:name |bitmap| :type |UInt8| :direction :in :array t :size
    (|width| |height|)))
  :return ("void") :category ("drawing") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode") :version ("1.0") :glxropcode ("5")
  :glsflags ("pixel-unpack") :glsopcode ("0x0038") :wglflags
  ("client-handcode" "server-handcode") :offset ("8"))) 
(defglfun
 (("Begin" begin) :args ((:name |mode| :type |BeginMode| :direction :in))
  :return ("void") :category ("drawing") :version ("1.0") :glxropcode ("4")
  :glsopcode ("0x0037") :offset ("7"))) 

;;;; drawing-control

(defglfun
 (("TexGeniv" tex-gen-iv) :args
  ((:name |coord| :type |TextureCoordName| :direction :in)
   (:name |pname| :type |TextureGenParameter| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("120") :glsflags ("gl-enum") :glsopcode ("0x00AB") :wglflags ("small-data")
  :offset ("193"))) 
(defglfun
 (("TexGeni" tex-gen-i) :args
  ((:name |coord| :type |TextureCoordName| :direction :in)
   (:name |pname| :type |TextureGenParameter| :direction :in)
   (:name |param| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("119") :glsflags ("gl-enum") :glsopcode ("0x00AA") :wglflags ("small-data")
  :offset ("192"))) 
(defglfun
 (("TexGenfv" tex-gen-fv) :args
  ((:name |coord| :type |TextureCoordName| :direction :in)
   (:name |pname| :type |TextureGenParameter| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("118") :glsflags ("gl-enum") :glsopcode ("0x00A9") :wglflags ("small-data")
  :offset ("191"))) 
(defglfun
 (("TexGenf" tex-gen-f) :args
  ((:name |coord| :type |TextureCoordName| :direction :in)
   (:name |pname| :type |TextureGenParameter| :direction :in)
   (:name |param| :type |CheckedFloat32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("117") :glsflags ("gl-enum") :glsopcode ("0x00A8") :wglflags ("small-data")
  :offset ("190"))) 
(defglfun
 (("TexGendv" tex-gen-dv) :args
  ((:name |coord| :type |TextureCoordName| :direction :in)
   (:name |pname| :type |TextureGenParameter| :direction :in)
   (:name |params| :type |Float64| :direction :in :array t :size (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("116") :glsflags ("gl-enum") :glsopcode ("0x00A7") :wglflags ("small-data")
  :offset ("189"))) 
(defglfun
 (("TexGend" tex-gen-d) :args
  ((:name |coord| :type |TextureCoordName| :direction :in)
   (:name |pname| :type |TextureGenParameter| :direction :in)
   (:name |param| :type |Float64| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("115") :glsflags ("gl-enum") :glsopcode ("0x00A6") :wglflags ("small-data")
  :offset ("188"))) 
(defglfun
 (("TexEnviv" tex-env-iv) :args
  ((:name |target| :type |TextureEnvTarget| :direction :in)
   (:name |pname| :type |TextureEnvParameter| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("114") :glsflags ("gl-enum") :glsopcode ("0x00A5") :wglflags ("small-data")
  :offset ("187"))) 
(defglfun
 (("TexEnvi" tex-env-i) :args
  ((:name |target| :type |TextureEnvTarget| :direction :in)
   (:name |pname| :type |TextureEnvParameter| :direction :in)
   (:name |param| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("113") :glsflags ("gl-enum") :glsopcode ("0x00A4") :wglflags ("small-data")
  :offset ("186"))) 
(defglfun
 (("TexEnvfv" tex-env-fv) :args
  ((:name |target| :type |TextureEnvTarget| :direction :in)
   (:name |pname| :type |TextureEnvParameter| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("112") :glsflags ("gl-enum") :glsopcode ("0x00A3") :wglflags ("small-data")
  :offset ("185"))) 
(defglfun
 (("TexEnvf" tex-env-f) :args
  ((:name |target| :type |TextureEnvTarget| :direction :in)
   (:name |pname| :type |TextureEnvParameter| :direction :in)
   (:name |param| :type |CheckedFloat32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("111") :glsflags ("gl-enum") :glsopcode ("0x00A2") :wglflags ("small-data")
  :offset ("184"))) 
(defglfun
 (("TexImage2D" tex-image-2d) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |internalformat| :type |TextureComponentCount| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |border| :type |CheckedInt32| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |pixels| :type |Void| :direction :in :array t :size
    (|format| |type| |width| |height|)))
  :return ("void") :category ("drawing-control") :dlflags ("handcode")
  :glxflags ("client-handcode" "server-handcode") :version ("1.0") :glxropcode
  ("110") :glsflags ("pixel-null" "pixel-unpack") :glsopcode ("0x00A1")
  :wglflags ("client-handcode" "server-handcode") :offset ("183"))) 
(defglfun
 (("TexImage1D" tex-image-1d) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |internalformat| :type |TextureComponentCount| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |border| :type |CheckedInt32| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |pixels| :type |Void| :direction :in :array t :size
    (|format| |type| |width|)))
  :return ("void") :category ("drawing-control") :dlflags ("handcode")
  :glxflags ("client-handcode" "server-handcode") :version ("1.0") :glxropcode
  ("109") :glsflags ("pixel-null" "pixel-unpack") :glsopcode ("0x00A0")
  :wglflags ("client-handcode" "server-handcode") :offset ("182"))) 
(defglfun
 (("TexParameteriv" tex-parameter-iv) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |pname| :type |TextureParameterName| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("108") :glsflags ("gl-enum") :glsopcode ("0x009F") :wglflags ("small-data")
  :offset ("181"))) 
(defglfun
 (("TexParameteri" tex-parameter-i) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |pname| :type |TextureParameterName| :direction :in)
   (:name |param| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("107") :glsflags ("gl-enum") :glsopcode ("0x009E") :wglflags ("small-data")
  :offset ("180"))) 
(defglfun
 (("TexParameterfv" tex-parameter-fv) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |pname| :type |TextureParameterName| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("106") :glsflags ("gl-enum") :glsopcode ("0x009D") :wglflags ("small-data")
  :offset ("179"))) 
(defglfun
 (("TexParameterf" tex-parameter-f) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |pname| :type |TextureParameterName| :direction :in)
   (:name |param| :type |CheckedFloat32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("105") :glsflags ("gl-enum") :glsopcode ("0x009C") :wglflags ("small-data")
  :offset ("178"))) 
(defglfun
 (("ShadeModel" shade-model) :args
  ((:name |mode| :type |ShadingModel| :direction :in)) :return ("void")
  :category ("drawing-control") :version ("1.0") :glxropcode ("104") :glsopcode
  ("0x009B") :offset ("177"))) 
(defglfun
 (("Scissor" scissor) :args
  ((:name |x| :type |WinCoord| :direction :in)
   (:name |y| :type |WinCoord| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("103") :glsopcode ("0x009A") :offset ("176"))) 
(defglfun
 (("PolygonStipple" polygon-stipple) :args
  ((:name |mask| :type |UInt8| :direction :in :array t)) :return ("void")
  :category ("drawing-control") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode") :version ("1.0") :glxropcode ("102")
  :glsflags ("pixel-unpack") :glsopcode ("0x0099") :wglflags
  ("client-handcode" "server-handcode") :offset ("175"))) 
(defglfun
 (("PolygonMode" polygon-mode) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |mode| :type |PolygonMode| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("101") :glsopcode ("0x0098") :offset ("174"))) 
(defglfun
 (("PointSize" point-size) :args
  ((:name |size| :type |CheckedFloat32| :direction :in)) :return ("void")
  :category ("drawing-control") :version ("1.0") :glxropcode ("100") :glsopcode
  ("0x0097") :offset ("173"))) 
(defglfun
 (("Materialiv" material-iv) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |pname| :type |MaterialParameter| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("99") :glsopcode ("0x0096") :wglflags ("small-data") :offset ("172"))) 
(defglfun
 (("Materiali" material-i) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |pname| :type |MaterialParameter| :direction :in)
   (:name |param| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("98") :glsopcode ("0x0095") :wglflags ("small-data") :offset ("171"))) 
(defglfun
 (("Materialfv" material-fv) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |pname| :type |MaterialParameter| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("97") :glsopcode ("0x0094") :wglflags ("small-data") :offset ("170"))) 
(defglfun
 (("Materialf" material-f) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |pname| :type |MaterialParameter| :direction :in)
   (:name |param| :type |CheckedFloat32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("96") :glsopcode ("0x0093") :wglflags ("small-data") :offset ("169"))) 
(defglfun
 (("LineWidth" line-width) :args
  ((:name |width| :type |CheckedFloat32| :direction :in)) :return ("void")
  :category ("drawing-control") :version ("1.0") :glxropcode ("95") :glsopcode
  ("0x0092") :offset ("168"))) 
(defglfun
 (("LineStipple" line-stipple) :args
  ((:name |factor| :type |CheckedInt32| :direction :in)
   (:name |pattern| :type |LineStipple| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("94") :glsopcode ("0x0091") :offset ("167"))) 
(defglfun
 (("LightModeliv" light-model-iv) :args
  ((:name |pname| :type |LightModelParameter| :direction :in)
   (:name |params| :type |Int32| :direction :in :array t :size (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("93") :glsflags ("gl-enum") :glsopcode ("0x0090") :wglflags ("small-data")
  :offset ("166"))) 
(defglfun
 (("LightModeli" light-model-i) :args
  ((:name |pname| :type |LightModelParameter| :direction :in)
   (:name |param| :type |Int32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("92") :glsflags ("gl-enum") :glsopcode ("0x008F") :wglflags ("small-data")
  :offset ("165"))) 
(defglfun
 (("LightModelfv" light-model-fv) :args
  ((:name |pname| :type |LightModelParameter| :direction :in)
   (:name |params| :type |Float32| :direction :in :array t :size (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("91") :glsflags ("gl-enum") :glsopcode ("0x008E") :wglflags ("small-data")
  :offset ("164"))) 
(defglfun
 (("LightModelf" light-model-f) :args
  ((:name |pname| :type |LightModelParameter| :direction :in)
   (:name |param| :type |Float32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("90") :glsflags ("gl-enum") :glsopcode ("0x008D") :wglflags ("small-data")
  :offset ("163"))) 
(defglfun
 (("Lightiv" light-iv) :args
  ((:name |light| :type |LightName| :direction :in)
   (:name |pname| :type |LightParameter| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("89") :glsopcode ("0x008C") :wglflags ("small-data") :offset ("162"))) 
(defglfun
 (("Lighti" light-i) :args
  ((:name |light| :type |LightName| :direction :in)
   (:name |pname| :type |LightParameter| :direction :in)
   (:name |param| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("88") :glsopcode ("0x008B") :wglflags ("small-data") :offset ("161"))) 
(defglfun
 (("Lightfv" light-fv) :args
  ((:name |light| :type |LightName| :direction :in)
   (:name |pname| :type |LightParameter| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("87") :glsopcode ("0x008A") :wglflags ("small-data") :offset ("160"))) 
(defglfun
 (("Lightf" light-f) :args
  ((:name |light| :type |LightName| :direction :in)
   (:name |pname| :type |LightParameter| :direction :in)
   (:name |param| :type |CheckedFloat32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("86") :glsopcode ("0x0089") :wglflags ("small-data") :offset ("159"))) 
(defglfun
 (("Hint" hint) :args
  ((:name |target| :type |HintTarget| :direction :in)
   (:name |mode| :type |HintMode| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("85") :glsopcode ("0x0088") :offset ("158"))) 
(defglfun
 (("FrontFace" front-face) :args
  ((:name |mode| :type |FrontFaceDirection| :direction :in)) :return ("void")
  :category ("drawing-control") :version ("1.0") :glxropcode ("84") :glsopcode
  ("0x0087") :offset ("157"))) 
(defglfun
 (("Fogiv" fog-iv) :args
  ((:name |pname| :type |FogParameter| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("83") :glsflags ("gl-enum") :glsopcode ("0x0086") :wglflags ("small-data")
  :offset ("156"))) 
(defglfun
 (("Fogi" fog-i) :args
  ((:name |pname| :type |FogParameter| :direction :in)
   (:name |param| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("82") :glsflags ("gl-enum") :glsopcode ("0x0085") :wglflags ("small-data")
  :offset ("155"))) 
(defglfun
 (("Fogfv" fog-fv) :args
  ((:name |pname| :type |FogParameter| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("81") :glsflags ("gl-enum") :glsopcode ("0x0084") :wglflags ("small-data")
  :offset ("154"))) 
(defglfun
 (("Fogf" fog-f) :args
  ((:name |pname| :type |FogParameter| :direction :in)
   (:name |param| :type |CheckedFloat32| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("80") :glsflags ("gl-enum") :glsopcode ("0x0083") :wglflags ("small-data")
  :offset ("153"))) 
(defglfun
 (("CullFace" cull-face) :args
  ((:name |mode| :type |CullFaceMode| :direction :in)) :return ("void")
  :category ("drawing-control") :version ("1.0") :glxropcode ("79") :glsopcode
  ("0x0082") :offset ("152"))) 
(defglfun
 (("ColorMaterial" color-material) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |mode| :type |ColorMaterialParameter| :direction :in))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("78") :glsopcode ("0x0081") :offset ("151"))) 
(defglfun
 (("ClipPlane" clip-plane) :args
  ((:name |plane| :type |ClipPlaneName| :direction :in)
   (:name |equation| :type |Float64| :direction :in :array t :size #x4))
  :return ("void") :category ("drawing-control") :version ("1.0") :glxropcode
  ("77") :glsopcode ("0x0080") :offset ("150"))) 

;;;; feedback

(defglfun
 (("PushName" push-name) :args
  ((:name |name| :type |SelectName| :direction :in)) :return ("void") :category
  ("feedback") :version ("1.0") :glxropcode ("125") :glsopcode ("0x00B3")
  :offset ("201"))) 
(defglfun
 (("PopName" pop-name) :args nil :return ("void") :category ("feedback")
  :version ("1.0") :glxropcode ("124") :glsopcode ("0x00B2") :offset ("200"))) 
(defglfun
 (("PassThrough" pass-through) :args
  ((:name |token| :type |FeedbackElement| :direction :in)) :return ("void")
  :category ("feedback") :version ("1.0") :glxropcode ("123") :glsopcode
  ("0x00B1") :offset ("199"))) 
(defglfun
 (("LoadName" load-name) :args
  ((:name |name| :type |SelectName| :direction :in)) :return ("void") :category
  ("feedback") :version ("1.0") :glxropcode ("122") :glsopcode ("0x00B0")
  :offset ("198"))) 
(defglfun
 (("InitNames" init-names) :args nil :return ("void") :category ("feedback")
  :version ("1.0") :glxropcode ("121") :glsopcode ("0x00AF") :offset ("197"))) 
(defglfun
 (("RenderMode" render-mode) :args
  ((:name |mode| :type |RenderingMode| :direction :in)) :return ("Int32")
  :category ("feedback") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode") :version ("1.0") :glxsingle ("107")
  :glsopcode ("0x00AE") :wglflags ("client-handcode" "server-handcode") :offset
  ("196"))) 
(defglfun
 (("SelectBuffer" select-buffer) :args
  ((:name |size| :type |SizeI| :direction :in)
   (:name |buffer| :type |SelectName| :direction :out :array t :size size
    :retained t))
  :return ("void") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode") :category ("feedback") :version ("1.0")
  :glxsingle ("106") :glsflags ("client") :glsopcode ("0x00AD") :wglflags
  ("client-handcode" "server-handcode" "batchable") :offset ("195"))) 
(defglfun
 (("FeedbackBuffer" feedback-buffer) :args
  ((:name |size| :type |SizeI| :direction :in)
   (:name |type| :type |FeedbackType| :direction :in)
   (:name |buffer| :type |FeedbackElement| :direction :out :array t :size size
    :retained t))
  :return ("void") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode") :category ("feedback") :version ("1.0")
  :glxsingle ("105") :glsflags ("client") :glsopcode ("0x00AC") :wglflags
  ("client-handcode" "server-handcode" "batchable") :offset ("194"))) 

;;;; framebuf

(defglfun
 (("IndexMask" index-mask) :args
  ((:name |mask| :type |MaskedColorIndexValueI| :direction :in)) :return
  ("void") :category ("framebuf") :version ("1.0") :glxropcode ("136")
  :glsopcode ("0x00BE") :offset ("212"))) 
(defglfun
 (("DepthMask" depth-mask) :args
  ((:name |flag| :type |Boolean| :direction :in)) :return ("void") :category
  ("framebuf") :version ("1.0") :glxropcode ("135") :glsopcode ("0x00BD")
  :offset ("211"))) 
(defglfun
 (("ColorMask" color-mask) :args
  ((:name |red| :type |Boolean| :direction :in)
   (:name |green| :type |Boolean| :direction :in)
   (:name |blue| :type |Boolean| :direction :in)
   (:name |alpha| :type |Boolean| :direction :in))
  :return ("void") :category ("framebuf") :version ("1.0") :glxropcode ("134")
  :glsopcode ("0x00BC") :offset ("210"))) 
(defglfun
 (("StencilMask" stencil-mask) :args
  ((:name |mask| :type |MaskedStencilValue| :direction :in)) :return ("void")
  :category ("framebuf") :version ("1.0") :glxropcode ("133") :glsopcode
  ("0x00BB") :offset ("209"))) 
(defglfun
 (("ClearDepth" clear-depth) :args
  ((:name |depth| :type |ClampedFloat64| :direction :in)) :return ("void")
  :category ("framebuf") :version ("1.0") :glxropcode ("132") :glsopcode
  ("0x00BA") :offset ("208"))) 
(defglfun
 (("ClearStencil" clear-stencil) :args
  ((:name |s| :type |StencilValue| :direction :in)) :return ("void") :category
  ("framebuf") :version ("1.0") :glxropcode ("131") :glsopcode ("0x00B9")
  :offset ("207"))) 
(defglfun
 (("ClearColor" clear-color) :args
  ((:name |red| :type |ClampedColorF| :direction :in)
   (:name |green| :type |ClampedColorF| :direction :in)
   (:name |blue| :type |ClampedColorF| :direction :in)
   (:name |alpha| :type |ClampedColorF| :direction :in))
  :return ("void") :category ("framebuf") :version ("1.0") :glxropcode ("130")
  :glsopcode ("0x00B8") :offset ("206"))) 
(defglfun
 (("ClearIndex" clear-index) :args
  ((:name |c| :type |MaskedColorIndexValueF| :direction :in)) :return ("void")
  :category ("framebuf") :version ("1.0") :glxropcode ("129") :glsopcode
  ("0x00B7") :offset ("205"))) 
(defglfun
 (("ClearAccum" clear-accum) :args
  ((:name |red| :type |Float32| :direction :in)
   (:name |green| :type |Float32| :direction :in)
   (:name |blue| :type |Float32| :direction :in)
   (:name |alpha| :type |Float32| :direction :in))
  :return ("void") :category ("framebuf") :version ("1.0") :glxropcode ("128")
  :glsopcode ("0x00B6") :offset ("204"))) 
(defglfun
 (("Clear" clear) :args ((:name |mask| :type |ClearBufferMask| :direction :in))
  :return ("void") :category ("framebuf") :version ("1.0") :glxropcode ("127")
  :glsopcode ("0x00B5") :offset ("203"))) 
(defglfun
 (("DrawBuffer" draw-buffer) :args
  ((:name |mode| :type |DrawBufferMode| :direction :in)) :return ("void")
  :category ("framebuf") :version ("1.0") :glxropcode ("126") :glsopcode
  ("0x00B4") :offset ("202"))) 

;;;; misc

(defglfun
 (("PushAttrib" push-attrib) :args
  ((:name |mask| :type |AttribMask| :direction :in)) :return ("void") :category
  ("misc") :version ("1.0") :glxropcode ("142") :glsopcode ("0x00C5") :offset
  ("219"))) 
(defglfun
 (("PopAttrib" pop-attrib) :args nil :return ("void") :category ("misc")
  :version ("1.0") :glxropcode ("141") :glsopcode ("0x00C4") :offset ("218"))) 
(defglfun
 (("Flush" flush) :args nil :return ("void") :dlflags ("notlistable") :glxflags
  ("client-handcode" "client-intercept" "server-handcode") :category ("misc")
  :version ("1.0") :glxsingle ("142") :glsopcode ("0x00C3") :offset ("217"))) 
(defglfun
 (("Finish" finish) :args nil :return ("void") :dlflags ("notlistable")
  :glxflags ("client-handcode" "server-handcode") :category ("misc") :version
  ("1.0") :glxsingle ("108") :glsopcode ("0x00C2") :offset ("216"))) 
(defglfun
 (("Enable" enable) :args ((:name |cap| :type |EnableCap| :direction :in))
  :return ("void") :category ("misc") :version ("1.0") :dlflags ("handcode")
  :glxflags ("client-handcode" "client-intercept") :glxropcode ("139")
  :glsflags ("client") :glsopcode ("0x00C1") :offset ("215"))) 
(defglfun
 (("Disable" disable) :args ((:name |cap| :type |EnableCap| :direction :in))
  :return ("void") :category ("misc") :version ("1.0") :dlflags ("handcode")
  :glxflags ("client-handcode" "client-intercept") :glxropcode ("138")
  :glsflags ("client") :glsopcode ("0x00C0") :offset ("214"))) 
(defglfun
 (("Accum" accum) :args
  ((:name |op| :type |AccumOp| :direction :in)
   (:name |value| :type |CoordF| :direction :in))
  :return ("void") :category ("misc") :version ("1.0") :glxropcode ("137")
  :glsopcode ("0x00BF") :offset ("213"))) 

;;;; modeling

(defglfun
 (("EvalPoint2" eval-point-2) :args
  ((:name |i| :type |CheckedInt32| :direction :in)
   (:name |j| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("modeling") :version ("1.0") :glxropcode ("158")
  :glsopcode ("0x00D5") :offset ("239"))) 
(defglfun
 (("EvalMesh2" eval-mesh-2) :args
  ((:name |mode| :type |MeshMode2| :direction :in)
   (:name |i1| :type |CheckedInt32| :direction :in)
   (:name |i2| :type |CheckedInt32| :direction :in)
   (:name |j1| :type |CheckedInt32| :direction :in)
   (:name |j2| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("modeling") :version ("1.0") :glxropcode ("157")
  :glsopcode ("0x00D4") :offset ("238"))) 
(defglfun
 (("EvalPoint1" eval-point-1) :args ((:name |i| :type |Int32| :direction :in))
  :return ("void") :category ("modeling") :version ("1.0") :glxropcode ("156")
  :glsopcode ("0x00D3") :offset ("237"))) 
(defglfun
 (("EvalMesh1" eval-mesh-1) :args
  ((:name |mode| :type |MeshMode1| :direction :in)
   (:name |i1| :type |CheckedInt32| :direction :in)
   (:name |i2| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("modeling") :version ("1.0") :glxropcode ("155")
  :glsopcode ("0x00D2") :offset ("236"))) 
(defglfun
 (("EvalCoord2fv" eval-coord-2fv) :args
  ((:name |u| :type |CoordF| :direction :in :array t :size #x2)) :return
  ("void") :category ("modeling") :version ("1.0") :glxropcode ("154")
  :glsopcode ("0x00D1") :offset ("235"))) 
(defglfun
 (("EvalCoord2f" eval-coord-2f) :args
  ((:name |u| :type |CoordF| :direction :in)
   (:name |v| :type |CoordF| :direction :in))
  :return ("void") :category ("modeling") :vectorequiv ("EvalCoord2fv")
  :version ("1.0") :offset ("234"))) 
(defglfun
 (("EvalCoord2dv" eval-coord-2dv) :args
  ((:name |u| :type |CoordD| :direction :in :array t :size #x2)) :return
  ("void") :category ("modeling") :version ("1.0") :glxropcode ("153")
  :glsopcode ("0x00D0") :offset ("233"))) 
(defglfun
 (("EvalCoord2d" eval-coord-2d) :args
  ((:name |u| :type |CoordD| :direction :in)
   (:name |v| :type |CoordD| :direction :in))
  :return ("void") :category ("modeling") :vectorequiv ("EvalCoord2dv")
  :version ("1.0") :offset ("232"))) 
(defglfun
 (("EvalCoord1fv" eval-coord-1fv) :args
  ((:name |u| :type |CoordF| :direction :in :array t :size #x1)) :return
  ("void") :category ("modeling") :version ("1.0") :glxropcode ("152")
  :glsopcode ("0x00CF") :offset ("231"))) 
(defglfun
 (("EvalCoord1f" eval-coord-1f) :args
  ((:name |u| :type |CoordF| :direction :in)) :return ("void") :category
  ("modeling") :vectorequiv ("EvalCoord1fv") :version ("1.0") :offset ("230"))) 
(defglfun
 (("EvalCoord1dv" eval-coord-1dv) :args
  ((:name |u| :type |CoordD| :direction :in :array t :size #x1)) :return
  ("void") :category ("modeling") :version ("1.0") :glxropcode ("151")
  :glsopcode ("0x00CE") :offset ("229"))) 
(defglfun
 (("EvalCoord1d" eval-coord-1d) :args
  ((:name |u| :type |CoordD| :direction :in)) :return ("void") :category
  ("modeling") :vectorequiv ("EvalCoord1dv") :version ("1.0") :offset ("228"))) 
(defglfun
 (("MapGrid2f" map-grid-2f) :args
  ((:name |un| :type |Int32| :direction :in)
   (:name |u1| :type |CoordF| :direction :in)
   (:name |u2| :type |CoordF| :direction :in)
   (:name |vn| :type |Int32| :direction :in)
   (:name |v1| :type |CoordF| :direction :in)
   (:name |v2| :type |CoordF| :direction :in))
  :return ("void") :category ("modeling") :version ("1.0") :glxropcode ("150")
  :glsopcode ("0x00CD") :offset ("227"))) 
(defglfun
 (("MapGrid2d" map-grid-2d) :args
  ((:name |un| :type |Int32| :direction :in)
   (:name |u1| :type |CoordD| :direction :in)
   (:name |u2| :type |CoordD| :direction :in)
   (:name |vn| :type |Int32| :direction :in)
   (:name |v1| :type |CoordD| :direction :in)
   (:name |v2| :type |CoordD| :direction :in))
  :return ("void") :category ("modeling") :version ("1.0") :glxropcode ("149")
  :glsopcode ("0x00CC") :offset ("226"))) 
(defglfun
 (("MapGrid1f" map-grid-1f) :args
  ((:name |un| :type |Int32| :direction :in)
   (:name |u1| :type |CoordF| :direction :in)
   (:name |u2| :type |CoordF| :direction :in))
  :return ("void") :category ("modeling") :version ("1.0") :glxropcode ("148")
  :glsopcode ("0x00CB") :offset ("225"))) 
(defglfun
 (("MapGrid1d" map-grid-1d) :args
  ((:name |un| :type |Int32| :direction :in)
   (:name |u1| :type |CoordD| :direction :in)
   (:name |u2| :type |CoordD| :direction :in))
  :return ("void") :category ("modeling") :version ("1.0") :glxropcode ("147")
  :glsopcode ("0x00CA") :offset ("224"))) 
(defglfun
 (("Map2f" map-2f) :args
  ((:name |target| :type |MapTarget| :direction :in)
   (:name |u1| :type |CoordF| :direction :in)
   (:name |u2| :type |CoordF| :direction :in)
   (:name |ustride| :type |Int32| :direction :in)
   (:name |uorder| :type |CheckedInt32| :direction :in)
   (:name |v1| :type |CoordF| :direction :in)
   (:name |v2| :type |CoordF| :direction :in)
   (:name |vstride| :type |Int32| :direction :in)
   (:name |vorder| :type |CheckedInt32| :direction :in)
   (:name |points| :type |CoordF| :direction :in :array t :size
    (|target| |ustride| |uorder| |vstride| |vorder|)))
  :return ("void") :category ("modeling") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode") :version ("1.0") :glxropcode ("146")
  :glsflags ("capture-handcode") :glsopcode ("0x00C9") :wglflags
  ("client-handcode" "server-handcode") :offset ("223"))) 
(defglfun
 (("Map2d" map-2d) :args
  ((:name |target| :type |MapTarget| :direction :in)
   (:name |u1| :type |CoordD| :direction :in)
   (:name |u2| :type |CoordD| :direction :in)
   (:name |ustride| :type |Int32| :direction :in)
   (:name |uorder| :type |CheckedInt32| :direction :in)
   (:name |v1| :type |CoordD| :direction :in)
   (:name |v2| :type |CoordD| :direction :in)
   (:name |vstride| :type |Int32| :direction :in)
   (:name |vorder| :type |CheckedInt32| :direction :in)
   (:name |points| :type |CoordD| :direction :in :array t :size
    (|target| |ustride| |uorder| |vstride| |vorder|)))
  :return ("void") :category ("modeling") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode") :version ("1.0") :glxropcode ("145")
  :glsflags ("capture-handcode") :glsopcode ("0x00C8") :wglflags
  ("client-handcode" "server-handcode") :offset ("222"))) 
(defglfun
 (("Map1f" map-1f) :args
  ((:name |target| :type |MapTarget| :direction :in)
   (:name |u1| :type |CoordF| :direction :in)
   (:name |u2| :type |CoordF| :direction :in)
   (:name |stride| :type |Int32| :direction :in)
   (:name |order| :type |CheckedInt32| :direction :in)
   (:name |points| :type |CoordF| :direction :in :array t :size
    (|target| |stride| |order|)))
  :return ("void") :category ("modeling") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode") :version ("1.0") :glxropcode ("144")
  :glsflags ("capture-handcode") :glsopcode ("0x00C7") :wglflags
  ("client-handcode" "server-handcode") :offset ("221"))) 
(defglfun
 (("Map1d" map-1d) :args
  ((:name |target| :type |MapTarget| :direction :in)
   (:name |u1| :type |CoordD| :direction :in)
   (:name |u2| :type |CoordD| :direction :in)
   (:name |stride| :type |Int32| :direction :in)
   (:name |order| :type |CheckedInt32| :direction :in)
   (:name |points| :type |CoordD| :direction :in :array t :size
    (|target| |stride| |order|)))
  :return ("void") :category ("modeling") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode") :version ("1.0") :glxropcode ("143")
  :glsflags ("capture-handcode") :glsopcode ("0x00C6") :wglflags
  ("client-handcode" "server-handcode") :offset ("220"))) 

;;;; pixel-op

(defglfun
 (("DepthFunc" depth-func) :args
  ((:name |func| :type |DepthFunction| :direction :in)) :return ("void")
  :category ("pixel-op") :version ("1.0") :glxropcode ("164") :glsopcode
  ("0x00DB") :offset ("245"))) 
(defglfun
 (("StencilOp" stencil-op) :args
  ((:name |fail| :type |StencilOp| :direction :in)
   (:name |zfail| :type |StencilOp| :direction :in)
   (:name |zpass| :type |StencilOp| :direction :in))
  :return ("void") :category ("pixel-op") :version ("1.0") :glxropcode ("163")
  :glsopcode ("0x00DA") :offset ("244"))) 
(defglfun
 (("StencilFunc" stencil-func) :args
  ((:name |func| :type |StencilFunction| :direction :in)
   (:name |ref| :type |ClampedStencilValue| :direction :in)
   (:name |mask| :type |MaskedStencilValue| :direction :in))
  :return ("void") :category ("pixel-op") :version ("1.0") :glxropcode ("162")
  :glsopcode ("0x00D9") :offset ("243"))) 
(defglfun
 (("LogicOp" logic-op) :args ((:name |opcode| :type |LogicOp| :direction :in))
  :return ("void") :category ("pixel-op") :version ("1.0") :glxropcode ("161")
  :glsopcode ("0x00D8") :offset ("242"))) 
(defglfun
 (("BlendFunc" blend-func) :args
  ((:name |sfactor| :type |BlendingFactorSrc| :direction :in)
   (:name |dfactor| :type |BlendingFactorDest| :direction :in))
  :return ("void") :category ("pixel-op") :version ("1.0") :glxropcode ("160")
  :glsopcode ("0x00D7") :offset ("241"))) 
(defglfun
 (("AlphaFunc" alpha-func) :args
  ((:name |func| :type |AlphaFunction| :direction :in)
   (:name |ref| :type |ClampedFloat32| :direction :in))
  :return ("void") :category ("pixel-op") :version ("1.0") :glxropcode ("159")
  :glsopcode ("0x00D6") :offset ("240"))) 

;;;; pixel-rw

(defglfun
 (("DrawPixels" draw-pixels) :args
  ((:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |pixels| :type |Void| :direction :in :array t :size
    (|format| |type| |width| |height|)))
  :return ("void") :category ("pixel-rw") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode") :version ("1.0") :glxropcode ("173")
  :glsflags ("pixel-unpack") :glsopcode ("0x00E7") :wglflags
  ("client-handcode" "server-handcode") :offset ("257"))) 
(defglfun
 (("ReadPixels" read-pixels) :args
  ((:name |x| :type |WinCoord| :direction :in)
   (:name |y| :type |WinCoord| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |pixels| :type |Void| :direction :out :array t :size
    (|format| |type| |width| |height|)))
  :return ("void") :category ("pixel-rw") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode") :version ("1.0") :glxsingle ("111")
  :glsflags ("get" "pixel-pack") :glsopcode ("0x00E6") :wglflags
  ("client-handcode" "server-handcode") :offset ("256"))) 
(defglfun
 (("CopyPixels" copy-pixels) :args
  ((:name |x| :type |WinCoord| :direction :in)
   (:name |y| :type |WinCoord| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |type| :type |PixelCopyType| :direction :in))
  :return ("void") :category ("pixel-rw") :version ("1.0") :glxropcode ("172")
  :glsopcode ("0x00E5") :offset ("255"))) 
(defglfun
 (("ReadBuffer" read-buffer) :args
  ((:name |mode| :type |ReadBufferMode| :direction :in)) :return ("void")
  :category ("pixel-rw") :version ("1.0") :glxropcode ("171") :glsopcode
  ("0x00E4") :offset ("254"))) 
(defglfun
 (("PixelMapusv" pixel-map-usv) :args
  ((:name |map| :type |PixelMap| :direction :in)
   (:name |mapsize| :type |CheckedInt32| :direction :in)
   (:name |values| :type |UInt16| :direction :in :array t :size mapsize))
  :return ("void") :category ("pixel-rw") :glxflags ("client-handcode")
  :version ("1.0") :glxropcode ("170") :glsopcode ("0x00E3") :offset ("253"))) 
(defglfun
 (("PixelMapuiv" pixel-map-uiv) :args
  ((:name |map| :type |PixelMap| :direction :in)
   (:name |mapsize| :type |CheckedInt32| :direction :in)
   (:name |values| :type |UInt32| :direction :in :array t :size mapsize))
  :return ("void") :category ("pixel-rw") :glxflags ("client-handcode")
  :version ("1.0") :glxropcode ("169") :glsopcode ("0x00E2") :offset ("252"))) 
(defglfun
 (("PixelMapfv" pixel-map-fv) :args
  ((:name |map| :type |PixelMap| :direction :in)
   (:name |mapsize| :type |CheckedInt32| :direction :in)
   (:name |values| :type |Float32| :direction :in :array t :size mapsize))
  :return ("void") :category ("pixel-rw") :glxflags ("client-handcode")
  :version ("1.0") :glxropcode ("168") :glsopcode ("0x00E1") :offset ("251"))) 
(defglfun
 (("PixelStorei" pixel-store-i) :args
  ((:name |pname| :type |PixelStoreParameter| :direction :in)
   (:name |param| :type |CheckedInt32| :direction :in))
  :return ("void") :dlflags ("notlistable") :glxflags ("client-handcode")
  :category ("pixel-rw") :version ("1.0") :glxsingle ("110") :glsflags
  ("client" "gl-enum") :glsopcode ("0x00E0") :wglflags ("batchable") :offset
  ("250"))) 
(defglfun
 (("PixelStoref" pixel-store-f) :args
  ((:name |pname| :type |PixelStoreParameter| :direction :in)
   (:name |param| :type |CheckedFloat32| :direction :in))
  :return ("void") :dlflags ("notlistable") :glxflags ("client-handcode")
  :category ("pixel-rw") :version ("1.0") :glxsingle ("109") :glsflags
  ("client" "gl-enum") :glsopcode ("0x00DF") :wglflags ("batchable") :offset
  ("249"))) 
(defglfun
 (("PixelTransferi" pixel-transfer-i) :args
  ((:name |pname| :type |PixelTransferParameter| :direction :in)
   (:name |param| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("pixel-rw") :version ("1.0") :glxropcode ("167")
  :glsflags ("gl-enum") :glsopcode ("0x00DE") :offset ("248"))) 
(defglfun
 (("PixelTransferf" pixel-transfer-f) :args
  ((:name |pname| :type |PixelTransferParameter| :direction :in)
   (:name |param| :type |CheckedFloat32| :direction :in))
  :return ("void") :category ("pixel-rw") :version ("1.0") :glxropcode ("166")
  :glsflags ("gl-enum") :glsopcode ("0x00DD") :offset ("247"))) 
(defglfun
 (("PixelZoom" pixel-zoom) :args
  ((:name |xfactor| :type |Float32| :direction :in)
   (:name |yfactor| :type |Float32| :direction :in))
  :return ("void") :category ("pixel-rw") :version ("1.0") :glxropcode ("165")
  :glsopcode ("0x00DC") :offset ("246"))) 

;;;; state-req

(defglfun
 (("IsList" is-list) :args ((:name |list| :type |List| :direction :in)) :return
  ("Boolean") :category ("state-req") :dlflags ("notlistable") :version ("1.0")
  :glxsingle ("141") :glsflags ("get") :glsopcode ("0x0105") :offset ("287"))) 
(defglfun
 (("IsEnabled" is-enabled) :args
  ((:name |cap| :type |EnableCap| :direction :in)) :return ("Boolean")
  :category ("state-req") :dlflags ("notlistable") :version ("1.0") :glxflags
  ("client-handcode" "client-intercept") :glxsingle ("140") :glsflags
  ("client" "get") :glsopcode ("0x0104") :offset ("286"))) 
(defglfun
 (("GetTexLevelParameteriv" get-tex-level-parameter-iv) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |pname| :type |GetTextureParameter| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("139") :glsflags ("get") :glsopcode ("0x0103") :wglflags
  ("small-data") :offset ("285"))) 
(defglfun
 (("GetTexLevelParameterfv" get-tex-level-parameter-fv) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |pname| :type |GetTextureParameter| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("138") :glsflags ("get") :glsopcode ("0x0102") :wglflags
  ("small-data") :offset ("284"))) 
(defglfun
 (("GetTexParameteriv" get-tex-parameter-iv) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |pname| :type |GetTextureParameter| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("137") :glsflags ("get") :glsopcode ("0x0101") :wglflags
  ("small-data") :offset ("283"))) 
(defglfun
 (("GetTexParameterfv" get-tex-parameter-fv) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |pname| :type |GetTextureParameter| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("136") :glsflags ("get") :glsopcode ("0x0100") :wglflags
  ("small-data") :offset ("282"))) 
(defglfun
 (("GetTexImage" get-tex-image) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |pixels| :type |Void| :direction :out :array t :size
    (|target| |level| |format| |type|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode") :version ("1.0") :glxsingle ("135")
  :glsflags ("get" "pixel-pack") :glsopcode ("0x00FF") :wglflags
  ("client-handcode" "server-handcode") :offset ("281"))) 
(defglfun
 (("GetTexGeniv" get-tex-gen-iv) :args
  ((:name |coord| :type |TextureCoordName| :direction :in)
   (:name |pname| :type |TextureGenParameter| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("134") :glsflags ("get") :glsopcode ("0x00FE") :wglflags
  ("small-data") :offset ("280"))) 
(defglfun
 (("GetTexGenfv" get-tex-gen-fv) :args
  ((:name |coord| :type |TextureCoordName| :direction :in)
   (:name |pname| :type |TextureGenParameter| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("133") :glsflags ("get") :glsopcode ("0x00FD") :wglflags
  ("small-data") :offset ("279"))) 
(defglfun
 (("GetTexGendv" get-tex-gen-dv) :args
  ((:name |coord| :type |TextureCoordName| :direction :in)
   (:name |pname| :type |TextureGenParameter| :direction :in)
   (:name |params| :type |Float64| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("132") :glsflags ("get") :glsopcode ("0x00FC") :wglflags
  ("small-data") :offset ("278"))) 
(defglfun
 (("GetTexEnviv" get-tex-env-iv) :args
  ((:name |target| :type |TextureEnvTarget| :direction :in)
   (:name |pname| :type |TextureEnvParameter| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("131") :glsflags ("get") :glsopcode ("0x00FB") :wglflags
  ("small-data") :offset ("277"))) 
(defglfun
 (("GetTexEnvfv" get-tex-env-fv) :args
  ((:name |target| :type |TextureEnvTarget| :direction :in)
   (:name |pname| :type |TextureEnvParameter| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("130") :glsflags ("get") :glsopcode ("0x00FA") :wglflags
  ("small-data") :offset ("276"))) 
(defglfun
 (("GetString" get-string) :args
  ((:name |name| :type |StringName| :direction :in)) :return ("String")
  :category ("state-req") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode") :version ("1.0") :glxsingle ("129")
  :glsflags ("get") :glsopcode ("0x00F9") :wglflags
  ("client-handcode" "server-handcode") :offset ("275"))) 
(defglfun
 (("GetPolygonStipple" get-polygon-stipple) :args
  ((:name |mask| :type |UInt8| :direction :out :array t)) :return ("void")
  :category ("state-req") :dlflags ("notlistable") :glxflags
  ("client-handcode" "server-handcode") :version ("1.0") :glxsingle ("128")
  :glsflags ("get" "pixel-pack") :glsopcode ("0x00F8") :wglflags
  ("client-handcode" "server-handcode") :offset ("274"))) 
(defglfun
 (("GetPixelMapusv" get-pixel-map-usv) :args
  ((:name |map| :type |PixelMap| :direction :in)
   (:name |values| :type |UInt16| :direction :out :array t :size (|map|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("127") :glsflags ("get") :glsopcode ("0x00F7") :offset
  ("273"))) 
(defglfun
 (("GetPixelMapuiv" get-pixel-map-uiv) :args
  ((:name |map| :type |PixelMap| :direction :in)
   (:name |values| :type |UInt32| :direction :out :array t :size (|map|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("126") :glsflags ("get") :glsopcode ("0x00F6") :offset
  ("272"))) 
(defglfun
 (("GetPixelMapfv" get-pixel-map-fv) :args
  ((:name |map| :type |PixelMap| :direction :in)
   (:name |values| :type |Float32| :direction :out :array t :size (|map|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("125") :glsflags ("get") :glsopcode ("0x00F5") :offset
  ("271"))) 
(defglfun
 (("GetMaterialiv" get-material-iv) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |pname| :type |MaterialParameter| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("124") :glsflags ("get") :glsopcode ("0x00F4") :wglflags
  ("small-data") :offset ("270"))) 
(defglfun
 (("GetMaterialfv" get-material-fv) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |pname| :type |MaterialParameter| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("123") :glsflags ("get") :glsopcode ("0x00F3") :wglflags
  ("small-data") :offset ("269"))) 
(defglfun
 (("GetMapiv" get-map-iv) :args
  ((:name |target| :type |MapTarget| :direction :in)
   (:name |query| :type |GetMapQuery| :direction :in)
   (:name |v| :type |Int32| :direction :out :array t :size (|target| |query|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("122") :glsflags ("get") :glsopcode ("0x00F2") :offset
  ("268"))) 
(defglfun
 (("GetMapfv" get-map-fv) :args
  ((:name |target| :type |MapTarget| :direction :in)
   (:name |query| :type |GetMapQuery| :direction :in)
   (:name |v| :type |Float32| :direction :out :array t :size
    (|target| |query|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("121") :glsflags ("get") :glsopcode ("0x00F1") :offset
  ("267"))) 
(defglfun
 (("GetMapdv" get-map-dv) :args
  ((:name |target| :type |MapTarget| :direction :in)
   (:name |query| :type |GetMapQuery| :direction :in)
   (:name |v| :type |Float64| :direction :out :array t :size
    (|target| |query|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("120") :glsflags ("get") :glsopcode ("0x00F0") :offset
  ("266"))) 
(defglfun
 (("GetLightiv" get-light-iv) :args
  ((:name |light| :type |LightName| :direction :in)
   (:name |pname| :type |LightParameter| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("119") :glsflags ("get") :glsopcode ("0x00EF") :wglflags
  ("small-data") :offset ("265"))) 
(defglfun
 (("GetLightfv" get-light-fv) :args
  ((:name |light| :type |LightName| :direction :in)
   (:name |pname| :type |LightParameter| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("118") :glsflags ("get") :glsopcode ("0x00EE") :wglflags
  ("small-data") :offset ("264"))) 
(defglfun
 (("GetIntegerv" get-integerv) :args
  ((:name |pname| :type |GetPName| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :glxflags
  ("client-handcode") :version ("1.0") :glxsingle ("117") :glsflags
  ("client" "get") :glsopcode ("0x00ED") :wglflags ("small-data") :offset
  ("263"))) 
(defglfun
 (("GetFloatv" get-floatv) :args
  ((:name |pname| :type |GetPName| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :glxflags
  ("client-handcode") :version ("1.0") :glxsingle ("116") :glsflags
  ("client" "get") :glsopcode ("0x00EC") :wglflags ("small-data") :offset
  ("262"))) 
(defglfun
 (("GetError" get-error) :args nil :return ("ErrorCode") :category
  ("state-req") :dlflags ("notlistable") :glxflags ("client-handcode") :version
  ("1.0") :glxsingle ("115") :glsflags ("get") :glsopcode ("0x00EB") :offset
  ("261"))) 
(defglfun
 (("GetDoublev" get-doublev) :args
  ((:name |pname| :type |GetPName| :direction :in)
   (:name |params| :type |Float64| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :glxflags
  ("client-handcode") :version ("1.0") :glxsingle ("114") :glsflags
  ("client" "get") :glsopcode ("0x00EA") :wglflags ("small-data") :offset
  ("260"))) 
(defglfun
 (("GetClipPlane" get-clip-plane) :args
  ((:name |plane| :type |ClipPlaneName| :direction :in)
   (:name |equation| :type |Float64| :direction :out :array t :size #x4))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :version
  ("1.0") :glxsingle ("113") :glxflags ("client-handcode" "server-handcode")
  :glsflags ("get") :glsopcode ("0x00E9") :offset ("259"))) 
(defglfun
 (("GetBooleanv" get-booleanv) :args
  ((:name |pname| :type |GetPName| :direction :in)
   (:name |params| :type |Boolean| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("state-req") :dlflags ("notlistable") :glxflags
  ("client-handcode") :version ("1.0") :glxsingle ("112") :glsflags
  ("client" "get") :glsopcode ("0x00E8") :wglflags ("small-data") :offset
  ("258"))) 

;;;; xform

(defglfun
 (("Viewport" viewport) :args
  ((:name |x| :type |WinCoord| :direction :in)
   (:name |y| :type |WinCoord| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in))
  :return ("void") :category ("xform") :version ("1.0") :glxropcode ("191")
  :glsopcode ("0x0117") :offset ("305"))) 
(defglfun
 (("Translatef" translate-f) :args
  ((:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("xform") :version ("1.0") :glxropcode ("190")
  :glsopcode ("0x0116") :offset ("304"))) 
(defglfun
 (("Translated" translate-d) :args
  ((:name |x| :type |Float64| :direction :in)
   (:name |y| :type |Float64| :direction :in)
   (:name |z| :type |Float64| :direction :in))
  :return ("void") :category ("xform") :version ("1.0") :glxropcode ("189")
  :glsopcode ("0x0115") :offset ("303"))) 
(defglfun
 (("Scalef" scale-f) :args
  ((:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("xform") :version ("1.0") :glxropcode ("188")
  :glsopcode ("0x0114") :offset ("302"))) 
(defglfun
 (("Scaled" scale-d) :args
  ((:name |x| :type |Float64| :direction :in)
   (:name |y| :type |Float64| :direction :in)
   (:name |z| :type |Float64| :direction :in))
  :return ("void") :category ("xform") :version ("1.0") :glxropcode ("187")
  :glsopcode ("0x0113") :offset ("301"))) 
(defglfun
 (("Rotatef" rotate-f) :args
  ((:name |angle| :type |Float32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("xform") :version ("1.0") :glxropcode ("186")
  :glsopcode ("0x0112") :offset ("300"))) 
(defglfun
 (("Rotated" rotate-d) :args
  ((:name |angle| :type |Float64| :direction :in)
   (:name |x| :type |Float64| :direction :in)
   (:name |y| :type |Float64| :direction :in)
   (:name |z| :type |Float64| :direction :in))
  :return ("void") :category ("xform") :version ("1.0") :glxropcode ("185")
  :glsopcode ("0x0111") :offset ("299"))) 
(defglfun
 (("PushMatrix" push-matrix) :args nil :return ("void") :category ("xform")
  :version ("1.0") :glxropcode ("184") :glsopcode ("0x0110") :offset ("298"))) 
(defglfun
 (("PopMatrix" pop-matrix) :args nil :return ("void") :category ("xform")
  :version ("1.0") :glxropcode ("183") :glsopcode ("0x010F") :offset ("297"))) 
(defglfun
 (("Ortho" ortho) :args
  ((:name |left| :type |Float64| :direction :in)
   (:name |right| :type |Float64| :direction :in)
   (:name |bottom| :type |Float64| :direction :in)
   (:name |top| :type |Float64| :direction :in)
   (:name |zNear| :type |Float64| :direction :in)
   (:name |zFar| :type |Float64| :direction :in))
  :return ("void") :category ("xform") :version ("1.0") :glxropcode ("182")
  :glsopcode ("0x010E") :offset ("296"))) 
(defglfun
 (("MultMatrixd" mult-matrix-d) :args
  ((:name |m| :type |Float64| :direction :in :array t :size #x10)) :return
  ("void") :category ("xform") :version ("1.0") :glxropcode ("181") :glsflags
  ("matrix") :glsopcode ("0x010D") :offset ("295"))) 
(defglfun
 (("MultMatrixf" mult-matrix-f) :args
  ((:name |m| :type |Float32| :direction :in :array t :size #x10)) :return
  ("void") :category ("xform") :version ("1.0") :glxropcode ("180") :glsflags
  ("matrix") :glsopcode ("0x010C") :offset ("294"))) 
(defglfun
 (("MatrixMode" matrix-mode) :args
  ((:name |mode| :type |MatrixMode| :direction :in)) :return ("void") :category
  ("xform") :version ("1.0") :glxropcode ("179") :glsopcode ("0x010B") :offset
  ("293"))) 
(defglfun
 (("LoadMatrixd" load-matrix-d) :args
  ((:name |m| :type |Float64| :direction :in :array t :size #x10)) :return
  ("void") :category ("xform") :version ("1.0") :glxropcode ("178") :glsflags
  ("matrix") :glsopcode ("0x010A") :offset ("292"))) 
(defglfun
 (("LoadMatrixf" load-matrix-f) :args
  ((:name |m| :type |Float32| :direction :in :array t :size #x10)) :return
  ("void") :category ("xform") :version ("1.0") :glxropcode ("177") :glsflags
  ("matrix") :glsopcode ("0x0109") :offset ("291"))) 
(defglfun
 (("LoadIdentity" load-identity) :args nil :return ("void") :category ("xform")
  :version ("1.0") :glxropcode ("176") :glsopcode ("0x0108") :offset ("290"))) 
(defglfun
 (("Frustum" frustum) :args
  ((:name |left| :type |Float64| :direction :in)
   (:name |right| :type |Float64| :direction :in)
   (:name |bottom| :type |Float64| :direction :in)
   (:name |top| :type |Float64| :direction :in)
   (:name |zNear| :type |Float64| :direction :in)
   (:name |zFar| :type |Float64| :direction :in))
  :return ("void") :category ("xform") :version ("1.0") :glxropcode ("175")
  :glsopcode ("0x0107") :offset ("289"))) 
(defglfun
 (("DepthRange" depth-range) :args
  ((:name |near| :type |ClampedFloat64| :direction :in)
   (:name |far| :type |ClampedFloat64| :direction :in))
  :return ("void") :category ("xform") :version ("1.0") :glxropcode ("174")
  :glsopcode ("0x0106") :offset ("288"))) 