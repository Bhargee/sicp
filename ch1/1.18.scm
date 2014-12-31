(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (fast-mult a b)
    (define (iter a b acc)
        (cond ((= a 1) (+ b acc))
              ((even? a) (iter (halve a) (double b) acc))
              (else (iter (- a 1) b (+ acc b)))))
    (iter a b 0))
