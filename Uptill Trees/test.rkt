#lang racket
(define (div n)
  (= (remainder n 3) 0))
(define (count tr)
  (cond ((null? tr) 0)
        ((not (pair? tr))
         (if (div  tr ) 1 0))
        (else
         (+ (count (car tr)) (count (cdr tr))))))
(count '( 1  (3 4) 5 (6) 7 8 (9 12)))