(defun conjuntoDasPartes(l)
  (if (null l)
    '(nil)
    (let ((ps (conjuntoDasPartes (cdr l))))
      (append ps (mapcar #'(lambda (x) (cons (car l) x)) ps)))))

(write(conjuntoDasPartes '(1 2 3 4)))