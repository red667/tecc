#lang scheme
(define (fib n)
  (letrec ((fib-aux (lambda (n a b)
    (if (= n 0)
        a
        (fib-aux (- n 1) b (+ a b))))))
  (fib-aux n 0 1)))

(define (sum-of-even-fibs limit i sum)
  (let ((cur (fib i)))
    (cond ((> cur 4000000) sum)
         ((if (even? cur) 
              (sum-of-even-fibs limit (+ 1 i) (+ cur sum))
              (sum-of-even-fibs limit (+ 1 i) sum))))))

(print (sum-of-even-fibs 4000000 1 0))