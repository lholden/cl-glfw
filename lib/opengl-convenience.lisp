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

(defmacro with-bind-buffer ((target buffer) &body forms)
  "Executes forms with the VBO buffer bound with gl:bind-buffer, cleanly restoring to previous state afterwards."
  (let ((ntarget (gensym "TARGET-"))
	(saved-buffer-v (gensym "SAVED-BUFFER-V-")))
    `(let ((,ntarget ,target))
       (cffi:with-foreign-object (,saved-buffer-v 'gl:int)
	 (cond 
	   ((eql ,ntarget gl:+array-buffer+)         (gl:get-integerv gl:+array-buffer-binding+ ,saved-buffer-v))
	   ((eql ,ntarget gl:+element-array-buffer+) (gl:get-integerv gl:+element-array-buffer-binding+ ,saved-buffer-v))
	   ((eql ,ntarget gl:+pixel-pack-buffer+)    (gl:get-integerv gl:+pixel-pack-buffer-binding+ ,saved-buffer-v))
	   ((eql ,ntarget gl:+pixel-unpack-buffer+)  (gl:get-integerv gl:+pixel-unpack-buffer-binding+ ,saved-buffer-v)))
	 (gl:bind-buffer ,ntarget ,buffer)
	 (unwind-protect (progn ,@forms)
	   (gl:bind-buffer ,ntarget (cffi:mem-ref ,saved-buffer-v 'gl:int)))))))

;; ARB_vertex_buffer_object

(defmacro with-map-buffer-arb ((target access) &body forms)
  "Executes forms with VBO buffer mapped as with gl:map-buffer-arb, unmapping cleanly afterwards."
  (let ((ntarget (gensym "TARGET-")))
    `(let ((,ntarget ,target))
       (gl:map-buffer-arb ,ntarget ,access)
       (unwind-protect (progn ,@forms)
	 (gl:unmap-buffer-arb ,ntarget)))))

