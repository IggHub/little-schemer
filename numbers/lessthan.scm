(define lessthan
  (lambda (n m)
    (cond
      ((zero? m) #f)
      ((zero? n) #t)
      (else
       (lessthan (sub1 n) (sub1 m))))))
