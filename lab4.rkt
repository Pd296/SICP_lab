#lang racket
;Write the statement using list and cons to produce the output 3

;1)  ' ((1.2) 3.4)
  ( cons (cons 1 2) (cons 3 4))
(newline)

;2) ' ((1.2)(3.4))
     (list (cons 1 2)(cons 3 4 ))
(newline)
;3) '((1.2) 3)
      (cons (cons 1 2) (cons 3 null))
(newline)
;4) ' ( 1 (3) 4 )
     (list 1 (cons 3 null) 4)
(newline)
;5) ' ( 1 (3).4)
     (cons 1 (cons (cons 3 null) 4))
(newline)
;2) Another approach using cons only
 (cons (cons 1 2) (cons (cons 3 4) null))