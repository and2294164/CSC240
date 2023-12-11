#lang scheme


(+ 2 3 (* 3 10))

(define a 1)
(define b 2)
(define c 3)

(+ a b c)

(define act1lst '(a b c d e))

(car (cdr act1lst))


(define addtwo
  (lambda (x)
  (+ x 2)))

(addtwo 5)