#lang racket
;sum of odd elements in a list

(define (odd-sum list)
  (cond ( (null? list) 0)
        ( (= (remainder (car list) 2) 1) (+ (car list) (odd-sum (cdr list))))
        (else
        (odd-sum (cdr list)))))
;(odd-sum '(1 2 3 4 5))

;list of odd elemts

(define (odd-ele list)
  (cond ( (null? list) '())
        ( (= (remainder (car list) 2) 1) (cons (car list) (odd-ele (cdr list))))
        (else
         ( odd-ele (cdr list)))))
;(odd-ele '(1 2 3 4 5 9 8 7 6))

;search an elemts

(define (search list N)
  (cond ( (null? list ) #f)
        ((= (car list ) N) #t)
        (else
         (search (cdr list) N))))
;(search '(1 2 3 4 5) 4)
;(search '(1 2 3 4 5) 10)


;sum of odd elemts in a tree


(define (odd-sum-tree tree)
  (cond ((null? tree ) 0)
        ((not (pair? tree))
         (if (= 1 (remainder  tree) )
                                (+ ( tree) (odd-sum-tree (cdr tree)))
                                (odd-sum-tree (cdr tree))))
        
        (else
         (odd-sum-tree (cdr tree)))))
;(odd-sum-tree '(1 3 '(2 5 1) 4 7))
;(define treee '(1 2 ( 3 3 ) 5 (3 5)))
;treee

(define (check-odd n)
(= (remainder n 2) 1))



(define (sumofoddtree tree)
(cond
((null? tree) 0)
((not (pair? tree))
(if (check-odd tree) tree 0))
(else (+ (sumofoddtree(car tree)) (sumofoddtree (cdr tree))))))

;(sumofoddtree (cons '(1 2) '(3 4)))

;tree of odd elements

(define (odd-tree tree)
  (cond ((null? tree) '())
        ((not (pair? tree))
         (if (check-odd tree) tree '() ))
        ( else
         (append (list (odd-tree  (car tree))) (odd-tree (cdr tree))))))

;(odd-tree   '((1 2) (3 4)))

(define (oddinTree tr)
  (cond ((null? tr) '())
        ((pair? (car tr))
         (append (list (oddinTree (car tr))) (oddinTree (cdr tr))))
         (else (if
                (= (modulo (car tr) 2) 1) (append (list (car tr)) (oddinTree (cdr tr)))
                (oddinTree (cdr tr))))))
;(display (oddinTree '(1 2 (3 4 (5 6)))))

;search elemts in a tree

(define (search-tree tree n)
  (cond ((null? tree) (newline)"not present")
        ((not (pair? tree))
         (if  (= tree n) (begin (display "found") (exit) ) " "))
        (else
         (search-tree (car tree) n)(search-tree (cdr tree) n))))

;(search-tree '( 1 2 (3 4) (6) 4 5) 6)


;multiply all tree elemts by 5

(define (scale-tree tr factor)
  (cond ((null? tr) 0)
        ((not (pair? tr)) (* tr factor))
        (else
         (cons (scale-tree (car tr) factor) (scale-tree (cdr tr) factor)))))
;(scale-tree '(2 3 ( 4 5) 6 (7 9)) 2)

;multiply all tree elemts by 5 using map


(define (scale-tree-map tree factor)
  (map (lambda (sub-tree) (if (pair? sub-tree) (scale-tree sub-tree factor) (* sub-tree factor)))tree))
;(scale-tree-map '(1 2 3 ( 4 5) 6 ( 7 8)) 2)


;search element

(define (proc ele tr)
    (cond ((null? tr) "Not Present")
        ((not (pair? tr))(if(= ele tr) (begin  (display "Element Found")(exit) )" "))
        (else (proc ele (car tr))(proc ele (cdr tr)))))

;(proc 5 '( 1 2 (3 5) 4 (2) ))



(define (isOdd? n)
  (= (remainder n 2) 1))
(define (square x)
  (* x x))
(define (odd-square li)
  (cond ((null? li)'())
        (else
         (if (isOdd? (car li))
             (cons (square (car li)) (odd-square (cdr li)))
             (odd-square (cdr li))))))
;(odd-square '(1 2 3 4 5))


;product of even numbers from a range of numbers

(define (prod-even li left right counter )
  (cond ( (null? li) 1)
        ( (> left right ) 1 (exit) )
        ( (< counter left) (+ 1 counter)) 
        (else
         (if (not (isOdd? (car li)))
             (* (car li) (prod-even (cdr li) (+ 1 left) right counter))
             (prod-even (cdr li) (+ left 1) right counter )))))
(prod-even '(3 2 3 4 5 6 7 8 9 ) 1 8 1 )






(define (square-list li)
  (cond ((null? li) '())
       (else
         (cons (square (car li)) (square-list (cdr li))))))
;(square-list '(1 2 3 45))

























         