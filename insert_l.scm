(define insertL 
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ())) 
      (else (cond
        ((eq? (car lat) old) (cons new 
          (cons old (cdr lat)))) 
          (else (cons (car lat)
            (insertR new old (cdr lat)))))))))
