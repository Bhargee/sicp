(define (reverse l)
  (define (reverse-tr l acc)
    (if (null? l)
        acc
        (reverse-tr (cdr l) (cons (car l) acc))))
  (reverse-tr l '()))
