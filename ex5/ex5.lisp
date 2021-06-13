
(defun intersecao (list_a list_b &aux result)
  (dolist (a list_a (nreverse result))        ; for a in list_a
    (dolist (b list_b)                        ; for b in list_b
      (when (equal a b)                       ; if a == b
        (push a result)))))                   ; result.append(a)
(write-line(write-to-string(intersecao '(3 6 5 7) '(9 7 5 1 3))))

; sbcl --script ex5.lisp