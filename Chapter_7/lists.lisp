;;; dotted lists
(cons 1 (cons 2 3))

;; create list from data mode via dotted list
'(1 . (2 . (3 . nil)))

;;; dotted lits can be used to elegantly represent pairs

(cons 1 2)

(setf *print-circle* t)


;;; infinite list
(defparameter foo '(1 2 3))

(setf (cdddr foo) foo)


;;; a lists (association lists)

(defparameter *things* '((x . 5) (y . 10) (z . 15)))

;; if value appears more than once in a a list the first value is taken

;;; to look up the value of something in a list use the assoc function

(assoc 'x *things*)

;;; to change the value of a key value pair in an assoc list use the push function

(push '(x . 4) *things*)
