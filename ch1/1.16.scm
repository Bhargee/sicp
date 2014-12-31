 (define (fast-exp b n a)
           (cond ((= n 0) a)
           ((even? n) (fast-exp (square b) (/ n 2) a))
           (else (fast-exp b (- n 1) (* a b)))))
