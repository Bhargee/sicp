(define (fringe t)
  (cond
    ((not (list? t)) (list t))
    ((null? t) t)
    (else (append (fringe (car t)) (fringe (cdr t))))))

(define test '((1 2) (2 3) (3 4)))
(fringe test)

(define (fringe t)
  (define (fringe-tr subtree curr)
    (cond
      ((null? subtree) curr)
      ((list? subtree) (fringe-tr (car subtree) (fringe-tr (cdr subtree) curr)))
      (else (cons subtree curr))))
  (fringe-tr t '()))

(fringe (list test test))
