(define revrel
  (lambda (rel)
    (cond
      ((null? rel) (quote ()))
      (else (cons (build
                   (second (car rel))
                   (first (car rel)))
                  (revrel (cdr rel)))))))
