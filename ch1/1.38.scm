(load "1.37.scm")

(define (d i)
  (cond ((= (remainder i 3) 2) (* 2 (ceiling (/ i 3.0))))
        (else 1.0)))
; calculates e
(+ 2 (cont-frac-tr (lambda (x) 1.0) d 10))
