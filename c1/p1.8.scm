(define (cuberoot x) 
	(define (good-enough? o-guess n-guess)
		(< 0.001 (/ (abs (- o-guess n-guess)))))
	(define (square x) (* x x))
	(define (improve guess x)
		(/ (+ (/ x (square guess)) (* 2 guess)) 3))
	(define (cuberoot-iter guess x)
		(let ((n-guess (improve guess x)))
			(if (good-enough? guess n-guess)
				n-guess
				(cuberoot-iter n-guess x))))
	(cuberoot-iter 1.0 x))

