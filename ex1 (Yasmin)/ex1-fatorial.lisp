(defun fatorial (n)
    (if (= n 1) ; caso base: n = 1              
        1                           
        (* n (fatorial (- n 1))) ; recorrência: n*fatorial(n-1)
    )
)

(format t "~D" (fatorial 5))