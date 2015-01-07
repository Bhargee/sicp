(define (iterative-improve good-enough? improve)
  (define (ret-fun guess)
      (if (good-enough? guess)
          guess
          (ret-fun (improve guess))))
  (lambda (first-guess) (ret-fun first-guess)))

(define (sqrt x)
  ; helpers
  (define (average a b) (/ (+ a b) 2))
  (define (square r) (* r r))
  ; input funcs
  (define (improve guess) (average guess (/ x guess)))
  (define (good-enough? guess) (< (abs (- (square guess) x)) 0.001))
  ; 1.0 is the standard first guest
  ((iterative-improve good-enough? improve) 1.0))

(sqrt 9.0)
(sqrt 13876)

(define (fixed-point f first-guess)
  (define tolerance .00001)
  (define (improve guess) (f guess))
  (define (good-enough? guess)
    (< (abs (- guess (improve guess))) tolerance))
  ((iterative-improve good-enough? improve) first-guess))

(fixed-point cos 1.0)
