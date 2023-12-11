#lang scheme

;1
(define introduction
  (lambda (name home)
     (list 'My 'name 'is name 'and 'I 'am 'from home) ))

;2
(define two-by-two
  (lambda (w x y z)
     (cons (cons w x) (cons y z)) ))

;3
(define three-by-three
  (lambda (a b c d e f g h i)
    (list (list a b c) (list d e f) (list g h i)) ))

;4
(define rps
  (lambda (p1 p2)
    (cond
      ((eq? p1 p2) "Tie")
      ( (and (eq? p1 'rock) (eq? p2 'paper)) "Player 2 wins!" )
      ( (and (eq? p1 'rock) (eq? p2 'scissors)) "Player 1 wins!" )
      ( (and (eq? p1 'paper) (eq? p2 'rock)) "Player 1 wins!" )
      ( (and (eq? p1 'paper) (eq? p2 'scissors)) "Player 2 wins!" )
      ( (and (eq? p1 'scissors) (eq? p2 'rock)) "Player 2 wins!" )
      ( (and (eq? p1 'scissors) (eq? p2 'paper)) "Player 1 wins!" )
      )))

;5

(define subset?
  (lambda (x s)

    (cond
      ( (null? s) #f )
      ( (null? x) #t )
      ( (member (car x) s) (subset? (cdr x) s))
      ( else #f)
      )))
      
;6
(define set-equal?
  (lambda (s1 s2)

    (and (subset? s1 s2) (subset? s2 s1)) ))

;7
(define nope
  (lambda (n)

    (if (= n 0) '()
        (cons 'no (nope (- n 1)))
        )))



;8
(define first-half
  (lambda (lst)
    (if (<= (length lst) 1) lst

        (cons (car lst) (first-half (reverse (cdr (reverse (cdr lst))))))
        )))

;9
(define parens-depth
  (lambda (lst)
    
    (cond
      ( (not (list? lst)) 0)
      ( (null? lst) 1)
      (  else (max (+ 1 (parens-depth (car lst))) (parens-depth (cdr lst))) )
      )))








