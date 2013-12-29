(load "mk.scm")
(load "test-check.scm")

(test "run-1"
  (run 5 (q) (== q 5))
  '(5))

(test "run-3"
  (run 5 (a b c) (== 5 5))
  '((_.0 _.1 _.2)))

(test "run-4"
  (run 5 (a b c) (== a 5) (== b 6) (== c 6))
  '((5 6 6)))


(test "run*-1"
  (run* (q) (== q 5))
  '(5))

(test "run*-3"
  (run* (a b c) (== 5 5))
  '((_.0 _.1 _.2)))

(test "run*-4"
  (run* (a b c) (== a 5) (== b 6) (== c 6))
  '((5 6 6)))
