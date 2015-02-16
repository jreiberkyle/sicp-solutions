; 1.11: compute f by means of recursive then iterative process
; recursive
(define (fr n)
    (if (< n 3)
        n
        (+ (fr (- n 1)) 
           (* 2 (fr (- n 2)))
           (* 3 (fr (- n 3)))
        )
    )
)

; iterative
(define
    (fi n) (f-iter n 0 0 0 0)
)

(define (f-iter n count f1 f2 f3)
    (cond ((< n count) f1)
          ((< count 3) (f-iter n (+ count 1) count f1 f2))
          (else (f-iter n (+ count 1) (+ f1 (* 2 f2) (* 3 f3)) f1 f2))
    )
)
