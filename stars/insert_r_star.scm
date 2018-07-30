(define insertR*
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      ((atom? (car lat))
       (cond
         ((eq? old (car lat))
          (cons old (cons new (insertR* new old (cdr lat)))))
         (else
          (cons (car lat) (insertR* new old (cdr lat))))))
      (else
       (cons (insertR* new old (car lat)) (insertR* new old (cdr lat)))))))
