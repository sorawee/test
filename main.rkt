#lang racket

(for ([i (in-range 2 35)])
  (for ([j 100])
    (define a (* (expt 2 i) (random 10000000)))
    (define b (expt 2 i))
    (println (list a b (/ a b))))
  (newline))
