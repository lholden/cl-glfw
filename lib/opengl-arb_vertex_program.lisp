
(in-package #:gl) 

;;;; ARB_vertex_program

(defconstant +color-sum-arb+ #x8458) 
(defconstant +vertex-program-arb+ #x8620) 
(defconstant +vertex-attrib-array-enabled-arb+ #x8622) 
(defconstant +vertex-attrib-array-size-arb+ #x8623) 
(defconstant +vertex-attrib-array-stride-arb+ #x8624) 
(defconstant +vertex-attrib-array-type-arb+ #x8625) 
(defconstant +current-vertex-attrib-arb+ #x8626) 
(defconstant +program-length-arb+ #x8627) 
(defconstant +program-string-arb+ #x8628) 
(defconstant +max-program-matrix-stack-depth-arb+ #x862E) 
(defconstant +max-program-matrices-arb+ #x862F) 
(defconstant +current-matrix-stack-depth-arb+ #x8640) 
(defconstant +current-matrix-arb+ #x8641) 
(defconstant +vertex-program-point-size-arb+ #x8642) 
(defconstant +vertex-program-two-side-arb+ #x8643) 
(defconstant +vertex-attrib-array-pointer-arb+ #x8645) 
(defconstant +program-error-position-arb+ #x864B) 
(defconstant +program-binding-arb+ #x8677) 
(defconstant +max-vertex-attribs-arb+ #x8869) 
(defconstant +vertex-attrib-array-normalized-arb+ #x886A) 
(defconstant +program-error-string-arb+ #x8874) 
(defconstant +program-format-ascii-arb+ #x8875) 
(defconstant +program-format-arb+ #x8876) 
(defconstant +program-instructions-arb+ #x88A0) 
(defconstant +max-program-instructions-arb+ #x88A1) 
(defconstant +program-native-instructions-arb+ #x88A2) 
(defconstant +max-program-native-instructions-arb+ #x88A3) 
(defconstant +program-temporaries-arb+ #x88A4) 
(defconstant +max-program-temporaries-arb+ #x88A5) 
(defconstant +program-native-temporaries-arb+ #x88A6) 
(defconstant +max-program-native-temporaries-arb+ #x88A7) 
(defconstant +program-parameters-arb+ #x88A8) 
(defconstant +max-program-parameters-arb+ #x88A9) 
(defconstant +program-native-parameters-arb+ #x88AA) 
(defconstant +max-program-native-parameters-arb+ #x88AB) 
(defconstant +program-attribs-arb+ #x88AC) 
(defconstant +max-program-attribs-arb+ #x88AD) 
(defconstant +program-native-attribs-arb+ #x88AE) 
(defconstant +max-program-native-attribs-arb+ #x88AF) 
(defconstant +program-address-registers-arb+ #x88B0) 
(defconstant +max-program-address-registers-arb+ #x88B1) 
(defconstant +program-native-address-registers-arb+ #x88B2) 
(defconstant +max-program-native-address-registers-arb+ #x88B3) 
(defconstant +max-program-local-parameters-arb+ #x88B4) 
(defconstant +max-program-env-parameters-arb+ #x88B5) 
(defconstant +program-under-native-limits-arb+ #x88B6) 
(defconstant +transpose-current-matrix-arb+ #x88B7) 
(defconstant +matrix0-arb+ #x88C0) 
(defconstant +matrix1-arb+ #x88C1) 
(defconstant +matrix2-arb+ #x88C2) 
(defconstant +matrix3-arb+ #x88C3) 
(defconstant +matrix4-arb+ #x88C4) 
(defconstant +matrix5-arb+ #x88C5) 
(defconstant +matrix6-arb+ #x88C6) 
(defconstant +matrix7-arb+ #x88C7) 
(defconstant +matrix8-arb+ #x88C8) 
(defconstant +matrix9-arb+ #x88C9) 
(defconstant +matrix10-arb+ #x88CA) 
(defconstant +matrix11-arb+ #x88CB) 
(defconstant +matrix12-arb+ #x88CC) 
(defconstant +matrix13-arb+ #x88CD) 
(defconstant +matrix14-arb+ #x88CE) 
(defconstant +matrix15-arb+ #x88CF) 
(defconstant +matrix16-arb+ #x88D0) 
(defconstant +matrix17-arb+ #x88D1) 
(defconstant +matrix18-arb+ #x88D2) 
(defconstant +matrix19-arb+ #x88D3) 
(defconstant +matrix20-arb+ #x88D4) 
(defconstant +matrix21-arb+ #x88D5) 
(defconstant +matrix22-arb+ #x88D6) 
(defconstant +matrix23-arb+ #x88D7) 
(defconstant +matrix24-arb+ #x88D8) 
(defconstant +matrix25-arb+ #x88D9) 
(defconstant +matrix26-arb+ #x88DA) 
(defconstant +matrix27-arb+ #x88DB) 
(defconstant +matrix28-arb+ #x88DC) 
(defconstant +matrix29-arb+ #x88DD) 
(defconstant +matrix30-arb+ #x88DE) 
(defconstant +matrix31-arb+ #x88DF) 
(defglextfun
 (("IsProgramARB" is-program-arb) :args
  ((:name |program| :type |UInt32| :direction :in)) :return ("Boolean")
  :dlflags ("notlistable") :category ("ARB_vertex_program") :version ("1.3")
  :extension ("soft" "WINSOFT" "NV10") :glxvendorpriv ("1304") :glsflags
  ("get") :alias ("IsProgram") :glsalias ("IsProgram"))) 
(defglextfun
 (("GetVertexAttribPointervARB" get-vertex-attrib-pointerv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |pname| :type |VertexAttribPointerPropertyARB| :direction :in)
   (:name |pointer| :type |VoidPointer| :direction :out :array t :size #x1))
  :return ("void") :dlflags ("notlistable") :category ("ARB_vertex_program")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV10") :glxflags ("ignore")
  :glsflags ("client" "get") :glsopcode ("0x0235") :alias
  ("GetVertexAttribPointerv") :glsalias ("GetVertexAttribPointerv"))) 
(defglextfun
 (("GetVertexAttribivARB" get-vertex-attrib-iv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |pname| :type |VertexAttribPropertyARB| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size #x4))
  :return ("void") :dlflags ("notlistable") :category ("ARB_vertex_program")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV10") :glxvendorpriv ("1303")
  :glsflags ("client" "get") :glsopcode ("0x0234") :alias ("GetVertexAttribiv")
  :glsalias ("GetVertexAttribiv"))) 
(defglextfun
 (("GetVertexAttribfvARB" get-vertex-attrib-fv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |pname| :type |VertexAttribPropertyARB| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size #x4))
  :return ("void") :dlflags ("notlistable") :category ("ARB_vertex_program")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV10") :glxvendorpriv ("1302")
  :glsflags ("client" "get") :glsopcode ("0x0233") :alias ("GetVertexAttribfv")
  :glsalias ("GetVertexAttribfv"))) 
(defglextfun
 (("GetVertexAttribdvARB" get-vertex-attrib-dv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |pname| :type |VertexAttribPropertyARB| :direction :in)
   (:name |params| :type |Float64| :direction :out :array t :size #x4))
  :return ("void") :dlflags ("notlistable") :category ("ARB_vertex_program")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV10") :glxvendorpriv ("1301")
  :glsflags ("client" "get") :glsopcode ("0x0232") :alias ("GetVertexAttribdv")
  :glsalias ("GetVertexAttribdv"))) 
(defglextfun
 (("GetProgramStringARB" get-program-string-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |pname| :type |ProgramStringPropertyARB| :direction :in)
   (:name |string| :type |Void| :direction :out :array t :size
    (|target| |pname|)))
  :return ("void") :dlflags ("notlistable") :category ("ARB_vertex_program")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV10") :glsflags ("ignore")
  :glxflags ("ignore") :offset ("681"))) 
(defglextfun
 (("GetProgramivARB" get-programiv-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |pname| :type |ProgramPropertyARB| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size #x1))
  :return ("void") :dlflags ("notlistable") :category ("ARB_vertex_program")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV10") :glsflags ("ignore")
  :glxflags ("ignore") :offset ("680"))) 
(defglextfun
 (("GetProgramLocalParameterfvARB" get-program-local-parameter-fv-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size #x4))
  :return ("void") :dlflags ("notlistable") :category ("ARB_vertex_program")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV10") :glsflags ("ignore")
  :glxflags ("ignore") :offset ("679"))) 
(defglextfun
 (("GetProgramLocalParameterdvARB" get-program-local-parameter-dv-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |Float64| :direction :out :array t :size #x4))
  :return ("void") :dlflags ("notlistable") :category ("ARB_vertex_program")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV10") :glsflags ("ignore")
  :glxflags ("ignore") :offset ("678"))) 
(defglextfun
 (("GetProgramEnvParameterfvARB" get-program-env-parameter-fv-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size #x4))
  :return ("void") :dlflags ("notlistable") :category ("ARB_vertex_program")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV10") :glsflags ("ignore")
  :glxflags ("ignore") :offset ("677"))) 
(defglextfun
 (("GetProgramEnvParameterdvARB" get-program-env-parameter-dv-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |Float64| :direction :out :array t :size #x4))
  :return ("void") :dlflags ("notlistable") :category ("ARB_vertex_program")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV10") :glsflags ("ignore")
  :glxflags ("ignore") :offset ("676"))) 
(defglextfun
 (("ProgramLocalParameter4fvARB" program-local-parameter-4fv-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |Float32| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glsflags ("ignore") :glxflags ("ignore") :offset
  ("675"))) 
(defglextfun
 (("ProgramLocalParameter4fARB" program-local-parameter-4f-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in)
   (:name |w| :type |Float32| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("ProgramLocalParameter4fvARB") :extension
  ("soft" "WINSOFT" "NV10") :glsflags ("ignore") :glxflags ("ignore") :offset
  ("674"))) 
(defglextfun
 (("ProgramLocalParameter4dvARB" program-local-parameter-4dv-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |Float64| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glsflags ("ignore") :glxflags ("ignore") :offset
  ("673"))) 
(defglextfun
 (("ProgramLocalParameter4dARB" program-local-parameter-4d-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Float64| :direction :in)
   (:name |y| :type |Float64| :direction :in)
   (:name |z| :type |Float64| :direction :in)
   (:name |w| :type |Float64| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("ProgramLocalParameter4dvARB") :extension
  ("soft" "WINSOFT" "NV10") :glsflags ("ignore") :glxflags ("ignore") :offset
  ("672"))) 
(defglextfun
 (("ProgramEnvParameter4fvARB" program-env-parameter-4fv-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |Float32| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glsflags ("ignore") :glxflags ("ignore") :offset
  ("671"))) 
(defglextfun
 (("ProgramEnvParameter4fARB" program-env-parameter-4f-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in)
   (:name |w| :type |Float32| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("ProgramEnvParameter4fvARB") :extension
  ("soft" "WINSOFT" "NV10") :glsflags ("ignore") :glxflags ("ignore") :offset
  ("670"))) 
(defglextfun
 (("ProgramEnvParameter4dvARB" program-env-parameter-4dv-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |Float64| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glsflags ("ignore") :glxflags ("ignore") :offset
  ("669"))) 
(defglextfun
 (("ProgramEnvParameter4dARB" program-env-parameter-4d-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Float64| :direction :in)
   (:name |y| :type |Float64| :direction :in)
   (:name |z| :type |Float64| :direction :in)
   (:name |w| :type |Float64| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("ProgramEnvParameter4dvARB") :extension
  ("soft" "WINSOFT" "NV10") :glsflags ("ignore") :glxflags ("ignore") :offset
  ("668"))) 
(defglextfun
 (("GenProgramsARB" gen-programs-arb) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |programs| :type |UInt32| :direction :out :array t :size n))
  :return ("void") :dlflags ("notlistable") :category ("ARB_vertex_program")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV10") :glxvendorpriv ("1295")
  :glsopcode ("0x022A") :offset ("582"))) 
(defglextfun
 (("DeleteProgramsARB" delete-programs-arb) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |programs| :type |UInt32| :direction :in :array t :size n))
  :return ("void") :dlflags ("notlistable") :category ("ARB_vertex_program")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV10") :glxvendorpriv ("1294")
  :glsopcode ("0x0228") :offset ("580"))) 
(defglextfun
 (("BindProgramARB" bind-program-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |program| :type |UInt32| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4180") :glsopcode ("0x0227") :offset
  ("579"))) 
(defglextfun
 (("ProgramStringARB" program-string-arb) :args
  ((:name |target| :type |ProgramTargetARB| :direction :in)
   (:name |format| :type |ProgramFormatARB| :direction :in)
   (:name |len| :type |SizeI| :direction :in)
   (:name |string| :type |Void| :direction :in :array t :size len))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glsflags ("ignore") :glxflags ("ignore") :offset
  ("667"))) 
(defglextfun
 (("DisableVertexAttribArrayARB" disable-vertex-attrib-array-arb) :args
  ((:name |index| :type |UInt32| :direction :in)) :return ("void") :dlflags
  ("notlistable") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :alias ("DisableVertexAttribArray") :glsalias
  ("DisableVertexAttribArray"))) 
(defglextfun
 (("EnableVertexAttribArrayARB" enable-vertex-attrib-array-arb) :args
  ((:name |index| :type |UInt32| :direction :in)) :return ("void") :dlflags
  ("notlistable") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :alias ("EnableVertexAttribArray") :glsalias
  ("EnableVertexAttribArray"))) 
(defglextfun
 (("VertexAttribPointerARB" vertex-attrib-pointer-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |size| :type |Int32| :direction :in)
   (:name |type| :type |VertexAttribPointerTypeARB| :direction :in)
   (:name |normalized| :type |Boolean| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size
    (|size| |type| |stride|) :retained t))
  :return ("void") :dlflags ("notlistable") :category ("ARB_vertex_program")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV10") :alias
  ("VertexAttribPointer") :glsalias ("VertexAttribPointer"))) 
(defglextfun
 (("VertexAttrib4usvARB" vertex-attrib-4usv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |UInt16| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :alias ("VertexAttrib4usv") :glsalias
  ("VertexAttrib4usv"))) 
(defglextfun
 (("VertexAttrib4uivARB" vertex-attrib-4uiv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |UInt32| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :alias ("VertexAttrib4uiv") :glsalias
  ("VertexAttrib4uiv"))) 
(defglextfun
 (("VertexAttrib4ubvARB" vertex-attrib-4ubv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |UInt8| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :alias ("VertexAttrib4ubv") :glsalias
  ("VertexAttrib4ubv"))) 
(defglextfun
 (("VertexAttrib4svARB" vertex-attrib-4sv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int16| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4192") :glsopcode ("0x0247") :alias
  ("VertexAttrib4sv") :glsalias ("VertexAttrib4sv"))) 
(defglextfun
 (("VertexAttrib4sARB" vertex-attrib-4s-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Int16| :direction :in)
   (:name |y| :type |Int16| :direction :in)
   (:name |z| :type |Int16| :direction :in)
   (:name |w| :type |Int16| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("VertexAttrib4svARB") :extension ("soft" "WINSOFT" "NV10")
  :alias ("VertexAttrib4s") :glsalias ("VertexAttrib4s"))) 
(defglextfun
 (("VertexAttrib4ivARB" vertex-attrib-4iv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int32| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :alias ("VertexAttrib4iv") :glsalias
  ("VertexAttrib4iv"))) 
(defglextfun
 (("VertexAttrib4fvARB" vertex-attrib-4fv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Float32| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4196") :glsopcode ("0x0248") :alias
  ("VertexAttrib4fv") :glsalias ("VertexAttrib4fv"))) 
(defglextfun
 (("VertexAttrib4fARB" vertex-attrib-4f-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in)
   (:name |w| :type |Float32| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("VertexAttrib4fvARB") :extension ("soft" "WINSOFT" "NV10")
  :alias ("VertexAttrib4f") :glsalias ("VertexAttrib4f"))) 
(defglextfun
 (("VertexAttrib4dvARB" vertex-attrib-4dv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Float64| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4200") :glsopcode ("0x0249") :alias
  ("VertexAttrib4dv") :glsalias ("VertexAttrib4dv"))) 
(defglextfun
 (("VertexAttrib4dARB" vertex-attrib-4d-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Float64| :direction :in)
   (:name |y| :type |Float64| :direction :in)
   (:name |z| :type |Float64| :direction :in)
   (:name |w| :type |Float64| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("VertexAttrib4dvARB") :extension ("soft" "WINSOFT" "NV10")
  :alias ("VertexAttrib4d") :glsalias ("VertexAttrib4d"))) 
(defglextfun
 (("VertexAttrib4bvARB" vertex-attrib-4bv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int8| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :alias ("VertexAttrib4bv") :glsalias
  ("VertexAttrib4bv"))) 
(defglextfun
 (("VertexAttrib4NusvARB" vertex-attrib-4n-usv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |UInt16| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :alias ("VertexAttrib4Nusv") :glsalias
  ("VertexAttrib4Nusv"))) 
(defglextfun
 (("VertexAttrib4NuivARB" vertex-attrib-4n-uiv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |UInt32| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :alias ("VertexAttrib4Nuiv") :glsalias
  ("VertexAttrib4Nuiv"))) 
(defglextfun
 (("VertexAttrib4NubvARB" vertex-attrib-4n-ubv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |UInt8| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4201") :glsopcode ("0x024A") :alias
  ("VertexAttrib4Nubv") :glsalias ("VertexAttrib4Nubv"))) 
(defglextfun
 (("VertexAttrib4NubARB" vertex-attrib-4n-ub-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |UInt8| :direction :in)
   (:name |y| :type |UInt8| :direction :in)
   (:name |z| :type |UInt8| :direction :in)
   (:name |w| :type |UInt8| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :alias ("VertexAttrib4Nub") :glsalias
  ("VertexAttrib4Nub"))) 
(defglextfun
 (("VertexAttrib4NsvARB" vertex-attrib-4n-sv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int16| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :alias ("VertexAttrib4Nsv") :glsalias
  ("VertexAttrib4Nsv"))) 
(defglextfun
 (("VertexAttrib4NivARB" vertex-attrib-4n-iv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int32| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :alias ("VertexAttrib4Niv") :glsalias
  ("VertexAttrib4Niv"))) 
(defglextfun
 (("VertexAttrib4NbvARB" vertex-attrib-4n-bv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int8| :direction :in :array t :size #x4))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :alias ("VertexAttrib4Nbv") :glsalias
  ("VertexAttrib4Nbv"))) 
(defglextfun
 (("VertexAttrib3svARB" vertex-attrib-3sv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int16| :direction :in :array t :size #x3))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4191") :glsopcode ("0x0244") :alias
  ("VertexAttrib3sv") :glsalias ("VertexAttrib3sv"))) 
(defglextfun
 (("VertexAttrib3sARB" vertex-attrib-3s-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Int16| :direction :in)
   (:name |y| :type |Int16| :direction :in)
   (:name |z| :type |Int16| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("VertexAttrib3svARB") :extension ("soft" "WINSOFT" "NV10")
  :alias ("VertexAttrib3s") :glsalias ("VertexAttrib3s"))) 
(defglextfun
 (("VertexAttrib3fvARB" vertex-attrib-3fv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4195") :glsopcode ("0x0245") :alias
  ("VertexAttrib3fv") :glsalias ("VertexAttrib3fv"))) 
(defglextfun
 (("VertexAttrib3fARB" vertex-attrib-3f-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("VertexAttrib3fvARB") :extension ("soft" "WINSOFT" "NV10")
  :alias ("VertexAttrib3f") :glsalias ("VertexAttrib3f"))) 
(defglextfun
 (("VertexAttrib3dvARB" vertex-attrib-3dv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Float64| :direction :in :array t :size #x3))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4199") :glsopcode ("0x0246") :alias
  ("VertexAttrib3dv") :glsalias ("VertexAttrib3dv"))) 
(defglextfun
 (("VertexAttrib3dARB" vertex-attrib-3d-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Float64| :direction :in)
   (:name |y| :type |Float64| :direction :in)
   (:name |z| :type |Float64| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("VertexAttrib3dvARB") :extension ("soft" "WINSOFT" "NV10")
  :alias ("VertexAttrib3d") :glsalias ("VertexAttrib3d"))) 
(defglextfun
 (("VertexAttrib2svARB" vertex-attrib-2sv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int16| :direction :in :array t :size #x2))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4190") :glsopcode ("0x0241") :alias
  ("VertexAttrib2sv") :glsalias ("VertexAttrib2sv"))) 
(defglextfun
 (("VertexAttrib2sARB" vertex-attrib-2s-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Int16| :direction :in)
   (:name |y| :type |Int16| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("VertexAttrib2svARB") :extension ("soft" "WINSOFT" "NV10")
  :alias ("VertexAttrib2s") :glsalias ("VertexAttrib2s"))) 
(defglextfun
 (("VertexAttrib2fvARB" vertex-attrib-2fv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Float32| :direction :in :array t :size #x2))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4194") :glsopcode ("0x0242") :alias
  ("VertexAttrib2fv") :glsalias ("VertexAttrib2fv"))) 
(defglextfun
 (("VertexAttrib2fARB" vertex-attrib-2f-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("VertexAttrib2fvARB") :extension ("soft" "WINSOFT" "NV10")
  :alias ("VertexAttrib2f") :glsalias ("VertexAttrib2f"))) 
(defglextfun
 (("VertexAttrib2dvARB" vertex-attrib-2dv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Float64| :direction :in :array t :size #x2))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4198") :glsopcode ("0x0243") :alias
  ("VertexAttrib2dv") :glsalias ("VertexAttrib2dv"))) 
(defglextfun
 (("VertexAttrib2dARB" vertex-attrib-2d-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Float64| :direction :in)
   (:name |y| :type |Float64| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("VertexAttrib2dvARB") :extension ("soft" "WINSOFT" "NV10")
  :alias ("VertexAttrib2d") :glsalias ("VertexAttrib2d"))) 
(defglextfun
 (("VertexAttrib1svARB" vertex-attrib-1sv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Int16| :direction :in :array t :size #x1))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4189") :glsopcode ("0x023E") :alias
  ("VertexAttrib1sv") :glsalias ("VertexAttrib1sv"))) 
(defglextfun
 (("VertexAttrib1sARB" vertex-attrib-1s-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Int16| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("VertexAttrib1svARB") :extension ("soft" "WINSOFT" "NV10")
  :alias ("VertexAttrib1s") :glsalias ("VertexAttrib1s"))) 
(defglextfun
 (("VertexAttrib1fvARB" vertex-attrib-1fv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Float32| :direction :in :array t :size #x1))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4193") :glsopcode ("0x023F") :alias
  ("VertexAttrib1fv") :glsalias ("VertexAttrib1fv"))) 
(defglextfun
 (("VertexAttrib1fARB" vertex-attrib-1f-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Float32| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("VertexAttrib1fvARB") :extension ("soft" "WINSOFT" "NV10")
  :alias ("VertexAttrib1f") :glsalias ("VertexAttrib1f"))) 
(defglextfun
 (("VertexAttrib1dvARB" vertex-attrib-1dv-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |v| :type |Float64| :direction :in :array t :size #x1))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV10") :glxropcode ("4197") :glsopcode ("0x0240") :alias
  ("VertexAttrib1dv") :glsalias ("VertexAttrib1dv"))) 
(defglextfun
 (("VertexAttrib1dARB" vertex-attrib-1d-arb) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Float64| :direction :in))
  :return ("void") :category ("ARB_vertex_program") :version ("1.3")
  :vectorequiv ("VertexAttrib1dvARB") :extension ("soft" "WINSOFT" "NV10")
  :alias ("VertexAttrib1d") :glsalias ("VertexAttrib1d"))) 