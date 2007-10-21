(require '#:asdf)
(asdf:oos 'asdf:load-op '#:cl-glfw-opengl-version_2_0)

(defparameter *shader-program* nil)
(defparameter *uniform-time* nil)

(glfw:do-window ("A Shader Example")
    ((gl:with-setup-projection
       (glu:perspective 45.0d0 (/ 4.0d0 3.0d0) 0.1d0 50.0d0))
     (setf *shader-program*
	   (gl:make-program
	    (gl:make-shader gl:+vertex-shader+ "
varying vec3 colour;
void main()
{
  colour = gl_Color.rgb;
  gl_Position = ftransform();
}
")
	    (gl:make-shader gl:+fragment-shader+ "
uniform float time;
varying vec3 colour;
const float pi2=2.0*3.14159265;
void main ()
{
  gl_FragColor = vec4(pow(sin(colour.r*pi2*4.0+mod(time*8.0,pi2)),2.0),
	              pow(sin(colour.g*pi2*4.0+mod(time*8.0,pi2)),2.0),
	              pow(sin(colour.b*pi2*4.0+mod(time*8.0,pi2)),2.0),
		      1.0);
}
")))
     (gl:use-program *shader-program*)
     (setf *uniform-time* (gl:get-uniform-location *shader-program* "time")))
  (gl:clear gl:+color-buffer-bit+)
  (gl:load-identity)
  (gl:translate-f 0.0 0.0 -5.0)
  (gl:rotate-d (* 10.0d0 (glfw:get-time)) 1d0 1d0 0d0)
  (gl:rotate-d (* 90.0d0 (glfw:get-time)) 0d0 0d0 1d0)
  (gl:uniform-1f *uniform-time* (coerce (glfw:get-time) 'single-float))
  (gl:with-begin gl:+triangles+
    (gl:color-3f 1.0 0.0 0.0) (gl:vertex-3f  1.0  0.0 0.0)
    (gl:color-3f 0.0 1.0 0.0) (gl:vertex-3f -1.0  1.0 0.0)
    (gl:color-3f 0.0 0.0 1.0) (gl:vertex-3f -1.0 -1.0 0.0)))