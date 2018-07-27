(define subst2
  (lambda (new o1 o2 lat)
    (cond
      ((null? lat) (quote()))
      (else (cond
             ((eq? o1 (car lat)) (cons new (cdr lat)))
             ((eq? o2 (car lat)) (cons new (cdr lat)))
             (else (cons (car lat) (subst2 new o1 o2 (cdr lat)))))))))

#; alternatively, we can simplify with or 

(define subst2
  (lambda (new o1 o2 lat)
    (cond
      ((null? lat) (quote()))
      (else (cond
             ((or (eq? (car lat) o1) (eq? (car lat) o2)) (cons new (cdr lat)))
             (else (cons (car lat) (subst2 new o1 o2 (cdr lat)))))))))
