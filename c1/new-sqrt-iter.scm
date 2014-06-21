(load "improve.scm")
(load "average.scm")
(load "new-good-enough.scm")

(define (sqrt-iter guess x)
	(if (new-good-enough? guess (improve guess x))
		guess ; or (improve guess x)
		(sqrt-iter (improve guess x)
			x)))
