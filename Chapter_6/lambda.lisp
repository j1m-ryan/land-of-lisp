;;; half function
(defun half (n)
  (/ n 2))

;;; lambda example

(lambda (n) (/ n 2)) ; defined and then the function is returned

;;;! lambda function is passed to mapcar

(mapcar (lambda (n) (/ n 2)) '(2 4 6))