(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define one (lambda (f) (lambda (x) (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

(define (addition f g) ((f add-1) g))

; testing
(define (inc x) (+ x 1))
((zero inc) 0)
((one inc) 0)
((two inc) 0)
(((addition one two) inc) 0)

