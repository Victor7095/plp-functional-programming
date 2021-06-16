(defvar list1 '(1 4 5 7 9))
(defvar list2 '(1 4 6))

(defvar uni (union list1 list2))

(defun print-list (elements)
    (cond
        ((null elements) '()) 
        (t
            (write-line (write-to-string (car elements)))

            (print-list (cdr elements)))))

(print-list uni)
