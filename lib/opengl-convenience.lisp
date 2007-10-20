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
  (let ((ntarget (gensym "TARGET-")))
    `(let ((,ntarget ,target))
       (gl:map-buffer ,ntarget ,access)
       (unwind-protect (progn ,@forms)
	 (gl:unmap-buffer ,ntarget)))))

(export '(with-new-list with-push-name with-begin with-push-attrib with-push-matrix with-setup-projection with-push-client-attrib with-begin-query with-map-buffer))