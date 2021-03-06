;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; apple_object_purgeable

(defconstant +released-apple+ #x8A19) 
(defconstant +volatile-apple+ #x8A1A) 
(defconstant +retained-apple+ #x8A1B) 
(defconstant +undefined-apple+ #x8A1C) 
(defconstant +purgeable-apple+ #x8A1D) 
(defconstant +buffer-object-apple+ #x85B3) 
(defconstant +released-apple+ #x8A19) 
(defconstant +volatile-apple+ #x8A1A) 
(defconstant +retained-apple+ #x8A1B) 
(defconstant +undefined-apple+ #x8A1C) 
(defconstant +purgeable-apple+ #x8A1D) 
(defglextfun "GetObjectParameterivAPPLE" get-object-parameter-iv-apple :return
 "void" :args
 ((:name |objectType| :type |GLenum| :direction :in)
  (:name |name| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
 :category "APPLE_object_purgeable" :deprecated nil :version "1.5") 
(defglextfun "ObjectUnpurgeableAPPLE" object-unpurgeable-apple :return "GLenum"
 :args
 ((:name |objectType| :type |GLenum| :direction :in)
  (:name |name| :type |UInt32| :direction :in)
  (:name |option| :type |GLenum| :direction :in))
 :category "APPLE_object_purgeable" :deprecated nil :version "1.5") 
(defglextfun "ObjectPurgeableAPPLE" object-purgeable-apple :return "GLenum"
 :args
 ((:name |objectType| :type |GLenum| :direction :in)
  (:name |name| :type |UInt32| :direction :in)
  (:name |option| :type |GLenum| :direction :in))
 :category "APPLE_object_purgeable" :deprecated nil :version "1.5") 
(make-extension-loader |APPLE_object_purgeable|
 (("GetObjectParameterivAPPLE" get-object-parameter-iv-apple :return "void"
   :args
   ((:name |objectType| :type |GLenum| :direction :in)
    (:name |name| :type |UInt32| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
   :category "APPLE_object_purgeable" :deprecated nil :version "1.5")
  ("ObjectUnpurgeableAPPLE" object-unpurgeable-apple :return "GLenum" :args
   ((:name |objectType| :type |GLenum| :direction :in)
    (:name |name| :type |UInt32| :direction :in)
    (:name |option| :type |GLenum| :direction :in))
   :category "APPLE_object_purgeable" :deprecated nil :version "1.5")
  ("ObjectPurgeableAPPLE" object-purgeable-apple :return "GLenum" :args
   ((:name |objectType| :type |GLenum| :direction :in)
    (:name |name| :type |UInt32| :direction :in)
    (:name |option| :type |GLenum| :direction :in))
   :category "APPLE_object_purgeable" :deprecated nil :version "1.5"))) 
