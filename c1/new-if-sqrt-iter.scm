(load "improve.scm")
(load "average.scm")
(load "good-enough.scm")

(define (new-if-sqrt-iter guess x)
	(new-if (good-enough? guess x)
		guess
		(new-if-sqrt-iter (improve guess x)
			x)))