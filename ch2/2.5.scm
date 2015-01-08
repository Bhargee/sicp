; Didn't quite follow directions, the representation is done with procedures, but converting this
; to integer representation is as simple as moving the factor helper out of cons' scope and
; defining cons and car as full calls to the factor helper. I thought this was more elegant
(define (cons a b)
  (define (fast-pow base exp)
    (cond 
           ((= exp 1) base)
           ((even? exp) (fast-pow (* base base) (/ exp 2)))
           (else (* base (fast-pow (* base base) (/ (- exp 1) 2))))))

  (define (factor-helper p div acc)
    (if (not (integer? p))
         (- acc 1)
        (factor-helper (/ p div) div (+ acc 1))))
  (lambda (div) (factor-helper (* (fast-pow 2 a) (fast-pow 3 b)) div 0)))

(define (car pair)
  (pair 2))

(define (cdr pair)
  (pair 3))
