(define greaterthan
  (lambda (n m)
    (cond
      ((zero? n) #f)
      ((zero? m) #t)
      (else (greaterthan (sub1 n) (sub1 m))))))
