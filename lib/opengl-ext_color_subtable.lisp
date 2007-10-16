
(in-package #:gl) 

;;;; EXT_color_subtable

(defglextfun
 (("CopyColorSubTableEXT" copy-color-sub-table-ext) :args
  ((:name |target| :type |ColorTableTarget| :direction :in)
   (:name |start| :type |SizeI| :direction :in)
   (:name |x| :type |WinCoord| :direction :in)
   (:name |y| :type |WinCoord| :direction :in)
   (:name |width| :type |SizeI| :direction :in))
  :return ("void") :category ("EXT_color_subtable") :version ("1.2") :alias
  ("CopyColorSubTable") :glsalias ("CopyColorSubTable"))) 
(defglextfun
 (("ColorSubTableEXT" color-sub-table-ext) :args
  ((:name |target| :type |ColorTableTarget| :direction :in)
   (:name |start| :type |SizeI| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |type| :type |PixelType| :direction :in)
   (:name |data| :type |Void| :direction :in :array t :size
    (|format| |type| |count|)))
  :return ("void") :category ("EXT_color_subtable") :version ("1.2") :alias
  ("ColorSubTable") :glsalias ("ColorSubTable"))) 