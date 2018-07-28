(define div
  (lambda (n m)
    (cond
      ((< n m) 0)
      (else
       (add1 (div (- n m) m))))))
