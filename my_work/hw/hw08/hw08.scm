(define (ascending? s) 
    (if (or (null? s) (null? (cdr s)))
      #t
      (and (<= (car s) (car (cdr s))) (ascending? (cdr s))))
)

(define (my-filter pred s) 
    (cond   ((null? s)  nil)
            ((pred (car s)) (cons (car s ) (my-filter pred (cdr s))))
            (else (my-filter pred (cdr s)))     
    )
)

(define (interleave lst1 lst2) 
    (cond 
    ((and (null? lst1) (null? lst2)) nil)
    ((null? lst1)                    (cons (car lst2) (interleave lst1 (cdr lst2))))   
    ((null? lst2)                    (cons (car lst1) (interleave (cdr lst1) lst2)))
    (else       (cons (car lst1) (cons (car lst2) (interleave (cdr lst1) (cdr lst2)  )     ))                                                   )
    )
    
)

(define (no-repeats s) 
  (if (null? s) 
    s
    (cons (car s)
      (no-repeats (filter (lambda (x) (not (= (car s) x))) (cdr s)))
    )
  )

)

