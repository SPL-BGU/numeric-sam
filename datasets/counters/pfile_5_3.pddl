(define (problem instance_5_3)
  (:domain fo-counters-rnd)
  (:objects

    c0 c1 c2 c3 c4  - counter
  )

  (:init
    
    (= (max_int) 10)
        (= (value c0) 0)
        (= (value c1) 1)
        (= (value c2) 8)
        (= (value c3) 4)
        (= (value c4) 4)

        (= (rate_value c0) 0)
        (= (rate_value c1) 0)
        (= (rate_value c2) 0)
        (= (rate_value c3) 0)
        (= (rate_value c4) 0)
    )

  (:goal (and

    (<= (+ (value c0) 1) (value c1))
    (<= (+ (value c1) 1) (value c2))
    (<= (+ (value c2) 1) (value c3))
    (<= (+ (value c3) 1) (value c4))))
)