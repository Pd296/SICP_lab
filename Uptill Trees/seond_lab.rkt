#lang racket
#|(define(absolute n)
 (if (< n 0) (* n -1) n))
(absolute -2)

(define (identify x)
  (cond ((> x 0 ) (newline)(display "positive number"))
       ( (< x 0 ) (newline)(display "negative number"))
       ( (= x 0)  (newline)(display "zero"))))
(identify 7)
(identify 0)

(define( natural_rec n)
 (if (= n 0)
   n
   (+ n (natural_rec (- n 1)))))
(natural_rec 10)
(natural_rec 5)|#

#|
(define (natural_iter sum curr n)
  (if (> curr n)
      sum
      (natural_iter((+ curr sum)(+ 1 curr) n))))
(define (natural n)
  ( natural_iter(1 1 n)))
(natural 5)
|#

;fibonacci series

(define (fib n first second)
  (if (< n 2)
      n
  
      
      