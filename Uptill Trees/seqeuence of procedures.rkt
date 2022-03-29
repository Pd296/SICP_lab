#lang racket

(define (odd? n)
  (= (remainder n 2) 1))
(define (even? n)
  (= (remainder n 2) 0))
(define (square n)
  (* n n))
(define (cube n) (* n n n))

(define (filter predicate items)
  (cond ((null? items) '())
        ( (predicate (car items) ) (cons (car items) (filter predicate (cdr items))))
        (else
         (filter predicate (cdr items)))))

;(filter odd? '(1 2 3 4 5))
;(map square (filter odd? '(1 2 3 4 5 6)))

(define (enumerate-tree tree)
  (cond ((null? tree) '())
        ( (not (pair? tree)) (list tree))
        (else
         (append (enumerate-tree (car tree)) (enumerate-tree (cdr tree))))))


;(enumerate-tree '( 1 2 (3) (4 5)))

(define (enumerate-list low high)
 (if (> low high) '()
     (cons low (enumerate-list (+ low 1) high))))
;(enumerate-list 1 10)

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence) (accumulate op initial (cdr sequence)))))
;(accumulate + 0 '(1 2 3 4 5))
                       
;cube of all elemts in given tree


(define (cubeTree tree)
  (accumulate * 1 (map cube (enumerate-tree tree))))
;(cubeTree '( 1 2 (3 4)))

(define (cubeTree1 tree)
  (accumulate * 1 (map (lambda (x) (* x x x)) (enumerate-tree tree))))
(cubeTree1 '( 1 2 (3 4)))



  

