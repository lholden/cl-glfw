(in-package #:glu)

(defcfun ("gluGetString" get-string) :pointer (name gl:enum))