(defun fibonacci (n)
    (if (or (= n 2) (= n 1)) ; a sequência inicia com 1 1
        1
        (let
            ( (ant (fibonacci (- n 1))) ; recebe anterior
              (atual (fibonacci (- n 2))) ); recebe atual
            (+ ant atual) ; calcula o próximo número
        )
    )
)

(format t "~D" (fibonacci 7))