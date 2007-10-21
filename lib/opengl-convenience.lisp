(in-package #:opengl)

(defmacro with-new-list (list mode &body forms)
  "New/End-List wrapper."
  `(progn
     (gl:new-list ,list ,mode)
     (unwind-protect (progn ,@forms) 
       (gl:end-list))))

(defmacro with-push-name (name &body forms)
  "Select name push/pop wrapper"
  `(progn
     (gl:push-name ,name)
     (unwind-protect (progn ,@forms)
       (gl:pop-name))))

(defmacro with-begin (mode &body forms)
  "Immediate mode block wrapper."
  `(progn
     (gl:begin ,mode)
     (unwind-protect (progn ,@forms)
       (gl:end))))

(defmacro with-push-attrib ((&rest attrib-bits) &body forms)
  "Pushes the bitwise or of attrib-bits, executing forms and clean up with pop-attrib."
  `(progn
     (gl:push-attrib (logior ,@attrib-bits))
     (unwind-protect (progn ,@forms)
       (gl:pop-attrib))))

(defmacro with-push-matrix (&body forms)
  "Pushes the current matrix onto the stack, executes forms and clean up with pop-matrix."
  `(progn
     (gl:push-matrix)
     (unwind-protect (progn ,@forms)
       (gl:pop-matrix))))

(defmacro with-setup-projection (&body forms)
  "Switch to projection mode, load identity, execute forms and return to modelview matrix mode."
  `(progn
     (gl:matrix-mode gl:+projection+)
     (gl:load-identity)
     (unwind-protect (progn ,@forms)
       (gl:matrix-mode gl:+modelview+))))

;; 1.1 Conveniences

(defmacro with-push-client-attrib ((&rest attrib-bits) &body forms)
  "Pushes the bitwise or of the client attrib-bits, executing forms and clean up with pop-client-attrib."
  `(progn
     (gl:push-client-attrib (logior ,@attrib-bits))
     (unwind-protect (progn ,@forms)
       (gl:pop-client-attrib))))

;; 1.5 Conveniences
(defmacro with-begin-query ((target id) &body forms)
  `(progn
     (gl:begin-query ,target ,id)
     (unwind-protect (progn ,@forms)
       (gl:end-query))))

(defmacro with-map-buffer ((target access) &body forms)
  "Executes forms with VBO buffer mapped as with gl:map-buffer, unmapping cleanly afterwards."
  (let ((ntarget (gensym "TARGET-")))
    `(let ((,ntarget ,target))
       (gl:map-buffer ,ntarget ,access)
       (unwind-protect (progn ,@forms)
	 (gl:unmap-buffer ,ntarget)))))

;; 2.0 conveniences

(defun shader-source-from-stream (handle in)
  (declare (type stream in))
  (let* ((lines (loop for line = (read-line in nil) while line collecting line))
	 (c-lines (cffi:foreign-alloc :string :initial-contents lines)))
    (gl:shader-source handle (length lines) c-lines (cffi:null-pointer))))

(defun check-compiled-shader (handle)
  "Given a shader handle that has been compiled, checks and flags in a lisp-friendly manner
their compile status. Errors are signalled using an error with the shader log, success will
just warn with the contents of the program-log, if present."
  (cffi:with-foreign-objects ((log-length 'gl:sizei)
			      (compile-status 'gl:int))
    (gl:get-shader-iv handle gl:+info-log-length+ log-length)
    (gl:get-shader-iv handle gl:+compile-status+ compile-status)
    (let ((shader-log (when (> (cffi:mem-ref log-length 'gl:sizei) 1)
			(cffi:with-foreign-pointer-as-string (str 4096)
			  (gl:get-shader-info-log handle (cffi:mem-ref log-length 'gl:sizei) (cffi:null-pointer) str)
			  (cffi:foreign-string-to-lisp str (cffi:mem-ref log-length 'gl:sizei))))))
      (if (= (cffi:mem-ref compile-status 'gl:int)
	     gl:+true+)
	  (when shader-log (warn shader-log))
	  (error shader-log)))))

(defun make-shader (type source)
  "Convenience function to create a shader of type given from source, which may either be a 
pathname of a file to load from, or a string of the shader source directly. Returns handle of the new shader."
  (let ((handle (gl:create-shader type)))
    (if (typep source 'pathname)
	(with-open-file (in source :direction :input)
	  (shader-source-from-stream handle in))
	(with-input-from-string (in source)
	  (shader-source-from-stream handle in)))
    (gl:compile-shader handle)
    (check-compiled-shader handle)
    handle))

(defun check-linked-program (handle)
  "Given a program handle that has been linked, checks and flags in a lisp-friendly manner
their link status. Errors are signalled using an error with the program log, success will
just warn with the contents of the program-log, if present."
  (cffi:with-foreign-objects ((log-length 'gl:sizei)
			      (link-status 'gl:int))
    (gl:get-program-iv handle gl:+info-log-length+ log-length)
    (gl:get-program-iv handle gl:+link-status+ link-status)
    (let ((program-log (when (> (cffi:mem-ref log-length 'gl:sizei) 1)
			(cffi:with-foreign-pointer-as-string (str 4096)
			  (gl:get-program-info-log handle (cffi:mem-ref log-length 'gl:sizei) (cffi:null-pointer) str)
			  (cffi:foreign-string-to-lisp str (cffi:mem-ref log-length 'gl:sizei))))))
      (if (= (cffi:mem-ref link-status 'gl:int)
	     gl:+true+)
	  (when program-log (warn program-log))
	  (error program-log)))))

(defun make-program (&rest shader-handles)
  "Given shader handles, creates a program, attaches any shaders given and links the program."
  (let ((handle (gl:create-program)))
    (dolist (shader-handle shader-handles)
      (gl:attach-shader handle shader-handle))
    (when shader-handles
      (gl:link-program handle)
      (check-linked-program handle))
    handle))

(defmacro with-use-program (name &body forms)
  "Executes forms using the shader program named. And cleanly use no-program afterwards."
  `(progn
     (gl:use-program ,name)
     (unwind-protect (progn ,@forms)
       (gl:use-program 0))))

(export '(with-new-list with-push-name with-begin with-push-attrib with-push-matrix with-setup-projection with-push-client-attrib with-begin-query with-map-buffer
	  shader-source-from-stream check-compiled-shader make-shader
	  check-linked-program make-program
	  with-use-program))