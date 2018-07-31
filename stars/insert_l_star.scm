(define insertL*
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      ((atom? (car lat))
       (cond
         ((eq? (car lat) old)
          (cons new (cons old (insertL* new old (cdr lat)))))
         (else
          (cons (car lat) (insertL* new old (cdr lat))))))
      (else
       (cons (insertL* new old (car lat)) (insertL* new old (cdr lat)))))))
