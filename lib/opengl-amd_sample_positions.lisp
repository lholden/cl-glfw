;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; amd_sample_positions

(defconstant +subsample-distance-amd+ #x883F) 
(defconstant +subsample-distance-amd+ #x883F) 
(defglextfun "SetMultisamplefvAMD" set-multisamplefv-amd :return "void" :args
 ((:name |pname| :type |GLenum| :direction :in)
  (:name |index| :type |UInt32| :direction :in)
  (:name |val| :type |Float32| :direction :in :array t :size #x2))
 :category "AMD_sample_positions" :deprecated nil :version "3.2") 
(make-extension-loader |AMD_sample_positions|
 (("SetMultisamplefvAMD" set-multisamplefv-amd :return "void" :args
   ((:name |pname| :type |GLenum| :direction :in)
    (:name |index| :type |UInt32| :direction :in)
    (:name |val| :type |Float32| :direction :in :array t :size #x2))
   :category "AMD_sample_positions" :deprecated nil :version "3.2"))) 
