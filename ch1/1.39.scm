(load "1.37.scm")

; approximates tan x with k terms of Lambert's continued fraction
(define (tan-cf k x)
  (define (d i) (+ (* 2 (- i 1)) 1))
  (define (n i)
    (if (= i 1)
        x
        (- (* x x))))
  (cont-frac-tr n d k))

; should = tan 1 radians
(tan-cf 10 1)
