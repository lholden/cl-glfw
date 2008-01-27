(defpackage #:cl-glfw-types
  (:use #:cl #:cffi)
  (:shadow #:boolean #:byte #:float #:char #:string)
  (:export #:enum #:boolean #:bitfield #:byte #:short #:int #:sizei #:ubyte #:ushort #:uint 
           #:float #:clampf #:double #:clampd #:void #:uint64 #:int64 
           #:intptr #:sizeiptr 
           #:handle
           #:char #:string
           #:half))

(in-package #:cl-glfw-types)

(defctype enum :uint32)
(defctype boolean :uint8)
(defctype bitfield :uint32)
(defctype byte :int8)
(defctype short :int16)
(defctype int :int32)
(defctype sizei :int32)
(defctype ubyte :uint8)
(defctype ushort :uint16)
(defctype uint :uint32)
(defctype float :float)
(defctype clampf :float)
(defctype double :double)
(defctype clampd :double)
(defctype void :void)

#-cffi-features:no-long-long
(defctype uint64 :uint64)
#-cffi-features:no-long-long
(defctype int64 :int64)

;; Find a CFFI integer type the same foreign-size as a pointer
(defctype intptr #.(find-symbol (format nil "INT~d" (* 8 (cffi:foreign-type-size :pointer))) (find-package '#:keyword)))
(defctype sizeiptr #.(find-symbol (format nil "INT~d" (* 8 (cffi:foreign-type-size :pointer))) (find-package '#:keyword)))

(defctype handle :unsigned-int)

(defctype char :char)

(defctype string :string)

(defctype half :unsigned-short) ; this is how glext.h defines it anyway

(defmethod cffi:expand-to-foreign (value (type (eql 'boolean)))
  `(if ,value 1 0))

(defmethod cffi:expand-from-foreign (value (type (eql 'boolean)))
  `(not (= ,value 0)))

(defmethod cffi:expand-to-foreign (value (type (eql 'clampf)))
  `(coerce ,value 'single-float))

(defmethod cffi:expand-to-foreign (value (type (eql 'clampd)))
  `(coerce ,value 'double-float))

(defmethod cffi:expand-to-foreign (value (type (eql 'float)))
  `(coerce ,value 'single-float))

(defmethod cffi:expand-to-foreign (value (type (eql 'double)))
  `(coerce ,value 'double-float))

;; TODO: Maybe we can find/write a converter to a half? Does anyone want it?
;; TODO: Might we want converters to integer types? What would it be? round, or floor (or even ceil)?
