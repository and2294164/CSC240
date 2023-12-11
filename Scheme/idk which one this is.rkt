#lang scheme

"#1"
(let
    ((x 10))
  (+ x 1))

( (lambda (x) (+ x 1)) 10 )

"#2"
(let
    ((a 1)
     (b 2))
  (+ a b))

( (lambda (a b) (+ a b)) 1 2 )



"#3"
(let
    ((a 10)
     (b 5))
  (* a b))

( (lambda (a b) (* a b)) 10 5 )


"#4"
(define ltest
  (lambda (x)
    (let
        ((a 2)
         (b 3))
      (+ (* x a) b))))
(ltest 5)


(define ltest2
  (lambda (x)
    (lambda (a b)
    (+ (* x a) b)) 2 3 ))
(ltest2 5)








































