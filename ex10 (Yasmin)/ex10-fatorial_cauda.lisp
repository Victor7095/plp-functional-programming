; N funciona como um contador decrescente e P funciona como um acumulador. Quando N = 1, P já tem o valor do fatorial do N inicial, ou seja, não é preciso desempilhar as chamadas recursivas

(defun fatorial_aux (n p)
    (if (= n 1)        
        p
        (let
          ( (n2 (- n 1)) ; decrementa n
            (p2 (* p n)) ); acumula fatorial em p
          (fatorial_aux n2 p2)
        )
    )
)

(defun fatorial_cauda (n)
    (fatorial_aux n 1)
)

(format t "~D" (fatorial_cauda 5))