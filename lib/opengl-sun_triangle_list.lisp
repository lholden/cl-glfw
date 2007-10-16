
(in-package #:gl) 

;;;; SUN_triangle_list

(defconstant +restart-sun+ #x1) 
(defconstant +replace-middle-sun+ #x2) 
(defconstant +replace-oldest-sun+ #x3) 
(defconstant +triangle-list-sun+ #x81D7) 
(defconstant +replacement-code-sun+ #x81D8) 
(defconstant +replacement-code-array-sun+ #x85C0) 
(defconstant +replacement-code-array-type-sun+ #x85C1) 
(defconstant +replacement-code-array-stride-sun+ #x85C2) 
(defconstant +replacement-code-array-pointer-sun+ #x85C3) 
(defconstant +r1ui-v3f-sun+ #x85C4) 
(defconstant +r1ui-c4ub-v3f-sun+ #x85C5) 
(defconstant +r1ui-c3f-v3f-sun+ #x85C6) 
(defconstant +r1ui-n3f-v3f-sun+ #x85C7) 
(defconstant +r1ui-c4f-n3f-v3f-sun+ #x85C8) 
(defconstant +r1ui-t2f-v3f-sun+ #x85C9) 
(defconstant +r1ui-t2f-n3f-v3f-sun+ #x85CA) 
(defconstant +r1ui-t2f-c4f-n3f-v3f-sun+ #x85CB) 
(defglextfun
 (("ReplacementCodePointerSUN" replacement-code-pointer-sun) :args
  ((:name |type| :type |ReplacementCodeTypeSUN| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |pointer| :type |VoidPointer| :direction :in :array t :size
    (|type| |stride|) :retained t))
  :return ("void") :category ("SUN_triangle_list") :version ("1.1") :glxropcode
  ("?") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeubvSUN" replacement-code-ubv-sun) :args
  ((:name |code| :type |UInt8| :direction :in :array t)) :return ("void")
  :category ("SUN_triangle_list") :version ("1.1") :glxropcode ("?") :glsflags
  ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeusvSUN" replacement-code-usv-sun) :args
  ((:name |code| :type |UInt16| :direction :in :array t)) :return ("void")
  :category ("SUN_triangle_list") :version ("1.1") :glxropcode ("?") :glsflags
  ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuivSUN" replacement-code-uiv-sun) :args
  ((:name |code| :type |UInt32| :direction :in :array t)) :return ("void")
  :category ("SUN_triangle_list") :version ("1.1") :glxropcode ("?") :glsflags
  ("ignore") :offset ("?"))) 
(defglextfun
 (("ReplacementCodeubSUN" replacement-code-ub-sun) :args
  ((:name |code| :type |UInt8| :direction :in)) :return ("void") :category
  ("SUN_triangle_list") :version ("1.1") :glxropcode ("?") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("ReplacementCodeusSUN" replacement-code-us-sun) :args
  ((:name |code| :type |UInt16| :direction :in)) :return ("void") :category
  ("SUN_triangle_list") :version ("1.1") :glxropcode ("?") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("ReplacementCodeuiSUN" replacement-code-ui-sun) :args
  ((:name |code| :type |UInt32| :direction :in)) :return ("void") :category
  ("SUN_triangle_list") :version ("1.1") :glxropcode ("?") :glsflags ("ignore")
  :offset ("?"))) 