(define (new-good-enough? new-guess old-guess)
	; 当改变值相对猜测值的比率很小时结束
	(> 0.001 (/ (abs (- new-guess old-guess)) old-guess)))