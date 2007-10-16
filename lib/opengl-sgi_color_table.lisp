
(in-package #:gl) 

;;;; SGI_color_table

(defglextfun
 (("GetColorTableParameterivSGI" get-color-table-parameteriv-sgi) :args
  ((:name |target| :type |ColorTableTargetSGI| :direction :in)
   (:name |pname| :type |GetColorTableParameterPNameSGI| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("SGI_color_table") :dlflags ("notlistable")
  :version ("1.0") :glxflags ("SGI") :glxvendorpriv ("4100") :extension nil
  :glsflags ("get") :glsopcode ("0x016D") :offset ("429"))) 
(defglextfun
 (("GetColorTableParameterfvSGI" get-color-table-parameterfv-sgi) :args
  ((:name |target| :type |ColorTableTargetSGI| :direction :in)
   (:name |pname| :type |GetColorTableParameterPNameSGI| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("SGI_color_table") :dlflags ("notlistable")
  :version ("1.0") :glxflags ("SGI") :glxvendorpriv ("4099") :extension nil
  :glsflags ("get") :glsopcode ("0x016C") :offset ("428"))) 
(defglextfun
 (("GetColorTableSGI" get-color-table-sgi) :args
  ((:name |target| :type |ColorTableTargetSGI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |table| :type |Void| :direction :out :array t :size
    (|target| |format| |type|)))
  :return ("void") :category ("SGI_color_table") :dlflags ("notlistable")
  :glxflags ("client-handcode" "server-handcode" "SGI") :version ("1.0")
  :glxvendorpriv ("4098") :extension nil :glsflags ("get" "pixel-pack")
  :glsopcode ("0x016B") :offset ("427"))) 
(defglextfun
 (("CopyColorTableSGI" copy-color-table-sgi) :args
  ((:name |target| :type |ColorTableTargetSGI| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |x| :type |WinCoord| :direction :in)
   (:name |y| :type |WinCoord| :direction :in)
   (:name |width| :type |SizeI| :direction :in))
  :return ("void") :category ("SGI_color_table") :version ("1.0") :glxropcode
  ("2056") :glxflags ("SGI") :extension nil :alias ("CopyColorTable") :glsalias
  ("CopyColorTable"))) 
(defglextfun
 (("ColorTableParameterivSGI" color-table-parameteriv-sgi) :args
  ((:name |target| :type |ColorTableTargetSGI| :direction :in)
   (:name |pname| :type |ColorTableParameterPNameSGI| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("SGI_color_table") :version ("1.0") :glxropcode
  ("2055") :glxflags ("SGI") :extension nil :alias ("ColorTableParameteriv")
  :glsalias ("ColorTableParameteriv"))) 
(defglextfun
 (("ColorTableParameterfvSGI" color-table-parameterfv-sgi) :args
  ((:name |target| :type |ColorTableTargetSGI| :direction :in)
   (:name |pname| :type |ColorTableParameterPNameSGI| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("SGI_color_table") :version ("1.0") :glxropcode
  ("2054") :glxflags ("SGI") :extension nil :alias ("ColorTableParameterfv")
  :glsalias ("ColorTableParameterfv"))) 
(defglextfun
 (("ColorTableSGI" color-table-sgi) :args
  ((:name |target| :type |ColorTableTargetSGI| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |table| :type |Void| :direction :in :array t :size
    (|format| |type| |width|)))
  :return ("void") :category ("SGI_color_table") :dlflags ("handcode")
  :glxflags ("client-handcode" "server-handcode" "SGI") :version ("1.0")
  :glxropcode ("2053") :extension nil :alias ("ColorTable") :glsalias
  ("ColorTable"))) 