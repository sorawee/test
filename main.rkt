#lang racket

5177441341407232/1073741824

(/ 5177441341407232 1073741824)

(define cnt 0)
(for ([i 1000000])
  #:break (= cnt 5)
  (define prgen (make-pseudo-random-generator))
  (define init-pregen-vec (pseudo-random-generator->vector prgen))
  (when (for/or ([x init-pregen-vec]) (not (integer? x)))
    (set! cnt (add1 cnt))
    (println (list i init-pregen-vec))))
