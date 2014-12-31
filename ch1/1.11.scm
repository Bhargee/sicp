(define (f-rec n)
      (if (< n 3) 
        3
        (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))

(define (f-iter n)
       (define (f-help a b c count)
             (if (< count 0) 
               c
               (f-help b c (+ c (* 2 b) (* 3 a)) (- count 1))))
       (f-help 3 3 3 (- n 3)))
