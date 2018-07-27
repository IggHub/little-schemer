(define multisubst
  (lambda (new old lat)
    (cond
      ((null? lat) (quote()))
      ((eq? (car lat) old) (cons new (multisubst new old (cdr lat))))
      (else
       (cons (car lat) (multisubst new old (cdr lat)))))))
