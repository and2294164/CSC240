#lang scheme

; 1

(define recursive-sub
  (lambda (x y)
    (if (zero? y)
        x
        (recursive-sub (- x 1) (- y 1)))))

; 2

(define rev
  (lambda (x)
    (if (null? x)
        '()
        (append (rev (cdr x)) (list (car x))) )))

; 3

(define len
  (lambda (lst)
    (if (or (null? lst) (not (list? lst)) )
            0
            (+ 1 (len (cdr lst))) )))
; 4

(define third-to-last
  (lambda (lst)
    (cond
      ( (< (len lst) 3) '() )
      ( (= (len lst) 3) (car lst)) 
      ( else
    (third-to-last (cdr lst)) ))))

; 5
(define min
  (lambda (lst)
	(cond
  	( (or (null? lst) (not (list? lst)) ) '() )
  	( (< (car lst) (min (cdr lst)) ) (car lst) )
    	; car lst < min (cdr lst)
  	( else (min (cdr lst))) )))


; 9
(define member-of
  (lambda (e lst)
    
	(if (null? lst) #f
    	(if (equal? e (car lst)) #t
        	(member-of e (cdr lst)) ))))


; 10
(define count-times
  (lambda (n lst)

	(if (null? lst) 0   	 
    	(if (equal? n (car lst))
        	(+ 1 (count-times n (cdr lst)))
        	(count-times n (cdr lst)) ))))

; 11
(define get-odds
  (lambda (lst)

	(if (null? lst) '()
    	(if (odd? (car lst))
       	 
        	(cons (car lst) (get-odds (cdr lst)))
       	 
    	(get-odds (cdr lst)) ))))


; 12
(define sum-all
  (lambda (lst)

	(if (null? lst) 0
    	(+ (car lst) (sum-all (cdr lst)))) ))


; 13
(define mult-all
  (lambda (lst)

	(if (null? lst) 1
    	(* (car lst) (mult-all (cdr lst)))) ))


; 14
(define square-list
  (lambda (lst)


  (if (null? lst) '()
  	(cons (* (car lst) (car lst)) (square-list (cdr lst))) )))


; 15
(define distance
  (lambda (p1 p2)

    (let
        ( (x1 (car p1))
          (x2 (car p2))
          (y1 (cdr p1))
          (y2 (cdr p2)) )
      
      (sqrt (+ (expt (- y2 y1) 2) (expt (- x2 x1) 2))) )))


(define perimeter
  (lambda (poly)

    (cond
      ( (null? poly) 0 )
      ( (= (length (cdr poly)) 0) 0 )
      (else (+ (distance (car poly) (cadr poly)) (perimeter (cdr poly))) ) )))

















                        