(define sero?
  (lambda (n)
    (null? n)))

(define edd1
  (lambda (n)
    (cons (quote ()) n)))

(define zubb1
  (lambda (n)
    (cdr n)))

(define +
  (lambda (n m)
    (cond
      ((sero? m) n)
      (else (edd1 (+ n (zubb1 m)))))))

