(define occur*
  (lambda (a lat)
    (cond
      ((null? lat) 0)
      ((atom? (car lat))
       (cond
         ((eq? a (car lat))
          (add1 (occur* a (cdr lat))))
         (else
          (occur* a (cdr lat)))))
      (else
       (+ (occur* a (car lat)) (occur* a (cdr lat)))))))
