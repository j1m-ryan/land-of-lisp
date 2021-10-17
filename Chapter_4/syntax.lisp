;;; recursive function caluclating the length of a list 
;;; empty lists evaluate to false
(defun my-length (list)
  (if list
      (1+ (my-length (cdr list)))
      0))

(my-length '(1 2 3 4)) ;;;evaluates to 4

;;; all 4 of these are false (nil)
'nil
nil
'()
()


;;; check if odd
(if (oddp 5)
    'odd-number
    'even-number)

;;;progn
(defvar *num-is-odd* nil)
(if (oddp 5)
    (progn (setf *num-is-odd* t)
           'odd-number)
    'even-number)

(when (oddp 5)
      (setf *num-is-odd* t)
      'odd-number)

(unless (oddp 4)
        (setf *num-is-odd* nil)
        'even-number)

(defvar *arch-enemy* nil)

(defun my-func (person)
  (cond ((eq person 'henry)
         (setf *arch-enemy* 'henry)
         'this-is-returned)
        ((eq person 'johnny)
         (setf *arch-enemy* 'johnny)
         'sup-johnny)
        (t 'catch-all)))

(my-func 'johnny)

(defun case-example (person)
  (case person
        ((henry) (setf *arch-enemy* 'henry)
                 'return-this-if-henry)
        ((johnny) (setf *arch-enemy* 'johnny)
                  'return-this-if-johnny)
        (otherwise 'catch-all)))

;;; using or as single branch conditional

(defparameter *is-it-even* nil)

(or (oddp 4) (setf *is-it-even* t))

(if (find-if #'oddp '(2 4 5 6))
    'there-is-odd
    'there-is-no-odd)

;;;! rule of thumb for comparing
;;; 1. use eq to compare symboles
;;; 2. use equal to compare everthing else

(defparameter *fruit* 'apple)

(cond
  ((eq *fruit* 'apple) 'its-an-apple)
  ((eq *fruit* 'pear) 'its-a-pear)
  (t 'neither-apple-nor-pear))

;;; equal compoares if things look the same, eq compares if they are the same