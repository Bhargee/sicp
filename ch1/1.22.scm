#lang planet neil/sicp
(define (square x) (* x x))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes n primes)
    (cond ((= primes 0) (begin (newline) (display "Done")))
          ((even? n) (search-for-primes (+ n 1) primes))
          (else (if (prime? n) (begin (timed-prime-test n) (search-for-primes (+ n 2) (- primes 1)))
                    (search-for-primes (+ n 2) primes)))))