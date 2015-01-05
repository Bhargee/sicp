; prints guesses
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (begin
        (newline)
        (display guess)
      (if (close-enough? guess next)
          next
          (try next)))))
  (try first-guess))

(define (average x y) (/ (+ a b) 2))

(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0)
(fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2.0)
