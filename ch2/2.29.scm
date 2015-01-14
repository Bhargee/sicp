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
      ((not (mobile? (branch-structure mobile))) (branch-structure mobile)) 
      (else (+ 
              (total-weight (left-branch mobile))
              (total-weight (right-branch mobile))))))


