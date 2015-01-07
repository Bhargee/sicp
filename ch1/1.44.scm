(load "1.43")

(define (smooth f)
  (define (average a b c)
    (/ (+ a b c) 3))
  (define dx .00001)
  (lambda (x) (average
               (f (- x dx))
               (f x)
               (f (+ x dx)))))

(define (nfold-smooth f n)
  (repeated-iter smooth n) f)
