; 1.18: Iterative version of 1.17

(define (even? n) (= (remainder n 2) 0))
(define (remainder x y)
    (- x (* (floor (/ x y)) y))
)
(define (halve a) (/ a 2))
(define (double a) (+ a a))

(define (mult-i a b) (mult-iter a b 1 a))
(define (mult-iter a b c s)
    (cond ((>= c b) s)
          ((<= (double c) b) (mult-iter a b (double c) (double s)))
          (else (mult-iter a b (+ c 1) (+ a s)))
    )
)
