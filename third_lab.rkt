#lang racket
;1) Calculate x2 + y2 +z2

(define (sum_of_squares_of_numbers x y z )
 ( +(* x x) (* y y) (* z z )))
(sum_of_squares_of_numbers 1 2 3)
(sum_of_squares_of_numbers 1 5 2)

 ;using lambda
((lambda (x y x )( +(* x x) (* y y) (* z z )))

    
    