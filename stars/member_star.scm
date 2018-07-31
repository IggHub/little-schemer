(define member*
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      ((atom? (car lat))
       (or (eq? (car lat) a)
           (member* a (cdr lat))))
      (else
       (or (member* a (car lat)) (member* a (cdr lat)))))))
       
