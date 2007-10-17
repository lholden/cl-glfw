(require '#:asdf)
(asdf:oos 'asdf:load-op '#:cl-glfw)

(defparameter *running* t)
(defparameter *key-repeat* nil)
(defparameter *system-keys* t)

(defun get-key-name (key)
  (dolist (special-key '("backspace" "del" "down" "end" "enter" "esc" "f1" "f10" "f11" "f12" "f13"
			  "f14" "f15" "f16" "f17" "f18" "f19" "f2" "f20" "f21" "f22" "f23" "f24" "f25"
			  "f3" "f4" "f5" "f6" "f7" "f8" "f9" "home" "insert" "kp-0" "kp-1" "kp-2" "kp-3"
			  "kp-4" "kp-5" "kp-6" "kp-7" "kp-8" "kp-9" "kp-add" "kp-decimal" "kp-divide"
			  "kp-enter" "kp-equal" "kp-multiply" "kp-subtract" "lalt" "lctrl" "left"
			  "lshift" "pagedown" "pageup" "ralt" "rctrl" "repeat" "right" "rshift" "space"
			  "special" "tab" "unknown" "up"))
    (when (eql key (symbol-value (find-symbol (string-upcase (format nil "+key-~a+" special-key))
					      (find-package '#:glfw))))
      (return-from get-key-name special-key))))

(cffi:defcallback keyfun :void ((key :int) (action :int)) 
  (cond 
    ((not (eql action glfw:+press+)))

    ((and (>= key glfw:+key-f1+)
	  (<= key glfw:+key-f25+))
     (format t "F~d~%" (1+ (- key glfw:+key-f1+))))

    ((eql key glfw:+key-esc+)
     (format t "ESC => quit program~%")
     (setf *running* nil))

    ((eql key (char-code #\R))
     (setf *key-repeat* (not *key-repeat*))
     (funcall (if *key-repeat* #'glfw:enable #'glfw:disable) glfw:+key-repeat+)
     (format t "R => Key repeat: ~s~%" (if *key-repeat* "ON" "OFF")))

    ((eql key (char-code #\S))
     (setf *system-keys* (not *system-keys*))
     (funcall (if *system-keys* #'glfw:enable #'glfw:disable) glfw:+system-keys+)
     (format t "S => System keys: ~s~%" (if *system-keys* "ON" "OFF")))
    ((let ((name (get-key-name key)))
       (when name
	 (format t "~a~%" name)
	 t)))

    ((and (> key 0)
	  (< key 256))
     (format t "~c~%" (code-char key)))

    (t 
     (format t "??? decimal ~d" key)
     (when (graphic-char-p (code-char key))
      (format t " character ~c" (code-char key)))
     (fresh-line)))
  (force-output))

(defun main ()
  (unless (eql gl:+true+ (glfw:open-window 250 100 0 0 0 0  0 0 glfw:+window+))
    (return-from main))

  (glfw:set-key-callback (cffi:callback keyfun))
  (glfw:set-window-title "Press some keys!")
  
  (do ((*running* t (and *running* (not (zerop (glfw:get-window-param glfw:+opened+)))))
       (t1 (glfw:get-time) (glfw:get-time))) 
      ((not *running*))

    (destructuring-bind (width height) (glfw:get-window-size)
      (gl:viewport 0 0 width height))

    (gl:clear-color (coerce (+ 0.5 (* 0.5 (sin (* 3.0 t1))))
			    'single-float)
		    0.0 0.0 0.0)
    (gl:clear gl:+color-buffer-bit+)

    (glfw:swap-buffers)))

(glfw:init)
(main)
(glfw:terminate)
