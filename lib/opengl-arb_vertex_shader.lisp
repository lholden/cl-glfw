
(in-package #:gl) 

;;;; ARB_vertex_shader

(defconstant +vertex-shader-arb+ #x8B31) 
(defconstant +max-vertex-uniform-components-arb+ #x8B4A) 
(defconstant +max-varying-floats-arb+ #x8B4B) 
(defconstant +max-combined-texture-image-units-arb+ #x8B4D) 
(defconstant +object-active-attributes-arb+ #x8B89) 
(defconstant +object-active-attribute-max-length-arb+ #x8B8A) 
(defglextfun
 (("GetAttribLocationARB" get-attrib-location-arb) :args
  ((:name |programObj| :type |handleARB| :direction :in)
   (:name |name| :type |charARB| :direction :in :array t))
  :return ("Int32") :category ("ARB_vertex_shader") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore") :alias
  ("GetAttribLocation") :glsalias ("GetAttribLocation"))) 
(defglextfun
 (("GetActiveAttribARB" get-active-attrib-arb) :args
  ((:name |programObj| :type |handleARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |maxLength| :type |SizeI| :direction :in)
   (:name |length| :type |SizeI| :direction :out :array t :size #x1)
   (:name |size| :type |Int32| :direction :out :array t :size #x1)
   (:name |type| :type |GLenum| :direction :out :array t :size #x1)
   (:name |name| :type |charARB| :direction :out :array t))
  :return ("void") :category ("ARB_vertex_shader") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore") :alias
  ("GetActiveAttrib") :glsalias ("GetActiveAttrib"))) 
(defglextfun
 (("BindAttribLocationARB" bind-attrib-location-arb) :args
  ((:name |programObj| :type |handleARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |name| :type |charARB| :direction :in :array t))
  :return ("void") :category ("ARB_vertex_shader") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("BindAttribLocation")
  :glsalias ("BindAttribLocation"))) 