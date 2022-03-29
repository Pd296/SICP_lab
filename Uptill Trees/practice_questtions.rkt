#lang racket
;pracitce questions

; factoial linear iterative  - no errors 

(define (fact n)
   (fact-iter 1 1 n))
(define (fact-iter product count max)
 (if (> count max)
     product
     (fact-iter (* product count) (+ count 1) max)))
;(fact 5)

; Nth fibonnaci number ->  1,1,2,3,5,8,13

(define (fib-rec n)
  (if (< n 2)
      n
      (+ (fib-rec (- n 1)) (fib-rec (- n 2)))))
;(fib-rec 5)
(define (fib n)
  (if (< n 2)
      n
      (fib-iter 0 1 n)))

(define (fib-iter a b max)
  (if (= max 1 )
      b
      (fib-iter b (+ a b) (- max 1))))
;(fib 5)

; Exponentiation

(define (square n)
  (* n n ))

(define (power-rec n r)
  (if (= r 0)
      1
      (* n (power-rec n (- r 1)))))
;(power-rec 2 5)

(define (power-fast-exp n r )
  (if (= r 0 )
      1
   (if (= 0 (remainder r 2))
     (square (power-fast-exp n (quotient r 2)))
     (*  n (square (power-fast-exp n (quotient r 2)))))))
;(power-fast-exp 2 1)
(define (power n r )
  (power-fastest-exp n r 1))
(define (power-fastest-exp n r a)
   (cond ((= r 0 )
      1)
   (if (= 0 (remainder r 2)) 
       (power-fastest-exp n (quotient r 2) (square n ))
       (* n ( power-fastest-exp n (quotient r 2) (square n ))))))
;(power 2 3)
       
       
(power 5 5)
                  
  
      
 






  
   

 
