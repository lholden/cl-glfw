
(in-package #:gl) 

;;;; MESA_window_pos

(defglextfun
 (("WindowPos4svMESA" window-pos-4sv-mesa) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x4)) :return
  ("void") :category ("MESA_window_pos") :version ("1.0") :glxropcode ("?")
  :glsopcode ("0x01FB") :offset ("536"))) 
(defglextfun
 (("WindowPos4sMESA" window-pos-4s-mesa) :args
  ((:name |x| :type |CoordS| :direction :in)
   (:name |y| :type |CoordS| :direction :in)
   (:name |z| :type |CoordS| :direction :in)
   (:name |w| :type |CoordS| :direction :in))
  :return ("void") :category ("MESA_window_pos") :vectorequiv
  ("WindowPos4svMESA") :version ("1.0") :offset ("535"))) 
(defglextfun
 (("WindowPos4ivMESA" window-pos-4iv-mesa) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x4)) :return
  ("void") :category ("MESA_window_pos") :version ("1.0") :glxropcode ("?")
  :glsopcode ("0x01FA") :offset ("534"))) 
(defglextfun
 (("WindowPos4iMESA" window-pos-4i-mesa) :args
  ((:name |x| :type |CoordI| :direction :in)
   (:name |y| :type |CoordI| :direction :in)
   (:name |z| :type |CoordI| :direction :in)
   (:name |w| :type |CoordI| :direction :in))
  :return ("void") :category ("MESA_window_pos") :vectorequiv
  ("WindowPos4ivMESA") :version ("1.0") :offset ("533"))) 
(defglextfun
 (("WindowPos4fvMESA" window-pos-4fv-mesa) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x4)) :return
  ("void") :category ("MESA_window_pos") :version ("1.0") :glxropcode ("?")
  :glsopcode ("0x01F9") :offset ("532"))) 
(defglextfun
 (("WindowPos4fMESA" window-pos-4f-mesa) :args
  ((:name |x| :type |CoordF| :direction :in)
   (:name |y| :type |CoordF| :direction :in)
   (:name |z| :type |CoordF| :direction :in)
   (:name |w| :type |CoordF| :direction :in))
  :return ("void") :category ("MESA_window_pos") :vectorequiv
  ("WindowPos4fvMESA") :version ("1.0") :offset ("531"))) 
(defglextfun
 (("WindowPos4dvMESA" window-pos-4dv-mesa) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x4)) :return
  ("void") :category ("MESA_window_pos") :version ("1.0") :glxropcode ("?")
  :glsopcode ("0x01F8") :offset ("530"))) 
(defglextfun
 (("WindowPos4dMESA" window-pos-4d-mesa) :args
  ((:name |x| :type |CoordD| :direction :in)
   (:name |y| :type |CoordD| :direction :in)
   (:name |z| :type |CoordD| :direction :in)
   (:name |w| :type |CoordD| :direction :in))
  :return ("void") :vectorequiv ("WindowPos4dvMESA") :category
  ("MESA_window_pos") :version ("1.0") :offset ("529"))) 
(defglextfun
 (("WindowPos3svMESA" window-pos-3sv-mesa) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x3)) :return
  ("void") :category ("MESA_window_pos") :version ("1.0") :glxropcode ("?")
  :glsopcode ("0x01F7") :alias ("WindowPos3svARB"))) 
(defglextfun
 (("WindowPos3sMESA" window-pos-3s-mesa) :args
  ((:name |x| :type |CoordS| :direction :in)
   (:name |y| :type |CoordS| :direction :in)
   (:name |z| :type |CoordS| :direction :in))
  :return ("void") :category ("MESA_window_pos") :vectorequiv
  ("WindowPos3svMESA") :version ("1.0") :alias ("WindowPos3sARB"))) 
(defglextfun
 (("WindowPos3ivMESA" window-pos-3iv-mesa) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x3)) :return
  ("void") :category ("MESA_window_pos") :version ("1.0") :glxropcode ("?")
  :glsopcode ("0x01F6") :alias ("WindowPos3ivARB"))) 
(defglextfun
 (("WindowPos3iMESA" window-pos-3i-mesa) :args
  ((:name |x| :type |CoordI| :direction :in)
   (:name |y| :type |CoordI| :direction :in)
   (:name |z| :type |CoordI| :direction :in))
  :return ("void") :category ("MESA_window_pos") :vectorequiv
  ("WindowPos3ivMESA") :version ("1.0") :alias ("WindowPos3iARB"))) 
