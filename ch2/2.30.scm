(define (map proc items)
  (if (null? items)
      '()
      (cons (proc (car items))
            (map proc (cdr items)))))

(define (square-tree-rec tree)
  (define (square x) (* x x))
  (cond
    ((null? tree) '())
    ((pair? (car tree)) (cons (square-tree-rec (car tree))
                              (square-tree-rec (cdr tree))))
    (else (cons (square (car tree)) (square-tree-rec (cdr tree))))))

(define (square-tree-map tree)
  (map (lambda (subtree)
         (if (pair? subtree)
           (square-tree-map subtree)
           (* subtree subtree))) tree))


