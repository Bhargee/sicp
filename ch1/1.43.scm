; I found this one to be pretty hard, ended up looking at some solutions
(load "1.42")

(define (repeated f n)
  (if (< n 1)
      (lambda (x) x)
      (compose f (repeated f (- n 1)))))

; should return 625
((repeated square 2) 5)

(define (repeated-iter f n)
  (define (loop n result)
    (if (< n 1)
        result
        (loop (- n 1) (compose f result))))
  (loop n (lambda (x) x)))

((repeated-iter square 2) 5)

