;;; guess number
(defparameter *small* 1)
(defparameter *big* 100)

(defun guess ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (guess)))
  (guess))

(defun bigger ()
  (setf *small* (1+ (guess)))
  (guess))

(defun start-over ()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (guess))
