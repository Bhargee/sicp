(define (make-mobile left right)
  (list left right))

(define (make-branch len structure)
  (list len structure))

(define left-branch car)
(define (right-branch br)
  (car (cdr br)))

(define branch-length left-branch)
(define branch-structure right-branch)

(define (total-weight mobile)
  (let ((lb (left-branch mobile)) 
        (rb (right-branch mobile)))
    (cond
      ((and (not (pair? branch-structure lb)) 
            (not (pair? branch-structure rb)))
       (+ (* (branch-structure lb) (branch-length lb))
          (* (branch-structure rb) (branch-length rb))))
      ((not (pair? branch-structure lb))
       (+ (* (branch-structure lb) (branch-length lb))
          (total-weight rb)))
      (


