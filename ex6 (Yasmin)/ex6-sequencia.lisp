(defun sequencia (n m)
    (let (lista) ; declara uma lista
        (dotimes (i n (nreverse lista)) ; de i=0 a i=n na lista invertida
            (setf num (+ m i)) ; num = m + i
            (push num lista) ; empurra num para o início da lista
        )
    )
)

(write(sequencia 5 7))