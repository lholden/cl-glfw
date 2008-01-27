(in-package #:cl-glfw-glu)

(defcfun ("gluGetString" get-string) :pointer (name enum))