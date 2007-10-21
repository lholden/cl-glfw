(require '#:asdf)
(asdf:oos 'asdf:load-op '#:cl-glfw)

(glfw:init)

(when (glfw:open-window 640 480 0 0 0 0  0 0 glfw:+window+)
  (glfw:enable glfw:+sticky-keys+)
  (glfw:swap-interval 0)

  (do ((running t (and (zerop (glfw:get-key glfw:+key-esc+))
		       (not (zerop (glfw:get-window-param glfw:+opened+)))))
       (frames 0)
       (t0 (glfw:get-time))
       (t1 (glfw:get-time) (glfw:get-time))) 
   ((not running))
    (when (or (> (- t1 t0) 1.0) 
	      (= frames 0))
      (glfw:set-window-title (format nil "Spinning Triangle (~,1f FPS)" (/ frames (- t1 t0))))
      (setf frames 0)
      (setf t0 t1))
    (incf frames)
    

    (destructuring-bind (width height) (glfw:get-window-size)
      (setf height (max height 1))
      (gl:viewport 0 0 width height)

      (gl:clear-color 0.0 0.0 0.0 0.0)
      (gl:clear gl:+color-buffer-bit+)

      (gl:matrix-mode gl:+projection+)
      (gl:load-identity)
      (glu:perspective 65.0d0 (coerce (/ width height) 'double-float) 1.0d0 100.0d0)
      (gl:matrix-mode gl:+modelview+)
      (gl:load-identity)
      (glu:look-at 0.0d0  1.0d0 0.0d0
		   0.0d0 20.0d0 0.0d0
		   0.0d0  0.0d0 1.0d0)
      
      (gl:translate-f 0.0 14.0 0.0)
      
      
      (destructuring-bind (x y) (glfw:get-mouse-pos)
	(declare (ignore y))
	(gl:rotate-f (coerce (+ (* x 0.3)
				(* t1 100.0))
			     'single-float)
		     0.0 0.0 1.0))

      (gl:begin gl:+triangles+)
      (gl:color-3f 1.0 0.0 0.0) (gl:vertex-3f -5.0 0.0 -4.0)
      (gl:color-3f 0.0 1.0 0.0) (gl:vertex-3f  5.0 0.0 -4.0)
      (gl:color-3f 0.0 0.0 1.0) (gl:vertex-3f  0.0 0.0  6.0)
      (gl:end)
      (glfw:swap-buffers))))

(glfw:terminate)
