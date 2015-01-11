(define (deep-reverse l)
  (let 
    ((head (car l))
     (rest (cdr l)))
      (cond
        ((null? rest) 
            (if (list? head) 
              (list (deep-reverse head))
              (list head)))
        ((list? head) (append (deep-reverse rest) (list (deep-reverse head))))
        (else (append (deep-reverse rest) (list head))))))


