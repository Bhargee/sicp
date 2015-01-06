; part a
(define (cont-frac n d k)
    (define (helper j)
        (cond ((= j 1) (/ (n 1) (helper (+ j 1))))
              ((= j k) (+ (d (- k 1)) (/ (n k) (d k))))
              (else (+ (d (- j 1)) (/ (n j) (helper (+ j 1)))))))
    (helper 1))

; calculates 1/phi, where phi = golden ratio
(cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 10)

; part b
(define (cont-frac-tr n d k)
  (define (helper res j)
    (cond ((= j 1) (/ (n 1) res))
          (else (let ((lhs (d (- j 1))) (rhs (/ (n j) res)))
                  (helper (+ lhs rhs) (- j 1))))))
  (helper (d k) k))

(cont-frac-tr (lambda (x) 1.0) (lambda (x) 1.0) 10)
