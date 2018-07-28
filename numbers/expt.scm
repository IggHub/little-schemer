(define expt 
  (lambda (n m)
    (cond
      ((zero? m) 1)
      (else
       (* n (expt n (sub1 m)))))))
