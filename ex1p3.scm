; 1.3: Define a procedure that takes three numbers as args and returns the sum of squares of the two larger numbers

(define (sum-of-squares a b)
    (+ (* a a) (* b b))
)

(define (sum-of-squares-of-largest-two a b c)
    (cond ((and (>= a c) (>= b c)) (sum-of-squares a b))
          ((and (>= a b) (>= c b)) (sum-of-squares a c))
          (else (sum-of-squares b c))
    )
)
