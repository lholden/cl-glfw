
(in-package #:gl) 

;;;; ARB_window_pos

(defglextfun
 (("WindowPos3svARB" window-pos-3sv-arb) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x3)) :return
  ("void") :category ("ARB_window_pos") :version ("1.0") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :alias ("WindowPos3sv")
  :glsalias ("WindowPos3sv"))) 
(defglextfun
 (("WindowPos3sARB" window-pos-3s-arb) :args
  ((:name |x| :type |CoordS| :direction :in)
   (:name |y| :type |CoordS| :direction :in)
   (:name |z| :type |CoordS| :direction :in))
  :return ("void") :category ("ARB_window_pos") :vectorequiv
  ("WindowPos3svARB") :version ("1.0") :alias ("WindowPos3s") :glsalias
  ("WindowPos3s"))) 
(defglextfun
 (("WindowPos3ivARB" window-pos-3iv-arb) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x3)) :return
  ("void") :category ("ARB_window_pos") :version ("1.0") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :alias ("WindowPos3iv")
  :glsalias ("WindowPos3iv"))) 
(defglextfun
 (("WindowPos3iARB" window-pos-3i-arb) :args
  ((:name |x| :type |CoordI| :direction :in)
   (:name |y| :type |CoordI| :direction :in)
   (:name |z| :type |CoordI| :direction :in))
  :return ("void") :category ("ARB_window_pos") :vectorequiv
  ("WindowPos3ivARB") :version ("1.0") :alias ("WindowPos3i") :glsalias
  ("WindowPos3i"))) 
(defglextfun
 (("WindowPos3fvARB" window-pos-3fv-arb) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x3)) :return
  ("void") :category ("ARB_window_pos") :version ("1.0") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :alias ("WindowPos3fv")
  :glsalias ("WindowPos3fv"))) 
(defglextfun
 (("WindowPos3fARB" window-pos-3f-arb) :args
  ((:name |x| :type |CoordF| :direction :in)
   (:name |y| :type |CoordF| :direction :in)
   (:name |z| :type |CoordF| :direction :in))
  :return ("void") :category ("ARB_window_pos") :vectorequiv
  ("WindowPos3fvARB") :version ("1.0") :alias ("WindowPos3f") :glsalias
  ("WindowPos3f"))) 
(defglextfun
 (("WindowPos3dvARB" window-pos-3dv-arb) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x3)) :return
  ("void") :category ("ARB_window_pos") :version ("1.0") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :alias ("WindowPos3dv")
  :glsalias ("WindowPos3dv"))) 
(defglextfun
 (("WindowPos3dARB" window-pos-3d-arb) :args
  ((:name |x| :type |CoordD| :direction :in)
   (:name |y| :type |CoordD| :direction :in)
   (:name |z| :type |CoordD| :direction :in))
  :return ("void") :vectorequiv ("WindowPos3dvARB") :category
  ("ARB_window_pos") :version ("1.0") :alias ("WindowPos3d") :glsalias
  ("WindowPos3d"))) 
(defglextfun
 (("WindowPos2svARB" window-pos-2sv-arb) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x2)) :return
  ("void") :category ("ARB_window_pos") :version ("1.0") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :alias ("WindowPos2sv")
  :glsalias ("WindowPos2sv"))) 
(defglextfun
 (("WindowPos2sARB" window-pos-2s-arb) :args
  ((:name |x| :type |CoordS| :direction :in)
   (:name |y| :type |CoordS| :direction :in))
  :return ("void") :category ("ARB_window_pos") :vectorequiv
  ("WindowPos2svARB") :version ("1.0") :alias ("WindowPos2s") :glsalias
  ("WindowPos2s"))) 
(defglextfun
 (("WindowPos2ivARB" window-pos-2iv-arb) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x2)) :return
  ("void") :category ("ARB_window_pos") :version ("1.0") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :alias ("WindowPos2iv")
  :glsalias ("WindowPos2iv"))) 
(defglextfun
 (("WindowPos2iARB" window-pos-2i-arb) :args
  ((:name |x| :type |CoordI| :direction :in)
   (:name |y| :type |CoordI| :direction :in))
  :return ("void") :category ("ARB_window_pos") :vectorequiv
  ("WindowPos2ivARB") :version ("1.0") :alias ("WindowPos2i") :glsalias
  ("WindowPos2i"))) 
(defglextfun
 (("WindowPos2fvARB" window-pos-2fv-arb) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x2)) :return
  ("void") :category ("ARB_window_pos") :version ("1.0") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :alias ("WindowPos2fv")
  :glsalias ("WindowPos2fv"))) 
(defglextfun
 (("WindowPos2fARB" window-pos-2f-arb) :args
  ((:name |x| :type |CoordF| :direction :in)
   (:name |y| :type |CoordF| :direction :in))
  :return ("void") :category ("ARB_window_pos") :vectorequiv
  ("WindowPos2fvARB") :version ("1.0") :alias ("WindowPos2f") :glsalias
  ("WindowPos2f"))) 
(defglextfun
 (("WindowPos2dvARB" window-pos-2dv-arb) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x2)) :return
  ("void") :category ("ARB_window_pos") :version ("1.0") :glxropcode ("230")
  :glxflags ("client-handcode" "server-handcode") :alias ("WindowPos2dv")
  :glsalias ("WindowPos2dv"))) 
(defglextfun
 (("WindowPos2dARB" window-pos-2d-arb) :args
  ((:name |x| :type |CoordD| :direction :in)
   (:name |y| :type |CoordD| :direction :in))
  :return ("void") :category ("ARB_window_pos") :vectorequiv
  ("WindowPos2dvARB") :version ("1.0") :alias ("WindowPos2d") :glsalias
  ("WindowPos2d"))) 