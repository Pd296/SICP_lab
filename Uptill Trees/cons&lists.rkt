#lang racket
(cons 4 5)                  ;  (4.5)
(newline)
(cons 3(cons 4 5 ))      ; ( 3 . (4.5))             wrong
(newline)
(cons (cons 1 2 )6)      ; ( (1.2).6)             correct
(newline)
(cons 8 ( cons 5(cons 7 null))) ; ( 8 5 7 )         correct
(newline)
(list 5 6 7)  ; (5 6 7)                               correct
(newline)
(cons (cons 5 6 ) (cons 2 3)) ; ( ( 5.6).(2.3))       wrong
(newline)
(list (cons 5 6 ) (cons 2 3) (cons 8 9 )) 