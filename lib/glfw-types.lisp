
(in-package #:glfw)

;; copy the boolean from OpenGL
(defctype boolean :uint8)

(defconstant +false+ #x0) 
(defconstant +true+ #x1)

(defmethod cffi:expand-to-foreign (value (type (eql 'boolean)))
  `(if ,value +true+ +false+))

(defmethod cffi:expand-from-foreign (value (type (eql 'boolean)))
  `(not (= ,value +false+)))

