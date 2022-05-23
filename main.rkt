#lang racket

(for/or ([i 1000000])
  (define prgen (make-pseudo-random-generator))
  (define init-pregen-vec (pseudo-random-generator->vector prgen))
  (cond
    [(for/or ([x init-pregen-vec]) (not (integer? x)))
     (println prgen)
     (println init-pregen-vec)
     #t]
    [else #f]))
