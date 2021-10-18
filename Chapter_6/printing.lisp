(progn (print "this") (print "is") (print "a") (print "test")) ;;; each is printed on a new line
(progn (prin1 "this") (prin1 "is") (prin1 "a") (prin1 "test")) ;;; each is printed on the same line

(defun say-hello ()
  (print "Please type your name:")
  (let ((name (read)))
    (prin1 "Nice to meet you, ")
    (print name)))

(defun say-hello2 ()
  (princ "please type your name:")
  (let ((name (read-line)))
    (princ "Nice to meet you, ")
    (princ name)))

(defparameter *stored-code* '(+ 1 2))

(eval *stored-code*)

(defparameter *allowed-commands* '(look walk pickup inventory))

(defun game-read ()
  (let ((cmd (read-from-string (concatenate 'string "(" (read-line) ")")))
        (flet ((quote-it (x) (list 'quote x)))( cons( carcmd)
        (mapcar #'quote-it( cdr cmd)))))
)
)

(defun game-eval (exp)
  (if (member (car exp *allowed-commands*)
              (eval exp)
              '(i do not know that command.))))

(defun game-repl ()
  (let ((cmd (game-read)))
    (unless (eq (car cmd) 'quit)
            (game-print (game-eval cmd))
            (game-repl))))