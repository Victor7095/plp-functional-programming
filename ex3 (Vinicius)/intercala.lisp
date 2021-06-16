(defvar list1 '(1 3 5 7 9))
(defvar list2 '(2 4 6))

(defun intercala (list1 list2)
    (if (> (length list1) (length list2))
        (print-list list1 list2)
        (print-list list2 list1)))

(defun print-list (elements1 elements2)
    (cond
        ((null elements1) '()) 
        (t
            (if (car elements1)
            (write-line (write-to-string (car elements1))))
            (if (car elements2)
            (write-line (write-to-string (car elements2))))

            (print-list (cdr elements1) (cdr elements2))
        )
    )
)

(intercala list1 list2)