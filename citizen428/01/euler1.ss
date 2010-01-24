#lang scheme
(define (3-or-5 limit)
  (3-or-5-helper limit 0 0))
 
(define (3-or-5-helper limit start sum)
  (cond ((= limit start) sum)
        ((or (= (remainder start 3) 0)
            (= (remainder start 5) 0))
                (3-or-5-helper limit (+ 1 start) (+ start sum)))
        (else (3-or-5-helper limit (+ 1 start) sum))))

(3-or-5 1000)

