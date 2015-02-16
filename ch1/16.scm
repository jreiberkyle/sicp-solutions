; 1.16: Design a procedure that evoles an iterative exponential process that uses
; successive squaring and uses a logarithmic number of steps

; helper procedures
(define (even? n) (= (remainder n 2) 0))
(define (remainder x y)
    (- x (* (floor (/ x y)) y))
)
(define (square x) (* x x))

; original fast-expt procedure
(define (fast-expt b n)
    (cond ((= n 0) 1)
          ((even? n) (square (fast-expt b (/ n 2))))
          (else (* b (fast-expt b (- n 1))))
    )
)

; iterative fast-expt procedure
(define (fast-expt-i b n)
    (fast-expt-iter b n 0 0)
)
(define (fast-expt-iter b n count a)
    (cond ((>= count n) a)
          ((= count 0) (fast-expt-iter b n 1 b))
          ((<= (* 2 count) n) (fast-expt-iter b n (* 2 count) (square a)))
          (else (fast-expt-iter b n (+ count 1) (* a b)))
    )
)
