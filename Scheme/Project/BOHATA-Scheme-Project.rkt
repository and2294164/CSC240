#lang scheme
(require "scmprojtest.scm")

; Remove Next To Last
(define remove-next-to-last
  (lambda (lst)

    (if (null? lst) '()

        (cond
          ( (= 2 (length lst)) (remove-next-to-last (cdr lst)) )
          ( else (cons (car lst) (remove-next-to-last (cdr lst))) )
          ))))

; Manhattan Distance
(define manhattan
  (lambda (p1 p2)
    (let
        ( (x1 (car p1))
          (x2 (car p2))
          (y1 (cdr p1))
          (y2 (cdr p2)) )
      (+ (abs (- x2 x1)) (abs (- y2 y1)))
      )))
      
; Remove Dups
(define remove-dups
  (lambda (lst)

    (if (null? lst) '()
        
        (if (null? (cdr lst)) (cons (car lst) '())

            (if (eq? (car lst) (cadr lst))
            
                (remove-dups (cdr lst))

                (cons (car lst) (remove-dups (cdr lst)))
                )))))

; Deep Search
(define deep-search
  (lambda (lst val)
    (cond
      ( (empty? lst) #f )
      ( (atom? lst) (eq? lst val) ) 
      ( else
        
         (or (tree-exists? (car lst) val) (tree-exists? (cdr lst) val)) )      
        )))

; inorder
(define inorder
  (lambda (tree)
        (cond
          ( (empty? tree) '() )
          ( (atom? tree) (list tree) )
          ( else (append (inorder (car tree)) (inorder (cdr tree))) )
        )))

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

; tree-exists?
(define tree-exists?
  (lambda (tree ele)

    (cond
      ( (empty? tree) #f )
      ( (atom? tree) (eq? tree ele) ) 
      ( else
        
         (or (tree-exists? (car tree) ele) (tree-exists? (cdr tree) ele)) )
      )))

; polynomial
(define eval-poly
  (lambda (poly x)

    (if (null? poly) 0

        (+ (eval-term (car poly) x) (eval-poly (cdr poly) x))
        )))

(define eval-term
  (lambda (term x)

    (* (car term) (expt x (cdr term)))
    ))

(define get-poly-fun
  (lambda (p)
    
    (lambda (x) (eval-poly p x))
    ))

; Test code
(display "=========== Start of test code ===========")(newline)
(test-remove-next-to-last remove-next-to-last)
(test-manhattan manhattan)
(test-remove-dups remove-dups)
(test-deep-search deep-search)
(test-inorder inorder)
(test-tree-exists tree-exists?)
(test-eval-poly eval-poly)
(test-get-poly-fun get-poly-fun)
(display "============ End of test code ============")(newline)