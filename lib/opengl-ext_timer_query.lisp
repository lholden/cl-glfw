
(in-package #:gl) 

;;;; EXT_timer_query

(defconstant +time-elapsed-ext+ #x88BF) 
(defglextfun
 (("GetQueryObjectui64vEXT" get-query-objectui-64v-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |pname| :type |GLenum| :direction :in)
   (:name |params| :type |UInt64EXT| :direction :out :array t :size pname))
  :return ("void") :category ("EXT_timer_query") :dlflags ("notlistable")
  :version ("1.5") :glxvendorpriv ("1329") :glxflags ("ignore") :glsflags
  ("get") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("GetQueryObjecti64vEXT" get-query-objecti-64v-ext) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |pname| :type |GLenum| :direction :in)
   (:name |params| :type |Int64EXT| :direction :out :array t :size pname))
  :return ("void") :category ("EXT_timer_query") :dlflags ("notlistable")
  :version ("1.5") :glxvendorpriv ("1328") :glxflags ("ignore") :glsflags
  ("get") :glsopcode ("?") :offset ("?"))) 