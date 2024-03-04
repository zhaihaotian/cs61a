(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  'YOUR-CODE-HERE
  (car (cdr s))
)

(define (caddr s)
  'YOUR-CODE-HERE
  (car (cddr s))
)


(define (sign num)
  'YOUR-CODE-HERE
  (cond
    ((< num 0) -1)
    ((> num 0) 1)
    (else 0)
    )
)


(define (square x) (* x x))

(define (pow x y)
  (cond
    ((= y 0) 1)
    ((= y 1) x)
    ((even? y) (let ((result (pow x (/ y 2))))
                 (* result result)))  ; 计算 (x^(y/2))^2
    (else (* x (pow x (- y 1))))))

