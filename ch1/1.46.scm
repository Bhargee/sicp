(define (iterative-improve good-enough? improve)
  (define (fun guess)
    (if (good-enough? guess)
        guess
        (begin (newline) (display guess) (fun (improve guess)))))
  (lambda (guess) (fun guess)))

(define (sqrt x)
  (define (average a b)
    (/ (+ a b) 2.0))
  (define (good-enough? guess)
    (< (abs (- (* guess guess) x)) .001))
  (define (improve guess)
    (average x guess))
((iterative-improve good-enough? improve) 1.0))