(defglextfun
 (("WindowPos3fvMESA" window-pos-3fv-mesa) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x3)) :return
  ("void") :category ("MESA_window_pos") :version ("1.0") :glxropcode ("?")
  :glsopcode ("0x01F5") :alias ("WindowPos3fvARB"))) 
(defglextfun
 (("WindowPos3fMESA" window-pos-3f-mesa) :args
  ((:name |x| :type |CoordF| :direction :in)
   (:name |y| :type |CoordF| :direction :in)
   (:name |z| :type |CoordF| :direction :in))
  :return ("void") :category ("MESA_window_pos") :vectorequiv
  ("WindowPos3fvMESA") :version ("1.0") :alias ("WindowPos3fARB"))) 
(defglextfun
 (("WindowPos3dvMESA" window-pos-3dv-mesa) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x3)) :return
  ("void") :category ("MESA_window_pos") :version ("1.0") :glxropcode ("?")
  :glsopcode ("0x01F4") :alias ("WindowPos3dvARB"))) 
(defglextfun
 (("WindowPos3dMESA" window-pos-3d-mesa) :args
  ((:name |x| :type |CoordD| :direction :in)
   (:name |y| :type |CoordD| :direction :in)
   (:name |z| :type |CoordD| :direction :in))
  :return ("void") :vectorequiv ("WindowPos3dvMESA") :category
  ("MESA_window_pos") :version ("1.0") :alias ("WindowPos3dARB"))) 
(defglextfun
 (("WindowPos2svMESA" window-pos-2sv-mesa) :args
  ((:name |v| :type |CoordS| :direction :in :array t :size #x2)) :return
  ("void") :category ("MESA_window_pos") :version ("1.0") :glxropcode ("?")
  :glsopcode ("0x01F3") :alias ("WindowPos2svARB"))) 
(defglextfun
 (("WindowPos2sMESA" window-pos-2s-mesa) :args
  ((:name |x| :type |CoordS| :direction :in)
   (:name |y| :type |CoordS| :direction :in))
  :return ("void") :category ("MESA_window_pos") :vectorequiv
  ("WindowPos2svMESA") :version ("1.0") :alias ("WindowPos2sARB"))) 
(defglextfun
 (("WindowPos2ivMESA" window-pos-2iv-mesa) :args
  ((:name |v| :type |CoordI| :direction :in :array t :size #x2)) :return
  ("void") :category ("MESA_window_pos") :version ("1.0") :glxropcode ("?")
  :glsopcode ("0x01F2") :alias ("WindowPos2ivARB"))) 
(defglextfun
 (("WindowPos2iMESA" window-pos-2i-mesa) :args
  ((:name |x| :type |CoordI| :direction :in)
   (:name |y| :type |CoordI| :direction :in))
  :return ("void") :category ("MESA_window_pos") :vectorequiv
  ("WindowPos2ivMESA") :version ("1.0") :alias ("WindowPos2iARB"))) 
(defglextfun
 (("WindowPos2fvMESA" window-pos-2fv-mesa) :args
  ((:name |v| :type |CoordF| :direction :in :array t :size #x2)) :return
  ("void") :category ("MESA_window_pos") :version ("1.0") :glxropcode ("?")
  :glsopcode ("0x01F1") :alias ("WindowPos2fvARB"))) 
(defglextfun
 (("WindowPos2fMESA" window-pos-2f-mesa) :args
  ((:name |x| :type |CoordF| :direction :in)
   (:name |y| :type |CoordF| :direction :in))
  :return ("void") :category ("MESA_window_pos") :vectorequiv
  ("WindowPos2fvMESA") :version ("1.0") :alias ("WindowPos2fARB"))) 
(defglextfun
 (("WindowPos2dvMESA" window-pos-2dv-mesa) :args
  ((:name |v| :type |CoordD| :direction :in :array t :size #x2)) :return
  ("void") :category ("MESA_window_pos") :version ("1.0") :glxropcode ("?")
  :glsopcode ("0x01F0") :alias ("WindowPos2dvARB"))) 
(defglextfun
 (("WindowPos2dMESA" window-pos-2d-mesa) :args
  ((:name |x| :type |CoordD| :direction :in)
   (:name |y| :type |CoordD| :direction :in))
  :return ("void") :category ("MESA_window_pos") :vectorequiv
  ("WindowPos2dvMESA") :version ("1.0") :alias ("WindowPos2dARB"))) 