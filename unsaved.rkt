#lang racket
(define (N-pos li n)
  (if (= n 0 )
      (car li)
      (N-pos (cdr li) (- n 1))))
;(N-pos '(1 2 3 4 5) 3)

(define (reverse li)
  (if (null? li)
      '()
  (append (reverse (cdr li)) (list (car li)))))
;(reverse '(1 2 3 4 5))


;mapping over list
;(define li '(1 2 3 4 5))
(define (square list)
  (if (null? list)
      '()
      (cons (* (car list) (car list)) (square (cdr list)))))
;(square '(1 2 3 4 5))
(map (lambda (x) (* x x)) '(1 2 3 4 5))
(map (lambda (x) (+ x x)) '(1 2 3 4))

(map (lambda (x) ( * x x x ) ) '(1 2))

;(map square li)