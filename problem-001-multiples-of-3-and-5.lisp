;; Find the sum of all the multiples of 3 or 5 below 1000.

;; is multiple of 3?
(defun is-multiple-of-3 (number)
  (= 0 (rem number 3)))

;; is multiple of 5?
(defun is-multiple-of-5 (number)
  (= 0 (rem number 5)))

;; is multiple of 3 or 5?
(defun is-multiple-of-3-or-5 (number)
  (if (is-multiple-of-3 number)
      t
      (is-multiple-of-5 number)))

;; take a number > 3.
;; if its a multiple of 3 or 5, add recursively to its previous multiple
(defun sum-of-multiples-of-3-or-5 (number)
  (if (= 3 number)
      number
      (if (is-multiple-of-3-or-5 number)
	  (+ number (sum-of-multiples-of-3-or-5 (- number 1)))
	  (+ 0 (sum-of-multiples-of-3-or-5 (- number 1))))))
