;; define counter variable

(define-data-var counter int 0)

(define-public (get-counter)
 (ok (var-get counter)))

(define-public (increment)
  (begin
    (var-set counter (+ (var-get counter) 1))
      (ok (var-get counter))))

(define-public (decrement)
  (begin
    (var-set counter (- (var-get counter) 1))
      (ok (var-get counter))))
