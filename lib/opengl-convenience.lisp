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

(defmacro with-projection-matrix ((&body projection-matrix-setup-forms)
                                  &body forms)
  "Temporarily change the projection matrix:
Saves the current projection matrix,
loads identity in the projection matrix,
runs projection-matrix-setup-forms in projection matrix-mode,
runs forms in modelview matrix-mode,
restores the saved projection-matrix
and leaves in modelview matrix-mode."
  `(progn
     (gl:matrix-mode gl:+projection+)
     (gl:push-matrix)
     (gl:load-identity)
     (unwind-protect
          (progn
            ,@projection-matrix-setup-forms
            (gl:matrix-mode gl:+modelview+)
            ,@forms)
       (gl:matrix-mode gl:+projection+)
       (gl:pop-matrix)
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


;; common (between ARB and 2.0) shader stuff



(define-condition shader-object-error (error)
  ((object-handle :initarg :object-handle :reader object-handle)
   (info-log :initarg :info-log :reader info-log))
  (:report (lambda (condition stream)
	     (format stream "~a Error with ~a:~%~a~%"
		     (type-of condition)
		     (object-handle condition)
		     (info-log condition)))))
(define-condition shader-compile-error (shader-object-error) ())
(define-condition program-link-error (shader-object-error) ())

;; 2.0 and ARB_shader_objects/ARB_vertex_shader/ARB_fragment_shader conveniences

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defmacro define-arb-and-non-arb (&body form)
    "Expands out code with (?extension with-arb without-arb) markers in it.
Care should be taken that it doesn't interfere with code with ` , markers in it."
    (let ((extension nil))
      (declare (special extension))
      (labels ((expand-extension (form)
		 (if (listp form)
		     (if (eql (first form) '?extension)
			 (if extension (second form) (third form))
			 (mapcar #'expand-extension form))
		     form)))
	`(progn
	   ,@(let ((extension t))
		  (declare (special extension))
		  (expand-extension form)) ;  undefined function: EXPAND-EXTENSION
	   ,@(expand-extension form))))))

(define-arb-and-non-arb 
  (defun (?extension shader-source-from-stream-arb shader-source-from-stream) (handle in)
    (declare (type stream in))
    (let* ((lines (loop for line = (read-line in nil) while line collecting line))
	   (c-lines (cffi:foreign-alloc :string :initial-contents lines)))
      ((?extension gl:shader-source-arb gl:shader-source) handle (length lines) c-lines (cffi:null-pointer))))

  (defun (?extension check-compiled-shader-arb check-compiled-shader) (handle)
    "Given a shader handle that has been compiled, checks and flags in a lisp-friendly manner
their compile status. Errors are signalled using an error with the shader log, success will
just warn with the contents of the program-log, if present."
    (cffi:with-foreign-objects ((log-length 'gl:sizei)
				(compile-status 'gl:int))
      (?extension
       (gl:get-object-parameter-iv-arb handle gl:+object-info-log-length-arb+ log-length)
       (gl:get-shader-iv handle gl:+info-log-length+ log-length))
      (?extension
       (gl:get-object-parameter-iv-arb handle gl:+object-compile-status-arb+ compile-status)
       (gl:get-shader-iv handle gl:+compile-status+ compile-status))
      (let ((shader-log (when (> (cffi:mem-ref log-length 'gl:sizei) 1)
			  (cffi:with-foreign-pointer-as-string (str 4096)
			    ((?extension gl:get-info-log-arb gl:get-shader-info-log) handle (cffi:mem-ref log-length 'gl:sizei) (cffi:null-pointer) str)
			    (cffi:foreign-string-to-lisp str :count (cffi:mem-ref log-length 'gl:sizei))))))
	(if (= (cffi:mem-ref compile-status 'gl:int)
	       gl:+true+)
	    (when shader-log (warn shader-log))
	    (error 'shader-compile-error :info-log shader-log :object-handle handle)))))

  (defun (?extension make-shader-arb make-shader) (type source)
    "Convenience function to create a shader of type given from source, which may either be a 
pathname of a file to load from, or a string of the shader source directly. Returns handle of the new shader."
    (let ((handle ((?extension gl:create-shader-object-arb gl:create-shader) type)))
      (if (typep source 'pathname)
	  (with-open-file (in source :direction :input)
	    ((?extension shader-source-from-stream-arb shader-source-from-stream) handle in))
	  (with-input-from-string (in source)
	    ((?extension shader-source-from-stream-arb shader-source-from-stream) handle in)))
      ((?extension gl:compile-shader-arb gl:compile-shader) handle)
      ((?extension check-compiled-shader-arb check-compiled-shader) handle)
      handle))

  (defun (?extension check-linked-program-arb check-linked-program) (handle)
    "Given a program handle that has been linked, checks and flags in a lisp-friendly manner
their link status. Errors are signalled using an error with the program log, success will
just warn with the contents of the program-log, if present."
    (cffi:with-foreign-objects ((log-length 'gl:sizei)
				(link-status 'gl:int))
      (?extension
       (gl:get-object-parameter-iv-arb handle gl:+object-info-log-length-arb+ log-length)
       (gl:get-program-iv handle gl:+info-log-length+ log-length))
      (?extension
       (gl:get-object-parameter-iv-arb handle gl:+object-link-status-arb+ link-status)
       (gl:get-program-iv handle gl:+link-status+ link-status))
      (let ((program-log (when (> (cffi:mem-ref log-length 'gl:sizei) 1)
			   (cffi:with-foreign-pointer-as-string (str 4096)
			     ((?extension gl:get-info-log-arb gl:get-program-info-log) handle (cffi:mem-ref log-length 'gl:sizei) (cffi:null-pointer) str)
			     (cffi:foreign-string-to-lisp str :count (cffi:mem-ref log-length 'gl:sizei))))))
	(if (= (cffi:mem-ref link-status 'gl:int)
	       gl:+true+)
	    (when program-log (warn program-log))
	    (error 'program-link-error :info-log program-log :object-handle handle)))))

  (defun (?extension make-program-arb make-program) (&rest shader-handles)
    "Given shader handles, creates a program, attaches any shaders given and links the program."
    (let ((handle ((?extension gl:create-program-object-arb gl:create-program))))
      (dolist (shader-handle shader-handles)
	((?extension gl:attach-object-arb gl:attach-shader) handle shader-handle))
      (when shader-handles
	((?extension gl:link-program-arb gl:link-program) handle)
	((?extension check-linked-program-arb check-linked-program) handle))
      handle))

  (defparameter (?extension *fallback-synchronizing-program-arb* *fallback-synchronizing-program*) nil)

  (defun (?extension fallback-synchronizing-program-arb fallback-synchronizing-program) ()
    (or (?extension *fallback-synchronizing-program-arb* *fallback-synchronizing-program*)
	(setf (?extension *fallback-synchronizing-program-arb* *fallback-synchronizing-program*)
	      ((?extension make-program-arb make-program)
	       ((?extension make-shader-arb make-shader) (?extension gl:+vertex-shader-arb+ gl:+vertex-shader+)
		"varying float position;
void main()
{
  gl_Position=ftransform();
  position=gl_Position.x+gl_Position.y+gl_Position.z;
}
")
	       ((?extension make-shader-arb make-shader) (?extension gl:+fragment-shader-arb+ gl:+fragment-shader+)
		"varying float position;
void main() {
  float intensity=mod(position*4.0,1.0) > 0.5 ? 1.0 : 0.1;
  gl_FragColor=vec4(intensity,intensity,0.0,1.0);
}")))))

  (defun (?extension synchronizing-program-arb synchronizing-program) (program-name &rest shader-type-sources)
    "Creates a managed shader program that will poll shader files on disk
and load them automatically if their write-times change. This can be used for
easily developing shader code while the program is running. If the shader code
does not compile for any reason, errors will be displayed on the *error-output*
and a program specified by gl:*fallback-synchronizing-program* will be returned
instead (a black and yellow striped static pattern).

For an example, please see examples/synchronized-shader.lisp."
    (defvar *synchronizing-shader-programs* (make-hash-table :test 'equal))
    ;; structure of an entry:
    ;; program-name: (program-object-handle shader-entry+ ... )
    ;; shader-entry: (shader-object-handle source-file last-compile-time)

    ;; make-structure
    (when (not (nth-value 1 (gethash program-name *synchronizing-shader-programs*)))
      (let* ((program ((?extension create-program-object-arb create-program)))
	     (shaders (mapcar #'(lambda (type-source)
				  (let ((shader 
					 ((?extension create-shader-object-arb create-shader) (first type-source))))
				    ((?extension attach-object-arb attach-shader) program shader)
				    shader))
			      shader-type-sources)))
	(setf (gethash program-name *synchronizing-shader-programs*)
	      (list program (mapcar #'(lambda (shader type-source)
					(list shader (second type-source) 0))
				    shaders
				    shader-type-sources)))))
    (let ((program-spec (gethash program-name *synchronizing-shader-programs*)))
      ;; compile out-of-date shaders 
      ;; TODO is (some ...) a great idea here really? Maybe they won't all load at the same time?
      (when (some #'(lambda (shader-entry)
		      (destructuring-bind (shader source last-time) shader-entry
			(let ((now-time (handler-case (file-write-date source)
					  (file-error (condition) 0))))
			  (when (> now-time last-time)
			    (with-open-file (in source :direction :input)
			      ((?extension shader-source-from-stream-arb shader-source-from-stream) shader in))
			    ((?extension gl:compile-shader-arb gl:compile-shader) shader)
			    (handler-case 
				((?extension check-compiled-shader-arb check-compiled-shader) shader)
			      (shader-object-error (e)
				(let ((*print-escape* nil))
				  (print-object e *error-output*))))
			    (setf (third shader-entry) now-time)
			    t))))
		  (second program-spec))
	;; re-link if anything was out of date
	((?extension gl:link-program-arb gl:link-program) (first program-spec))
	(handler-case 
	    ((?extension check-linked-program-arb check-linked-program) (first program-spec))
	  (shader-object-error (e)
	    (let ((*print-escape* nil))
	      (print-object e *error-output*)))))

      ;; check link status: return or fallback
      (if (cffi:with-foreign-object (link-status 'gl:int)
	    ((?extension gl:get-object-parameter-iv-arb gl:get-program-iv)
	     (first program-spec)
	     (?extension gl:+object-link-status-arb+ gl:+link-status+)
	     link-status)
	    (eql (cffi:mem-ref link-status 'gl:int) gl:+true+))
	  (first program-spec)
	  ((?extension fallback-synchronizing-program-arb fallback-synchronizing-program)))))

  (defmacro (?extension with-use-program-arb with-use-program) (name &body forms)
    "Executes forms using the shader program named. And cleanly use no-program afterwards."
    (let ((current-program (gensym "CURRENT-PROGRAM-")))
      `(let ((,current-program (?extension 
				(gl:get-handle-arb gl:+program-object-arb+)
				(cffi:with-foreign-object (current-program-v 'gl:int)
				  (gl:get-integerv gl:+current-program+ current-program-v)       
				  (cffi:mem-ref current-program-v 'gl:int)))))
	 ((?extension gl:use-program-object-arb gl:use-program) ,name)
	 (unwind-protect (progn ,@forms)
	   ((?extension gl:use-program-object-arb gl:use-program) ,current-program))))))


(defun clear-synchronizing-shaders ()
  (makunbound '#:*synchronizing-shader-programs*))




(export '(with-new-list with-push-name with-begin with-push-attrib with-push-matrix with-setup-projection with-projection-matrix
	  ;; 1.1
	  with-push-client-attrib
	  ;; ARB_vertex_buffer_object
	  with-map-buffer-arb with-bind-buffer-arb
	  ;; 1.5
	  with-begin-query
	  with-map-buffer with-bind-buffer
	  ;; ARB_vertex_shader/ARB_fragment_shader/ARB_shader_objects
	  shader-source-from-stream-arb check-compiled-shader-arb make-shader-arb synchronizing-shader-arb
	  check-linked-program-arb make-program-arb
	  with-use-program-arb synchronizing-program-arb
	  fallback-synchronizing-program-arb
	  *fallback-synchronizing-program-arb*
	  ;; 2.0
	  shader-source-from-stream check-compiled-shader make-shader synchronizing-shader
	  check-linked-program make-program
	  with-use-program synchronizing-program
	  fallback-synchronizing-program
	  *fallback-synchronizing-program*
	  
	  clear-synchronizing-shaders))
