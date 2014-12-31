(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (fast-mult a b)
    (cond ((= a 1) b)
          ((even? a) (fast-mult (halve a) (double b)))
          (else (+ b (fast-mult (- a 1) b)))))

