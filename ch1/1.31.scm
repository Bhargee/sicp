(define (product term a next b)
    (if (> a b)
        1
        (* (term a)
           (product term (next a) next b))))

(define (id x) x)

(define (inc x) (+ x 1))

(define (factorial n)
  (cond ((< n 0) n)
        ((= n 0) 1)
  (else (product id 1 inc n))))
; approximate pi w/ the wallis formula w/ n term pairs
(define (pi-approx n)
  (define (term x) (* x x))
  (define (next x) (+ x 2))
  (* 2 (/ (product term 2 next n) (product term 3 next n))))
