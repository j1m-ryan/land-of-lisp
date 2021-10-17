(flet ((f (n)
          (+ n 10)))
  (f 5))

(let ((a 5)
      (b 6))
  (+ a b))

(flet ((f (n) (+ n 10))
       (g (n) (- n 3)))
  (g (f 5)))

(labels ((a (n) (+ n 5))
         (b (n) (+ (a n) 6)))
  (b 10))