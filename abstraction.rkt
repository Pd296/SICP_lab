#lang racket
(define (make-rat n d)
  (let ((g (gcd n d)))
  (cons(/ n g)(/ d g))))
(define (numer r)
  (car r))
(define (denom r)
  (cdr r))
(define (print r)
  (newline)
  (display (car r))
   " "
  (display "/")
  (display (cdr r)))

(define (add-rat r1 r2)
  (make-rat ( + (* (numer r1) (denom r2)) (* (numer r2) (denom r1))) (* (denom r1) (denom r2))))
(define rat1 (make-rat 8 6))
 (define rat2 (make-rat 10 6))
  
(print (add-rat rat1 rat2))

