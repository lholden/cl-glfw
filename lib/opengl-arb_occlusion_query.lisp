
(in-package #:gl) 

;;;; ARB_occlusion_query

(defconstant +query-counter-bits-arb+ #x8864) 
(defconstant +current-query-arb+ #x8865) 
(defconstant +query-result-arb+ #x8866) 
(defconstant +query-result-available-arb+ #x8867) 
(defconstant +samples-passed-arb+ #x8914) 
(defglextfun
 (("GetQueryObjectuivARB" get-query-object-uiv-arb) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |pname| :type |GLenum| :direction :in)
   (:name |params| :type |UInt32| :direction :out :array t :size pname))
  :return ("void") :category ("ARB_occlusion_query") :dlflags ("notlistable")
  :version ("1.5") :extension nil :alias ("GetQueryObjectuiv") :glsalias
  ("GetQueryObjectuiv"))) 
(defglextfun
 (("GetQueryObjectivARB" get-query-object-iv-arb) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |pname| :type |GLenum| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size pname))
  :return ("void") :category ("ARB_occlusion_query") :dlflags ("notlistable")
  :version ("1.5") :extension nil :alias ("GetQueryObjectiv") :glsalias
  ("GetQueryObjectiv"))) 
(defglextfun
 (("GetQueryivARB" get-queryiv-arb) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |pname| :type |GLenum| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size pname))
  :return ("void") :category ("ARB_occlusion_query") :dlflags ("notlistable")
  :version ("1.5") :extension nil :alias ("GetQueryiv") :glsalias
  ("GetQueryiv"))) 
(defglextfun
 (("EndQueryARB" end-query-arb) :args
  ((:name |target| :type |GLenum| :direction :in)) :return ("void") :category
  ("ARB_occlusion_query") :version ("1.5") :extension nil :alias ("EndQuery")
  :glsalias ("EndQuery"))) 
(defglextfun
 (("BeginQueryARB" begin-query-arb) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |id| :type |UInt32| :direction :in))
  :return ("void") :category ("ARB_occlusion_query") :version ("1.5")
  :extension nil :alias ("BeginQuery") :glsalias ("BeginQuery"))) 
(defglextfun
 (("IsQueryARB" is-query-arb) :args
  ((:name |id| :type |UInt32| :direction :in)) :return ("Boolean") :category
  ("ARB_occlusion_query") :version ("1.5") :extension nil :alias ("IsQuery")
  :glsalias ("IsQuery"))) 
(defglextfun
 (("DeleteQueriesARB" delete-queries-arb) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |ids| :type |UInt32| :direction :in :array t :size n))
  :return ("void") :category ("ARB_occlusion_query") :version ("1.5")
  :extension nil :alias ("DeleteQueries") :glsalias ("DeleteQueries"))) 
(defglextfun
 (("GenQueriesARB" gen-queries-arb) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |ids| :type |UInt32| :direction :out :array t :size n))
  :return ("void") :category ("ARB_occlusion_query") :version ("1.5")
  :extension nil :alias ("GenQueries") :glsalias ("GenQueries"))) 