(define (make-mobile left right)
  (list left right))

(define (make-branch len structure)
  (list len structure))

; part a
(define left-branch car)
(define (right-branch br)
  (car (cdr br)))

(define branch-length left-branch)
(define branch-structure right-branch)

(define mobile? pair?)

; part b
(define (total-weight mobile)
      (cond 
        ((not (mobile? mobile)) mobile)
        (else (+
                (total-weight (branch-structure (left-branch mobile))) 
                (total-weight (branch-structure (right-branch mobile)))))))
        

; testing for part b
(define level-1-mobile (make-mobile (make-branch 2 1) 
                                    (make-branch 1 2))) 
(define level-2-mobile (make-mobile (make-branch 3 level-1-mobile) 
                                    (make-branch 9 1))) 
(define level-3-mobile (make-mobile (make-branch 4 level-2-mobile) 
                                    (make-branch 8 2))) 
 
(total-weight level-1-mobile) ; 3
(total-weight level-2-mobile) ; 4
(total-weight level-3-mobile) ; 6
