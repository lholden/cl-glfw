(require '#:asdf)
(asdf:oos 'asdf:load-op '#:cl-glfw)

(glfw:do-window ("A Simple Example")
    ((gl:with-setup-projection
       (glu:perspective 45.0d0 (/ 4.0d0 3.0d0) 0.1d0 50.0d0)))
  (gl:clear gl:+color-buffer-bit+)
  (gl:load-identity)
  (gl:translate-f 0.0 0.0 -5.0)
  (gl:rotate-d (* 10.0d0 (glfw:get-time)) 1d0 1d0 0d0)
  (gl:rotate-d (* 90.0d0 (glfw:get-time)) 0d0 0d0 1d0)
  (gl:with-begin gl:+triangles+
    (gl:color-3f 1.0 0.0 0.0) (gl:vertex-3f  1.0  0.0 0.0)
    (gl:color-3f 0.0 1.0 0.0) (gl:vertex-3f -1.0  1.0 0.0)
    (gl:color-3f 0.0 0.0 1.0) (gl:vertex-3f -1.0 -1.0 0.0)))