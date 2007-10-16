
(in-package #:gl) 

;;;; ATI_vertex_streams

(defconstant +max-vertex-streams-ati+ #x876B) 
(defconstant +vertex-stream0-ati+ #x876C) 
(defconstant +vertex-stream1-ati+ #x876D) 
(defconstant +vertex-stream2-ati+ #x876E) 
(defconstant +vertex-stream3-ati+ #x876F) 
(defconstant +vertex-stream4-ati+ #x8770) 
(defconstant +vertex-stream5-ati+ #x8771) 
(defconstant +vertex-stream6-ati+ #x8772) 
(defconstant +vertex-stream7-ati+ #x8773) 
(defconstant +vertex-source-ati+ #x8774) 
(defglextfun
 (("VertexBlendEnvfATI" vertex-blend-env-f-ati) :args
  ((:name |pname| :type |VertexStreamATI| :direction :in)
   (:name |param| :type |Float32| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexBlendEnviATI" vertex-blend-env-i-ati) :args
  ((:name |pname| :type |VertexStreamATI| :direction :in)
   (:name |param| :type |Int32| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("ClientActiveVertexStreamATI" client-active-vertex-stream-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)) :return ("void")
  :category ("ATI_vertex_streams") :version ("1.2") :extension nil :glxropcode
  ("?") :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("NormalStream3dvATI" normal-stream-3dv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Float64| :direction :in :array t :size #x3))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("NormalStream3dATI" normal-stream-3d-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |nx| :type |Float64| :direction :in)
   (:name |ny| :type |Float64| :direction :in)
   (:name |nz| :type |Float64| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("NormalStream3fvATI" normal-stream-3fv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("NormalStream3fATI" normal-stream-3f-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |nx| :type |Float32| :direction :in)
   (:name |ny| :type |Float32| :direction :in)
   (:name |nz| :type |Float32| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("NormalStream3ivATI" normal-stream-3iv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Int32| :direction :in :array t :size #x3))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("NormalStream3iATI" normal-stream-3i-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |nx| :type |Int32| :direction :in)
   (:name |ny| :type |Int32| :direction :in)
   (:name |nz| :type |Int32| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("NormalStream3svATI" normal-stream-3sv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Int16| :direction :in :array t :size #x3))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("NormalStream3sATI" normal-stream-3s-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |nx| :type |Int16| :direction :in)
   (:name |ny| :type |Int16| :direction :in)
   (:name |nz| :type |Int16| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("NormalStream3bvATI" normal-stream-3bv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Int8| :direction :in :array t :size #x3))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("NormalStream3bATI" normal-stream-3b-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |nx| :type |Int8| :direction :in)
   (:name |ny| :type |Int8| :direction :in)
   (:name |nz| :type |Int8| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream4dvATI" vertex-stream-4dv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Float64| :direction :in :array t :size #x4))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream4dATI" vertex-stream-4d-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Float64| :direction :in)
   (:name |y| :type |Float64| :direction :in)
   (:name |z| :type |Float64| :direction :in)
   (:name |w| :type |Float64| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream4fvATI" vertex-stream-4fv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Float32| :direction :in :array t :size #x4))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream4fATI" vertex-stream-4f-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in)
   (:name |w| :type |Float32| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream4ivATI" vertex-stream-4iv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Int32| :direction :in :array t :size #x4))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream4iATI" vertex-stream-4i-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Int32| :direction :in)
   (:name |y| :type |Int32| :direction :in)
   (:name |z| :type |Int32| :direction :in)
   (:name |w| :type |Int32| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream4svATI" vertex-stream-4sv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Int16| :direction :in :array t :size #x4))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream4sATI" vertex-stream-4s-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Int16| :direction :in)
   (:name |y| :type |Int16| :direction :in)
   (:name |z| :type |Int16| :direction :in)
   (:name |w| :type |Int16| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream3dvATI" vertex-stream-3dv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Float64| :direction :in :array t :size #x3))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream3dATI" vertex-stream-3d-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Float64| :direction :in)
   (:name |y| :type |Float64| :direction :in)
   (:name |z| :type |Float64| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream3fvATI" vertex-stream-3fv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Float32| :direction :in :array t :size #x3))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream3fATI" vertex-stream-3f-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in)
   (:name |z| :type |Float32| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream3ivATI" vertex-stream-3iv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Int32| :direction :in :array t :size #x3))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream3iATI" vertex-stream-3i-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Int32| :direction :in)
   (:name |y| :type |Int32| :direction :in)
   (:name |z| :type |Int32| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream3svATI" vertex-stream-3sv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Int16| :direction :in :array t :size #x3))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream3sATI" vertex-stream-3s-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Int16| :direction :in)
   (:name |y| :type |Int16| :direction :in)
   (:name |z| :type |Int16| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream2dvATI" vertex-stream-2dv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Float64| :direction :in :array t :size #x2))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream2dATI" vertex-stream-2d-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Float64| :direction :in)
   (:name |y| :type |Float64| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream2fvATI" vertex-stream-2fv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Float32| :direction :in :array t :size #x2))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream2fATI" vertex-stream-2f-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Float32| :direction :in)
   (:name |y| :type |Float32| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream2ivATI" vertex-stream-2iv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Int32| :direction :in :array t :size #x2))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream2iATI" vertex-stream-2i-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Int32| :direction :in)
   (:name |y| :type |Int32| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream2svATI" vertex-stream-2sv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Int16| :direction :in :array t :size #x2))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream2sATI" vertex-stream-2s-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Int16| :direction :in)
   (:name |y| :type |Int16| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream1dvATI" vertex-stream-1dv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Float64| :direction :in :array t :size #x1))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream1dATI" vertex-stream-1d-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Float64| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream1fvATI" vertex-stream-1fv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Float32| :direction :in :array t :size #x1))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream1fATI" vertex-stream-1f-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Float32| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream1ivATI" vertex-stream-1iv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Int32| :direction :in :array t :size #x1))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream1iATI" vertex-stream-1i-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Int32| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream1svATI" vertex-stream-1sv-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |coords| :type |Int16| :direction :in :array t :size #x1))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 
(defglextfun
 (("VertexStream1sATI" vertex-stream-1s-ati) :args
  ((:name |stream| :type |VertexStreamATI| :direction :in)
   (:name |x| :type |Int16| :direction :in))
  :return ("void") :category ("ATI_vertex_streams") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset
  ("?"))) 