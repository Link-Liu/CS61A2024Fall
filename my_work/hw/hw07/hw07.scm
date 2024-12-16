(define (square n) (* n n))

(define (pow base exp)
  (cond 
    ((= exp 1) base) 
    ((even? exp) (pow (square base) (/ exp 2)))
    (else (* base (pow (square base) (/ (- exp 1) 2))))
  ) 
)

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let ((y (repeatedly-cube (- n 1) x)))
        (* y y y))))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))
