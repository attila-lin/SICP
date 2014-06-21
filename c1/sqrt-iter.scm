(load "improve.scm")
(load "average.scm")
(load "good-enough.scm")

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x)
			x)))
