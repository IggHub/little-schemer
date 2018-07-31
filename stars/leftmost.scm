(define leftmost
  (lambda (lat)
    (cond
      ((atom? (car lat)) (car lat))
      (else
       (leftmost (car lat))))))
