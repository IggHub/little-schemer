(define eqan?
  (lambda (n m)
    (cond
      ((and (number? n) (number? m)) (= n m))
      ((or (number? n) (number? m)) #f)
      (else
       (eq? n m)))))
