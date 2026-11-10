(define (interes d)
  (cond
    [(<= d 40000) '3.5%_de_interés]
    [(<= d 260000) '4%_de_interés]
    [(> d 260000) '4.5%_de_interés]))