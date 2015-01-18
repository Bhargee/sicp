
(define (tree-map proc tree)
 (define (map proc items)
   (if (null? items)
       '()
       (cons (proc (car items))
             (map proc (cdr items)))))

 (map (lambda (subtree)
        (if (pair? subtree)
          (tree-map proc subtree)
          (proc subtree))) tree))

(define (square x) (* x x))
(define (square-tree tree)
  (tree-map square tree))

