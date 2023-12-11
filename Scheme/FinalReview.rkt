#lang scheme
(define a 10)
(define b 5)
(define c (+ a b))
(define func
  (lambda (c)
    (if (= c 0)
        '()
        (cons c (func (- c 1))))))






(define whereis
  (lambda (i lst)

    (cond
      ( (empty? lst) '() )
      ( (eq? i 0) (car lst) )
      ( else (whereis (- i 1) (cdr lst)) )
      )))


; Write a Scheme program (increasing lst) which returns a list that is lst with any elements removed that are not greater than the ones preceding it.  For example:
;(increasing '()) → ()
;(increasing '(1)) → (1)
;(increasing '(1 -2 3 -4 5)) → (1 3 5)
;(increasing '(5 4 3 2 1)) → (5)
;(increasing '(1 2 3 4 5)) → (1 2 3 4 5)


(define increasing
  (lambda (lst)

    (if (null? lst) '() 
        (cons (car lst) (increasing-helper (car lst) (cdr lst)))
        )))

(define increasing-helper
  (lambda (prev lst)

   (cond
     ( (null? lst) '() )
     ( (> (car lst) prev) (cons (car lst) (increasing-helper (car lst) (cdr lst))) )
     (else (increasing-helper (car lst) (cdr lst)))
     )))

(increasing '(1 2 3 4 5))
(increasing '(1 -2 3 -4 5))

(define addindex
  (lambda (lst)

    (if (empty? lst) '()
        (addindex-helper 0 lst))
    ))

(define addindex-helper
  (lambda (i lst)

    (if (empty? lst) '()
        (cons (+ (car lst) i) (addindex-helper (+ i 1) (cdr lst))))
    ))
        



(addindex '(1 2 3))




    