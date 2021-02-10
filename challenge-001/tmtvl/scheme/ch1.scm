(import (rnrs (6)))

(let replace-and-count ((characters (string->list "Perl Weekly Challenge"))
						(new-characters '())
						(replaced 0))
  (cond ((null? characters)
		 (format #t
				 "Result: \"~a\"\nReplaced ~a characters.\n"
				 (list->string (reverse new-characters))
				 replaced))
		((eq? (car characters) #\e)
		 (replace-and-count (cdr characters)
							(cons #\E new-characters)
							(+ replaced 1)))
		(else (replace-and-count (cdr characters)
								 (cons (car characters)
									   new-characters)
								 replaced))))
