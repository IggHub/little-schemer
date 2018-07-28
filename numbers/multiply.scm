(define mult
  (lambda (n m)
    (cond
      ((zero? m) 0)
      (else (+ n (mult n (sub1 m)))))))
