(define (pascal row col)
	(cond ((< row col) (display "invalid col value"))
		((or (= row col) (= col 0)) 1)
		(else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))
	)
) 

; (row col) = (row!) / (col!)*(row−col)!
(define (pascal1 row col)
	(/ (factorial row) (* (factorial col) (factorial (- row col)))))

(define (factorial n)
	(fact-iter 1 1 n))

(define (fact-iter pro counter n)
	(if (> counter n) 
		pro
		(fact-iter (* pro counter)
			(+ 1 counter)
			n)))
	
