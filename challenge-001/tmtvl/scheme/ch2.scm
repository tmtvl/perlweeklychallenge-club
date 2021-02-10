(import (rnrs (6))
		(srfi srfi-1))

;; We really don't do one-liners in Scheme, here's a one-sexp solution.
(for-each
 (lambda (i)
   (display
	(let fb ((divisor-strings '((5 "buzz") (3 "fizz")))
			 (result '()))
	  (cond ((and (null? divisor-strings)
				  (null? result))
			 i)
			((null? divisor-strings)
			 (apply string-append result))
			(else (fb (cdr divisor-strings)
					  (if (= (mod i (caar divisor-strings)) 0)
						  (cons (cadar divisor-strings) result)
						  result))))))
   (newline))
 (iota 20 1))
