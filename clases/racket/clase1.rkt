#lang racket
(define (long_circ r)
  (* 2 (* r pi))
)

(define (area_t b h)
  (/ (* b h) 2)
  )

(define (dist_dosp x1 y1 x2 y2)
  (sqrt (+ (expt (- x2 x1) 2) (expt (- y2 y1) 2)))
)

(define (cuad_perf b)
  (integer? (sqrt b))
)

(define (dentro_delint x)
  (or (and (> x 1) (< x 3)) (and (> x 9) (< x 11)))
)

(define (interes d)
  (cond
    [(<= d 40000) '3.5%_de_interés]
    [(<= d 260000) '4%_de_interés]
    [(> d 260000) '4.5%_de_interés]))