
(in-package #:gl) 

;;;; NV_vertex_program4

(defconstant +vertex-attrib-array-integer-nv+ #x88FD) 
(defglextfun
 (("GetVertexAttribIuivEXT" get-vertex-attrib-i-uiv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |pname| :type |VertexAttribEnum| :direction :in)
   (:name |params| :type |UInt32| :direction :out :array t :size #x1))
  :return ("void") :category ("NV_vertex_program4") :dlflags ("notlistable")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("GetVertexAttribIivEXT" get-vertex-attrib-i-iv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |pname| :type |VertexAttribEnum| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size #x1))
  :return ("void") :category ("NV_vertex_program4") :dlflags ("notlistable")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribIPointerEXT" vertex-attrib-ipointer-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |size| :type |Int32| :direction :in)
   (:name |type| :type |VertexAttribEnum| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size
    (|size| |type| |stride|) :retained t))
  :return ("void") :category ("NV_vertex_program4") :dlflags ("notlistable")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI4usvEXT" vertex-attrib-i-4usv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |UInt16| :direction :in :array t :size #x4))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI4ubvEXT" vertex-attrib-i-4ubv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |UInt8| :direction :in :array t :size #x4))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI4svEXT" vertex-attrib-i-4sv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int16| :direction :in :array t :size #x4))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI4bvEXT" vertex-attrib-i-4bv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int8| :direction :in :array t :size #x4))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI4uivEXT" vertex-attrib-i-4uiv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |UInt32| :direction :in :array t :size #x4))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI3uivEXT" vertex-attrib-i-3uiv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |UInt32| :direction :in :array t :size #x3))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI2uivEXT" vertex-attrib-i-2uiv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |UInt32| :direction :in :array t :size #x2))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI1uivEXT" vertex-attrib-i-1uiv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |UInt32| :direction :in :array t :size #x1))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI4ivEXT" vertex-attrib-i-4iv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int32| :direction :in :array t :size #x4))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI3ivEXT" vertex-attrib-i-3iv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int32| :direction :in :array t :size #x3))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI2ivEXT" vertex-attrib-i-2iv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int32| :direction :in :array t :size #x2))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI1ivEXT" vertex-attrib-i-1iv-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int32| :direction :in :array t :size #x1))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI4uiEXT" vertex-attrib-i-4ui-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |UInt32| :direction :in)
   (:name |y| :type |UInt32| :direction :in)
   (:name |z| :type |UInt32| :direction :in)
   (:name |w| :type |UInt32| :direction :in))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :vectorequiv ("VertexAttribI4uivEXT") :glxvectorequiv
  ("VertexAttribI4uivEXT") :extension ("soft" "WINSOFT" "NV10") :glfflags
  ("ignore") :glsflags ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI3uiEXT" vertex-attrib-i-3ui-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |UInt32| :direction :in)
   (:name |y| :type |UInt32| :direction :in)
   (:name |z| :type |UInt32| :direction :in))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :vectorequiv ("VertexAttribI3uivEXT") :glxvectorequiv
  ("VertexAttribI3uivEXT") :extension ("soft" "WINSOFT" "NV10") :glfflags
  ("ignore") :glsflags ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI2uiEXT" vertex-attrib-i-2ui-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |UInt32| :direction :in)
   (:name |y| :type |UInt32| :direction :in))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :vectorequiv ("VertexAttribI2uivEXT") :glxvectorequiv
  ("VertexAttribI2uivEXT") :extension ("soft" "WINSOFT" "NV10") :glfflags
  ("ignore") :glsflags ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI1uiEXT" vertex-attrib-i-1ui-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |UInt32| :direction :in))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :vectorequiv ("VertexAttribI1uivEXT") :glxvectorequiv
  ("VertexAttribI1uivEXT") :extension ("soft" "WINSOFT" "NV10") :glfflags
  ("ignore") :glsflags ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI4iEXT" vertex-attrib-i-4i-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Int32| :direction :in)
   (:name |y| :type |Int32| :direction :in)
   (:name |z| :type |Int32| :direction :in)
   (:name |w| :type |Int32| :direction :in))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :vectorequiv ("VertexAttribI4ivEXT") :glxvectorequiv ("VertexAttribI4ivEXT")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI3iEXT" vertex-attrib-i-3i-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Int32| :direction :in)
   (:name |y| :type |Int32| :direction :in)
   (:name |z| :type |Int32| :direction :in))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :vectorequiv ("VertexAttribI3ivEXT") :glxvectorequiv ("VertexAttribI3ivEXT")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI2iEXT" vertex-attrib-i-2i-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Int32| :direction :in)
   (:name |y| :type |Int32| :direction :in))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :vectorequiv ("VertexAttribI2ivEXT") :glxvectorequiv ("VertexAttribI2ivEXT")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("VertexAttribI1iEXT" vertex-attrib-i-1i-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Int32| :direction :in))
  :return ("void") :category ("NV_vertex_program4") :beginend ("allow-inside")
  :vectorequiv ("VertexAttribI1ivEXT") :glxvectorequiv ("VertexAttribI1ivEXT")
  :extension ("soft" "WINSOFT" "NV10") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 