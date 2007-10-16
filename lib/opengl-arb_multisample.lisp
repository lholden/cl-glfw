
(in-package #:gl) 

;;;; ARB_multisample

(defconstant +multisample+ #x809D) 
(defconstant +multisample-arb+ #x809D) 
(defconstant +sample-alpha-to-coverage+ #x809E) 
(defconstant +sample-alpha-to-coverage-arb+ #x809E) 
(defconstant +sample-alpha-to-one+ #x809F) 
(defconstant +sample-alpha-to-one-arb+ #x809F) 
(defconstant +sample-coverage+ #x80A0) 
(defconstant +sample-coverage-arb+ #x80A0) 
(defconstant +sample-buffers+ #x80A8) 
(defconstant +sample-buffers-arb+ #x80A8) 
(defconstant +samples+ #x80A9) 
(defconstant +samples-arb+ #x80A9) 
(defconstant +sample-coverage-value+ #x80AA) 
(defconstant +sample-coverage-value-arb+ #x80AA) 
(defconstant +sample-coverage-invert+ #x80AB) 
(defconstant +sample-coverage-invert-arb+ #x80AB) 
(defconstant +multisample-arb+ #x809D) 
(defconstant +sample-alpha-to-coverage-arb+ #x809E) 
(defconstant +sample-alpha-to-one-arb+ #x809F) 
(defconstant +sample-coverage-arb+ #x80A0) 
(defconstant +sample-buffers-arb+ #x80A8) 
(defconstant +samples-arb+ #x80A9) 
(defconstant +sample-coverage-value-arb+ #x80AA) 
(defconstant +sample-coverage-invert-arb+ #x80AB) 
(defconstant +multisample-bit-arb+ #x20000000) 
(defglextfun
 (("SampleCoverageARB" sample-coverage-arb) :args
  ((:name |value| :type |ClampedFloat32| :direction :in)
   (:name |invert| :type |Boolean| :direction :in))
  :return ("void") :category ("ARB_multisample") :glxflags ("ARB") :version
  ("1.2") :alias ("SampleCoverage") :glsalias ("SampleCoverage"))) 