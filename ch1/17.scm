; 1.17: Define a multiplication procedure that uses a logarithmic number of steps
; helper procedures
(define (even? n) (= (remainder n 2) 0))
(define (remainder x y)
    (- x (* (floor (/ x y)) y))
)
(define (halve a) (/ a 2))
(define (double a) (+ a a))

; original multiplication procedure
(define (mult a b)
    (if (= b 0)
        0
        (+ a (mult a (- b 1)))
    )
)

; multiplication procedure that uses a logarithmic number of steps
(define (multl a b)
    (cond ((= b 0) 0)
          ((even? b) (multl (double a) (halve b)))
          (else (+ a (multl a (- b 1))))
    )
)
