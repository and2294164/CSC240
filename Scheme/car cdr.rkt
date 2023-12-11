#lang scheme

(define ex1 '(1 2 (3 (4 5)) 6))

(car ex1)                                      ; 1
(car (cdr ex1))                                ; 2
(car (car (cdr (cdr ex1))))                    ; 3
(car (car (cdr (car (cdr (cdr ex1))))))        ; 4
(car (cdr (car (cdr (car (cdr (cdr ex1)))))))  ; 5
(car (cdr (cdr (cdr ex1))))                    ; 6


(define ex2 '(a b (c d e) (f (g (h) i) (j k)) l (m n o (p q) r) s))

(car ex2)                                                                           ; a
(car (cdr ex2))                                                                     ; b
(car (car (cdr (cdr ex2))))                                                         ; c
(car (cdr (car (cdr (cdr ex2)))))                                                   ; d
(car (cdr (cdr (car (cdr (cdr ex2))))))                                             ; e
(car (car (cdr (cdr (cdr ex2)))))                                                   ; f
(car (car (cdr (car (cdr (cdr (cdr ex2)))))))                                       ; g
(car (car (cdr (car (cdr (car (cdr (cdr (cdr ex2)))))))))                           ; h
(car (cdr (cdr (car (cdr (car (cdr (cdr (cdr ex2)))))))))                           ; i
(car (car (cdr (cdr (car (cdr (cdr (cdr ex2))))))))                                 ; j
(car (cdr (car (cdr (cdr (car (cdr (cdr (cdr ex2)))))))))                           ; k
(car (cdr (cdr (cdr (cdr ex2)))))                                                   ; l
(car (car (cdr (cdr (cdr (cdr (cdr ex2)))))))                                       ; m
(car (cdr (car (cdr (cdr (cdr (cdr (cdr ex2))))))))                                 ; n
(car (cdr (cdr (car (cdr (cdr (cdr (cdr (cdr ex2)))))))))                           ; o
(car (car (cdr (cdr (cdr (car (cdr (cdr (cdr (cdr (cdr ex2)))))))))))               ; p
(car (cdr (car (cdr (cdr (cdr (car (cdr (cdr (cdr (cdr (cdr ex2))))))))))))         ; q
(car (cdr (cdr (cdr (cdr (car (cdr (cdr (cdr (cdr (cdr ex2)))))))))))               ; r
(car (cdr (cdr (cdr (cdr (cdr (cdr ex2)))))))                                       ; s