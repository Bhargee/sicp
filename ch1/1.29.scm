; first try
(define (simpson-quad-bad f a b n)
    (define (h) (/ (- b a) n))
    (define (term k) (f (+ a (* k (h)))))
    (define (iter k) 
      (cond ((= k n) (term n))
            ((even? k) (+ (* 2 (term k)) (iter (+ k 1))))
            (else (+ (* 4 (term k)) (iter (+ k 1))))))
    (* (/ (h) 3) (+ (f a) (iter 1))))
; more natural, tail recursive
(define (simpson-quad f a b n)
    (define (h) (/ (- b a) n))
    (define (simpson-quad-tr arg count acc)
      (cond ((= count n) (* (/ (h) 3) (+ acc (f arg))))
            ((even? count) (simpson-quad-tr (+ arg (h)) (+ count 1) (+ acc (* 2 (f arg)))))
            (else (simpson-quad-tr (+ arg (h)) (+ count 1) (+ acc (* 4 (f arg)))))))
  (simpson-quad-tr (+ a (h)) 1 (f a)))

(define (cube x) (* x x x))
