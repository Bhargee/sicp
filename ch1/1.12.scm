; generates the elements of the pascal triangle at row and col (0 indexed)
(define (pascal-tri-rec row col)
      (cond ((= 0 col) 1)
            ((= 0 row) 0)
            (else (+ (pascal-tri-rec (- row 1) col) (pascal-tri-rec (- row 1) (- col 1))))))
