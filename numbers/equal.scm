(define equal
  (lambda (n m)
    (cond
      ((zero? n) (zero? m))
      (else
       (equal (sub1 n) (sub1 m))))))