(defmacro with-bind-buffer-arb ((target buffer) &body forms)
  "Executes forms with the VBO buffer bound with gl:bind-buffer-arb, cleanly restoring to previous state afterwards."
  (let ((ntarget (gensym "TARGET-"))
	(saved-buffer-v (gensym "SAVED-BUFFER-V-")))
    `(let ((,ntarget ,target))
       (cffi:with-foreign-object (,saved-buffer-v 'gl:int)
	 (cond 
	   ((eql ,ntarget gl:+array-buffer-arb+)         (gl:get-integerv gl:+array-buffer-binding-arb+ ,saved-buffer-v))
	   ((eql ,ntarget gl:+element-array-buffer-arb+) (gl:get-integerv gl:+element-array-buffer-binding-arb+ ,saved-buffer-v))
	   ((eql ,ntarget gl:+pixel-pack-buffer-arb+)    (gl:get-integerv gl:+pixel-pack-buffer-binding-arb+ ,saved-buffer-v))
	   ((eql ,ntarget gl:+pixel-unpack-buffer-arb+)  (gl:get-integerv gl:+pixel-unpack-buffer-binding-arb+ ,saved-buffer-v)))
	 (gl:bind-buffer-arb ,ntarget ,buffer)
	 (unwind-protect (progn ,@forms)
	   (gl:bind-buffer-arb ,ntarget (cffi:mem-ref ,saved-buffer-v 'gl:int)))))))


;; ARB_shader_objects, ARB_vertex_shader and ARB_fragment_shader conveniences

(defun shader-source-from-stream-arb (handle in)
  (declare (type stream in))
  (let* ((lines (loop for line = (read-line in nil) while line collecting line))
	 (c-lines (cffi:foreign-alloc :string :initial-contents lines)))
    (gl:shader-source-arb handle (length lines) c-lines (cffi:null-pointer))))

(defun check-compiled-shader-arb (handle)
  "Given a shader handle that has been compiled, checks and flags in a lisp-friendly manner
their compile status. Errors are signalled using an error with the shader log, success will
just warn with the contents of the program-log, if present."
  (cffi:with-foreign-objects ((log-length 'gl:sizei)
			      (compile-status 'gl:int))
    (gl:get-object-parameter-iv-arb handle gl:+object-info-log-length-arb+ log-length)
    (gl:get-object-parameter-iv-arb handle gl:+object-compile-status-arb+ compile-status)
    (let ((shader-log (when (> (cffi:mem-ref log-length 'gl:sizei) 1)
			(cffi:with-foreign-pointer-as-string (str 4096)
			  (gl:get-info-log-arb handle (cffi:mem-ref log-length 'gl:sizei) (cffi:null-pointer) str)
			  (cffi:foreign-string-to-lisp str (cffi:mem-ref log-length 'gl:sizei))))))
      (if (= (cffi:mem-ref compile-status 'gl:int)
	     gl:+true+)
	  (when shader-log (warn shader-log))
	  (error shader-log)))))

(defun make-shader-arb (type source)
  "Convenience function to create a shader of type given from source, which may either be a 
pathname of a file to load from, or a string of the shader source directly. Returns handle of the new shader."
  (let ((handle (gl:create-shader-object-arb type)))
    (if (typep source 'pathname)
	(with-open-file (in source :direction :input)
	  (shader-source-from-stream-arb handle in))
	(with-input-from-string (in source)
	  (shader-source-from-stream-arb handle in)))
    (gl:compile-shader-arb handle)
    (check-compiled-shader-arb handle)
    handle))

(defun check-linked-program-arb (handle)
  "Given a program handle that has been linked, checks and flags in a lisp-friendly manner
their link status. Errors are signalled using an error with the program log, success will
just warn with the contents of the program-log, if present."
  (cffi:with-foreign-objects ((log-length 'gl:sizei)
			      (link-status 'gl:int))
    (gl:get-object-parameter-iv-arb handle gl:+object-info-log-length-arb+ log-length)
    (gl:get-object-parameter-iv-arb handle gl:+object-link-status-arb+ link-status)
    (let ((program-log (when (> (cffi:mem-ref log-length 'gl:sizei) 1)
			(cffi:with-foreign-pointer-as-string (str 4096)
			  (gl:get-info-log-arb handle (cffi:mem-ref log-length 'gl:sizei) (cffi:null-pointer) str)
			  (cffi:foreign-string-to-lisp str (cffi:mem-ref log-length 'gl:sizei))))))
      (if (= (cffi:mem-ref link-status 'gl:int)
	     gl:+true+)
	  (when program-log (warn program-log))
	  (error program-log)))))

(defun make-program-arb (&rest shader-handles)
  "Given shader handles, creates a program, attaches any shaders given and links the program."
  (let ((handle (gl:create-program-object-arb)))
    (dolist (shader-handle shader-handles)
      (gl:attach-object-arb handle shader-handle))
    (when shader-handles
      (gl:link-program-arb handle)
      (check-linked-program-arb handle))
    handle))

(defmacro with-use-program-arb (name &body forms)
  "Executes forms using the shader program named. And cleanly use no-program afterwards."
  `(progn
     (cffi:with-foreign-object (current-program-v 'gl:handle)
       (gl:get-handle-arb gl:+program-object-arb+ current-program-v)
       (gl:use-program-object-arb ,name)
       (unwind-protect (progn ,@forms)
	 (gl:use-program-object-arb (cffi:mem-ref current-program-v 'gl:int))))))

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
     (cffi:with-foreign-object (current-program-v 'gl:int)
       (gl:get-integerv gl:+current-program+ current-program-v)
       (gl:use-program ,name)
       (unwind-protect (progn ,@forms)
	 (gl:use-program (cffi:mem-ref current-program-v 'gl:int))))))

(export '(with-new-list with-push-name with-begin with-push-attrib with-push-matrix with-setup-projection
	  ;; 1.1
	  with-push-client-attrib
	  ;; ARB_vertex_buffer_object
	  with-map-buffer-arb with-bind-buffer-arb
	  ;; 1.5
	  with-begin-query
	  with-map-buffer with-bind-buffer
	  ;; ARB_vertex_shader/ARB_fragment_shader/ARB_shader_objects
	  shader-source-from-stream-arb check-compiled-shader-arb make-shader-arb
	  check-linked-program-arb make-program-arb
	  with-use-program-arb
	  ;; 2.0
	  shader-source-from-stream check-compiled-shader make-shader
	  check-linked-program make-program
	  with-use-program
	  ))