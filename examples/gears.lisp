(require '#:asdf)
(asdf:oos 'asdf:load-op '#:cl-glfw)

(declaim (optimize (debug 3) (compilation-speed 0) (safety 3)))

(defparameter *running* t)
(defparameter *t0* 0.0d0)
(defparameter *t* 0)
(defparameter *dt* 0)
(defparameter *frames* 0)
(defparameter *autoexit* 0)
(defparameter *view_rotx* 20.0)
(defparameter *view_roty* 30.0)
(defparameter *view_rotz* 0.0)
(defparameter *gear1* nil)
(defparameter *gear2* nil)
(defparameter *gear3* nil)
(defparameter *angle* 0.0)


(declaim (inline sfcos sfsin))
(defun sfcos (a)
  (coerce (cos a) 'single-float))

(defun sfsin (a)
  (coerce (sin a) 'single-float))

(defun gear (inner_radius outer_radius width teeth tooth_depth)
  (let* ((r0 inner_radius)
        (r1 (- outer_radius (/ tooth_depth 2.0)))
        (r2 (+ outer_radius (/ tooth_depth 2.0)))
        (angle 0.0)
        (da (/ (/ (* 2.0 pi) teeth) 4.0)))
    (gl:shade-model gl:+flat+)
    (gl:normal-3f 0.0 0.0 1.0)

    ;; draw front face
    (gl:begin gl:+quad-strip+)
    (dotimes (i (1+ teeth))
      (setf angle (/ (* i 2.0 pi) teeth))
      (gl:vertex-3f (* r0 (sfcos angle)) (* r0 (sfsin angle)) (* width 0.5))
      (gl:vertex-3f (* r1 (sfcos angle)) (* r1 (sfsin angle)) (* width 0.5))
      (when (< i teeth)
        (gl:vertex-3f (* r0 (sfcos angle)) (* r0 (sfsin angle)) (* width 0.5))
        (gl:vertex-3f (* r1 (sfcos (+ angle (* 3 da)))) (* r1 (sfsin (+ angle (* 3 da)))) (* width 0.5))))
    (gl:end)

    ;; draw front sides of teeth
    (gl:begin gl:+quads+)
    (dotimes (i teeth)
      (setf angle (/ (* i 2.0 pi) teeth))
      (gl:vertex-3f (* r1 (sfcos angle)) (* r1 (sfsin angle)) (* width 0.5))
      (gl:vertex-3f (* r2 (sfcos (+ angle da))) (* r2 (sfsin (+ angle da))) (* width 0.5))
      (gl:vertex-3f (* r2 (sfcos (+ angle (* 2 da)))) (* r2 (sfsin (+ angle (* 2 da)))) (* width 0.5))
      (gl:vertex-3f (* r1 (sfcos (+ angle (* 3 da)))) (* r1 (sfsin (+ angle (* 3 da)))) (* width 0.5)))
    (gl:end)

    (gl:normal-3f 0.0 0.0 -1.0)

    ;; draw back face
    (gl:begin gl:+quad-strip+)
    (dotimes (i (1+ teeth))
      (setf angle (/ (* i 2.0 pi) teeth))
      (gl:vertex-3f (* r1 (sfcos angle)) (* r1 (sfsin angle)) (* (- width) 0.5))
      (gl:vertex-3f (* r0 (sfcos angle)) (* r0 (sfsin angle)) (* (- width) 0.5))
      (when (< i teeth)
        (gl:vertex-3f (* r1 (sfcos (+ angle (* 3 da)))) (* r1 (sfsin (+ angle (* 3 da)))) (* (- width) 0.5))
        (gl:vertex-3f (* r0 (sfcos angle)) (* r0 (sfsin angle)) (* (- width) 0.5))))
    (gl:end)

    ;; draw back sides of teeth
    (gl:begin gl:+quads+)
    (dotimes (i teeth)
      (setf angle (/ (* i 2.0 pi) teeth))
      (gl:vertex-3f (* r1 (sfcos (+ angle (* 3 da)))) (* r1 (sfsin (+ angle (* 3 da)))) (* (- width) 0.5))
      (gl:vertex-3f (* r2 (sfcos (+ angle (* 2 da)))) (* r2 (sfsin (+ angle (* 2 da)))) (* (- width) 0.5))
      (gl:vertex-3f (* r2 (sfcos (+ angle da))) (* r2 (sfsin (+ angle da))) (* (- width) 0.5))
      (gl:vertex-3f (* r1 (sfcos angle)) (* r1 (sfsin angle)) (* (- width) 0.5)))
    (gl:end)

    ;; draw outward faces of teeth
    (gl:begin gl:+quad-strip+)
    (dotimes (i teeth)
      (setf angle (/ (* i 2.0 pi) teeth))
      (gl:vertex-3f (* r1 (sfcos angle)) (* r1 (sfsin angle)) (* width 0.5))
      (gl:vertex-3f (* r1 (sfcos angle)) (* r1 (sfsin angle)) (* (- width) 0.5))
      (let* ((u (- (* r2 (sfcos (+ angle da))) (* r1 (sfcos angle))))
           (v (- (* r2 (sfsin (+ angle da))) (* r1 (sfsin angle))))
           (len (sqrt (+ (* u u) (* v v)))))

           (setf u (/ u len))
           (setf v (/ v len))
           (gl:normal-3f v (- u) 0.0)
           (gl:vertex-3f (* r2 (sfcos (+ angle da))) (* r2 (sfsin (+ angle da))) (* width 0.5))
           (gl:vertex-3f (* r2 (sfcos (+ angle da))) (* r2 (sfsin (+ angle da))) (* (- width) 0.5))
           (gl:normal-3f (sfcos angle) (sfsin angle) 0.0)
           (gl:vertex-3f (* r2 (sfcos (+ angle (* 2 da)))) (* r2 (sfsin (+ angle (* 2 da)))) (* width 0.5))
           (gl:vertex-3f (* r2 (sfcos (+ angle (* 2 da)))) (* r2 (sfsin (+ angle (* 2 da)))) (* (- width) 0.5))
           (setf u (- (* r1 (sfcos (+ angle (* 3 da)))) (* r2 (sfcos (+ angle (* 2 da))))))
           (setf v (- (* r1 (sfsin (+ angle (* 3 da)))) (* r2 (sfsin (+ angle (* 2 da))))))
           (gl:normal-3f v (- u) 0.0)
           (gl:vertex-3f (* r1 (sfcos (+ angle (* 3 da)))) (* r1 (sfsin (+ angle (* 3 da)))) (* width 0.5))
           (gl:vertex-3f (* r1 (sfcos (+ angle (* 3 da)))) (* r1 (sfsin (+ angle (* 3 da)))) (* (- width) 0.5))
           (gl:normal-3f (sfcos angle) (sfsin angle) 0.0)))

    (gl:vertex-3f (* r1 (sfcos 0)) (* r1 (sfsin 0)) (* width 0.5))
    (gl:vertex-3f (* r1 (sfcos 0)) (* r1 (sfsin 0)) (* (- width) 0.5))
    (gl:end)

    (gl:shade-model gl:+smooth+)

    ;; draw inside radius cylinder */
    (gl:begin gl:+quad-strip+)
    (dotimes (i (1+ teeth))
      (setf angle (/ (* i 2.0 pi) teeth))
      (gl:normal-3f (- (sfcos angle)) (- (sfsin angle)) 0.0)
      (gl:vertex-3f (* r0 (sfcos angle)) (* r0 (sfsin angle)) (* (- width) 0.5))
      (gl:vertex-3f (* r0 (sfcos angle)) (* r0 (sfsin angle)) (* width 0.5)))
    (gl:end)))


(defun draw ()
  (gl:clear (logior gl:+color-buffer-bit+ gl:+depth-buffer-bit+))
  (gl:push-matrix)
    (gl:rotate-f *view_rotx* 1.0 0.0 0.0)
    (gl:rotate-f *view_roty* 0.0 1.0 0.0)
    (gl:rotate-f *view_rotz* 0.0 0.0 1.0)

    (gl:push-matrix)
      (gl:translate-f -3.0 -2.0 0.0)
      (gl:rotate-f *angle* 0.0 0.0 1.0)
      (gl:call-list *gear1*)
    (gl:pop-matrix)

    (gl:push-matrix)
      (gl:translate-f 3.1 -2.0 0.0)
      (gl:rotate-f (- (* -2.0 *angle*) 9.0) 0.0 0.0 1.0)
      (gl:call-list *gear2*)
    (gl:pop-matrix)

    (gl:push-matrix)
      (gl:translate-f -3.1 4.2 0.0)
      (gl:rotate-f (- (* -2.0 *angle*) 25.0) 0.0 0.0 1.0)
      (gl:call-list *gear3*)
    (gl:pop-matrix)

  (gl:pop-matrix)

  (incf *frames*)

  (let ((t_new (glfw:get-time)))
    (setf *dt* (- t_new *t*))
    (setf *t* t_new)
    (when (>= (- *t* *t0*) 5.0)
      (let* ((seconds (- *t* *t0*))
            (fps (/ *frames* seconds)))
        (format t "~d frames in ~3$ seconds = ~3$ FPS~%" *frames* seconds fps)
        (setf *t0* *t*)
        (setf *frames* 0)
        (when (and (>= *t* (* 0.999 *autoexit*)) (not (eql *autoexit* 0)))
          (setf *running* nil))))))


(defun animate()
  (setf *angle* (coerce (+ *angle* (* 100.0 *dt*)) 'single-float)))

(defun init-gl ()
  (let ((pos (cffi:foreign-alloc 'gl:float :initial-contents '(5.0 5.0 10.0 0.0)))
       (red (cffi:foreign-alloc 'gl:float :initial-contents '(0.8 0.1 0.0 1.0)))
       (green (cffi:foreign-alloc 'gl:float :initial-contents '(0.0 0.8 0.2 1.0)))
       (blue (cffi:foreign-alloc 'gl:float :initial-contents '(0.2 0.2 1.0 1.0)))
       (command-line (or
         #+sbcl sb-ext:*posix-argv*
         #+lispworks system:*line-arguments-list*
         #+cmu extensions:*command-line-words*
         nil)))
    (gl:light-fv gl:+light0+ gl:+position+ pos)
    (gl:enable gl:+cull-face+)
    (gl:enable gl:+lighting+)
    (gl:enable gl:+light0+)
    (gl:enable gl:+depth-test+)

    ;; make the gears
    (setf *gear1* (gl:gen-lists 1))
    (gl:new-list *gear1* gl:+compile+) ; glNewList(gear1, GL_COMPILE);
    (gl:material-fv gl:+front+ gl:+ambient-and-diffuse+ red) ; glMaterialfv(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, red);
    (gear 1.0 4.0 1.0 20 0.7) ; gear(1.0, 4.0, 1.0, 20, 0.7);
    (gl:end-list) ; glEndList();

    (setf *gear2* (gl:gen-lists 1)) ; gear2 = glGenLists(1);
    (gl:new-list *gear2* gl:+compile+) ; glNewList(gear2, GL_COMPILE);
    (gl:material-fv gl:+front+ gl:+ambient-and-diffuse+ green) ; glMaterialfv(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, green);
    (gear 0.5 2.0 2.0 10 0.7) ; gear(0.5, 2.0, 2.0, 10, 0.7);
    (gl:end-list) ; glEndList();

    (setf *gear3* (gl:gen-lists 1)) ; gear3 = glGenLists(1);
    (gl:new-list *gear3* gl:+compile+) ; glNewList(gear3, GL_COMPILE);
    (gl:material-fv gl:+front+ gl:+ambient-and-diffuse+ blue) ; glMaterialfv(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, blue);
    (gear 1.3 2.0 0.5 10 0.7) ; gear(1.3, 2.0, 0.5, 10, 0.7);
    (gl:end-list) ; glEndList();

    (gl:enable gl:+normalize+) ; glEnable(GL_NORMALIZE);

    ;; did we get -info or -exit?
    (dolist (arg command-line)
      (cond ((string= arg "-info")
              (format t "GL_RENDERER   = ~s~%GL_VERSION    = ~s~%GL_VENDOR     = ~s~%GL_EXTENSIONS = ~s~%"
                (gl:get-string gl:+renderer+)
                (gl:get-string gl:+version+)
                (gl:get-string gl:+vendor+)
                (gl:get-string gl:+extensions+)))
            ((string= arg "-exit")
              (progn
                (setf *autoexit* 30)
                (format t "Auto Exit after ~d seconds.~%" *autoexit*)))))

    (cffi:foreign-free pos)
    (cffi:foreign-free red)
    (cffi:foreign-free green)
    (cffi:foreign-free blue)))

(cffi:defcallback key-callback :void ((key :int) (action :int))
  (when (eql action glfw:+press+)
    (cond ((eql key (char-code #\Z))
            (if (eql (glfw:get-key glfw:+key-lshift+) glfw:+press+)
              (decf *view_rotz* 5.0)
              (incf *view_rotz* 5.0)))
          ((eql key glfw:+key-esc+)
            (setf *running* nil))
          ((eql key glfw:+key-up+)
            (incf *view_rotx* 5.0))
          ((eql key glfw:+key-down+)
            (decf *view_rotx* 5.0))
          ((eql key glfw:+key-left+)
            (incf *view_roty* 5.0))
          ((eql key glfw:+key-right+)
            (decf *view_roty* 5.0)))))

(cffi:defcallback window-size-callback :void ((width :int) (height :int))
  (let* ((h (/ height width))
        (znear 5.0d0)
        (zfar 30.0d0)
        (xmax (* znear 0.5d0)))

    (gl:viewport 0 0 width height)
    (gl:matrix-mode gl:+projection+)
    (gl:load-identity)
    (gl:frustum (- xmax) xmax (* (- xmax) h) (* xmax h) znear zfar)
    (gl:matrix-mode gl:+modelview+)
    (gl:load-identity)
    (gl:translate-f 0.0 0.0 -20.0)
  ))

(glfw:init)
(if (eql (glfw:open-window 300 300 0 0 0 0 16 0 glfw:+window+) 0)
  (progn
    (glfw:terminate)
    (error "Could not initialize a window.")))
(glfw:set-window-title "Gears")
(glfw:enable glfw:+key-repeat+)
(glfw:swap-interval 0)

;; launch OpenGL with our settings
(init-gl)

(glfw:set-window-size-callback (cffi:callback window-size-callback))
(glfw:set-key-callback (cffi:callback key-callback))

;; program loop
(do () ((eql *running* nil))
  (draw)
  (animate)
  (glfw:swap-buffers)
  (setf *running* (and *running* (> (glfw:get-window-param glfw:+opened+) 0)))
)

(glfw:terminate)
