(in-package #:cl-user)

(defpackage #:prometheus.test
  (:use :cl :prove))

(defmacro is-error-report (form error report)
  `(is
    (handler-case
        ,form
      (,error (e) (princ-to-string e)))
    ,report
    ,(format nil "~s throwed ~a reported as ~s"
             form
             error
             report)))
