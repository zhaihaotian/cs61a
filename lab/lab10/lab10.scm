(define (over-or-under num1 num2)
  'YOUR-CODE-HERE
  (cond
    ((< num1 num2) -1)
    ((> num1 num2) 1)
    (else 0))
)

;;; Tests
(over-or-under 1 2)
; expect -1
(over-or-under 2 1)
; expect 1
(over-or-under 1 1)
; expect 0


(define (make-adder num)
  'YOUR-CODE-HERE
  (lambda (y) (+ num y))
)

;;; Tests
(define adder (make-adder 5))
(adder 8)
; expect 13


(define (composed f g)
  'YOUR-CODE-HERE
  (lambda (x) (f (g x)))
)


(define lst
  'YOUR-CODE-HERE
  (cons (cons 1 nil)
        (cons 2
              (cons (cons 3 (cons 4 nil))
                    (cons 5 nil))))
)


(define (remove item lst)
  (cond ((null? lst) '())  ; 如果列表为空，返回空列表
        ((equal? item (car lst)) (remove item (cdr lst)))  ; 如果当前元素等于item，跳过它
        (else (cons (car lst) (remove item (cdr lst))))))  ; 否则，包含当前元素，并递归处理剩余列表


;;; Tests
(remove 3 nil)
; expect ()
(remove 3 '(1 3 5))
; expect (1 5)
(remove 5 '(5 3 5 5 1 4 5 4))
; expect (3 1 4 4)

