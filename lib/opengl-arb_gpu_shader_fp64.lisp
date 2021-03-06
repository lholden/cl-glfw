;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_gpu_shader_fp64

(defconstant +double-mat2+ #x8F46) 
(defconstant +double-mat3+ #x8F47) 
(defconstant +double-mat4+ #x8F48) 
(defconstant +double-mat2x3+ #x8F49) 
(defconstant +double-mat2x4+ #x8F4A) 
(defconstant +double-mat3x2+ #x8F4B) 
(defconstant +double-mat3x4+ #x8F4C) 
(defconstant +double-mat4x2+ #x8F4D) 
(defconstant +double-mat4x3+ #x8F4E) 
(defconstant +double-vec2+ #x8FFC) 
(defconstant +double-vec3+ #x8FFD) 
(defconstant +double-vec4+ #x8FFE) 
(defconstant +double-mat2+ #x8F46) 
(defconstant +double-mat3+ #x8F47) 
(defconstant +double-mat4+ #x8F48) 
(defconstant +double-mat2x3+ #x8F49) 
(defconstant +double-mat2x4+ #x8F4A) 
(defconstant +double-mat3x2+ #x8F4B) 
(defconstant +double-mat3x4+ #x8F4C) 
(defconstant +double-mat4x2+ #x8F4D) 
(defconstant +double-mat4x3+ #x8F4E) 
(defglextfun "GetUniformdv" get-uniform-dv :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name |params| :type |Float64| :direction :out :array t :size (|location|)))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "UniformMatrix4x3dv" uniform-matrix-4x-3dv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |transpose| :type |Boolean| :direction :in)
  (:name |value| :type |Float64| :direction :in :array t :size count))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "UniformMatrix4x2dv" uniform-matrix-4x-2dv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |transpose| :type |Boolean| :direction :in)
  (:name |value| :type |Float64| :direction :in :array t :size count))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "UniformMatrix3x4dv" uniform-matrix-3x-4dv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |transpose| :type |Boolean| :direction :in)
  (:name |value| :type |Float64| :direction :in :array t :size count))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "UniformMatrix3x2dv" uniform-matrix-3x-2dv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |transpose| :type |Boolean| :direction :in)
  (:name |value| :type |Float64| :direction :in :array t :size count))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "UniformMatrix2x4dv" uniform-matrix-2x-4dv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |transpose| :type |Boolean| :direction :in)
  (:name |value| :type |Float64| :direction :in :array t :size count))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "UniformMatrix2x3dv" uniform-matrix-2x-3dv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |transpose| :type |Boolean| :direction :in)
  (:name |value| :type |Float64| :direction :in :array t :size count))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "UniformMatrix4dv" uniform-matrix-4dv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |transpose| :type |Boolean| :direction :in)
  (:name |value| :type |Float64| :direction :in :array t :size count))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "UniformMatrix3dv" uniform-matrix-3dv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |transpose| :type |Boolean| :direction :in)
  (:name |value| :type |Float64| :direction :in :array t :size count))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "UniformMatrix2dv" uniform-matrix-2dv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |transpose| :type |Boolean| :direction :in)
  (:name |value| :type |Float64| :direction :in :array t :size count))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "Uniform4dv" uniform-4dv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |Float64| :direction :in :array t :size count))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "Uniform3dv" uniform-3dv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |Float64| :direction :in :array t :size count))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "Uniform2dv" uniform-2dv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |Float64| :direction :in :array t :size count))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "Uniform1dv" uniform-1dv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |Float64| :direction :in :array t :size count))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "Uniform4d" uniform-4d :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |x| :type |Float64| :direction :in)
  (:name |y| :type |Float64| :direction :in)
  (:name |z| :type |Float64| :direction :in)
  (:name |w| :type |Float64| :direction :in))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "Uniform3d" uniform-3d :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |x| :type |Float64| :direction :in)
  (:name |y| :type |Float64| :direction :in)
  (:name |z| :type |Float64| :direction :in))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "Uniform2d" uniform-2d :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |x| :type |Float64| :direction :in)
  (:name |y| :type |Float64| :direction :in))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(defglextfun "Uniform1d" uniform-1d :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |x| :type |Float64| :direction :in))
 :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2") 
(make-extension-loader |ARB_gpu_shader_fp64|
 (("GetUniformdv" get-uniform-dv :return "void" :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name |params| :type |Float64| :direction :out :array t :size
     (|location|)))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("UniformMatrix4x3dv" uniform-matrix-4x-3dv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |transpose| :type |Boolean| :direction :in)
    (:name |value| :type |Float64| :direction :in :array t :size count))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("UniformMatrix4x2dv" uniform-matrix-4x-2dv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |transpose| :type |Boolean| :direction :in)
    (:name |value| :type |Float64| :direction :in :array t :size count))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("UniformMatrix3x4dv" uniform-matrix-3x-4dv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |transpose| :type |Boolean| :direction :in)
    (:name |value| :type |Float64| :direction :in :array t :size count))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("UniformMatrix3x2dv" uniform-matrix-3x-2dv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |transpose| :type |Boolean| :direction :in)
    (:name |value| :type |Float64| :direction :in :array t :size count))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("UniformMatrix2x4dv" uniform-matrix-2x-4dv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |transpose| :type |Boolean| :direction :in)
    (:name |value| :type |Float64| :direction :in :array t :size count))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("UniformMatrix2x3dv" uniform-matrix-2x-3dv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |transpose| :type |Boolean| :direction :in)
    (:name |value| :type |Float64| :direction :in :array t :size count))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("UniformMatrix4dv" uniform-matrix-4dv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |transpose| :type |Boolean| :direction :in)
    (:name |value| :type |Float64| :direction :in :array t :size count))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("UniformMatrix3dv" uniform-matrix-3dv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |transpose| :type |Boolean| :direction :in)
    (:name |value| :type |Float64| :direction :in :array t :size count))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("UniformMatrix2dv" uniform-matrix-2dv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |transpose| :type |Boolean| :direction :in)
    (:name |value| :type |Float64| :direction :in :array t :size count))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("Uniform4dv" uniform-4dv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |Float64| :direction :in :array t :size count))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("Uniform3dv" uniform-3dv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |Float64| :direction :in :array t :size count))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("Uniform2dv" uniform-2dv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |Float64| :direction :in :array t :size count))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("Uniform1dv" uniform-1dv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |Float64| :direction :in :array t :size count))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("Uniform4d" uniform-4d :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |x| :type |Float64| :direction :in)
    (:name |y| :type |Float64| :direction :in)
    (:name |z| :type |Float64| :direction :in)
    (:name |w| :type |Float64| :direction :in))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("Uniform3d" uniform-3d :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |x| :type |Float64| :direction :in)
    (:name |y| :type |Float64| :direction :in)
    (:name |z| :type |Float64| :direction :in))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("Uniform2d" uniform-2d :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |x| :type |Float64| :direction :in)
    (:name |y| :type |Float64| :direction :in))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2")
  ("Uniform1d" uniform-1d :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |x| :type |Float64| :direction :in))
   :category "ARB_gpu_shader_fp64" :deprecated nil :version "1.2"))) 
