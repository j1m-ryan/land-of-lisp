(defun dot-name (exp)
  (substitute-if #\_ (complement #'alphanumericp) (prin1-to-string exp)))

(substitute-if 0 #'oddp '(1 2 3 4 5))

(defparameter *max-label-length* 30)

(defun dot-label (exp)
  (if exp
      (let ((s (write-to-string exp :pretty nil)))
        (if (> (length s) *max-label-length*)
            (concatenate 'string (subseq s 0 (- *max-label-length* 3))
                         "...")
            s))
      ""))

(defparameter *myvar* '(+ 1 2))

(eval *myvar*)