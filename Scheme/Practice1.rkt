#lang scheme

;
(define x 5)
'(y)
(define z "string")


; 2
(+ 4 (* 3 6)) ; a
(* 7 ( - 5 2)) ; b
(+ -6 (/ 15 3)) ; c

; 3
(define list3A '(X 1 2 3 4 5))
(car list3A) ; a

(define list3B '(1 X 2 3 4 5))
(car (cdr list3B)) ; b

(define list3C '((1 X 2 3 4 5)) )
(car (cdr (car list3C))) ; c

(define list3D '((1 2) (3 X 4) 5))
(car (cdr (car (cdr list3D)))) ; d


; 5
(define prac1-5
  (lambda (x)
    (+ (* x x) (* 2 x) 3)))


; 6
(define fib
  (lambda (n)
    (if(= n 0) 0
       (if (= n 1) 1
           (+ (fib (- n 1)) (fib (- n 2)))))))

; 7
(define quad
  (lambda (x)
    (* x 4)))

; 8
(define bloop
  (lambda (x)
    (if (> x 0) (* 2 x)
        (/ x 2))))

; 9
(define mul
  (lambda (x y)
    (* x y)))

; 10
(define bigger
  (lambda (x y)
    (if (< x y) y            ; x < y
        x)))

; 11
(define absol
  (lambda (x)
    (if (< x 0) (* x -1)
        x)))

; 12
(define transform
  (lambda (x)
    (if (symbol? x) (symbol->string x)
        (string->symbol x))))