;;; exponent
(expt 2 3) ;;; 2^3

;;; print
(princ "Hello")

;;; cons (links two pieces of data together)
(cons 'something 'something-else)

;;const with nil becomes the list (SOMETHING)
(cons 'something 'nil) ;;; returns something as nil will terminate a list

;;; cons adds new item to the front of a lsit
(cons 'hi '(hey hello))

;;; similar to
(cons 'hi (cons 'hey (cons 'hello ())))

;;; cadr is (car (cdr)) gets second item from list

(cadr '(1 2 3)) ;;; returns 2

;;cdar is (cdr (car)) will return the cdr of the items from the first element in the list, therefore the first item needs to be a list

(cdar '((1 5 6) 2 3 4));; returns (5 6)

;;; list makes a list using cons cells, three different ways to make a list
(list 'hi 'hey 'hello)
'(hi hey hello)
(cons 'hi (cons 'hey (cons 'hello ())))
