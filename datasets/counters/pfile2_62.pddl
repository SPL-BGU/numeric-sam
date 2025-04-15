;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2_100)
	(:domain fo-counters-rnd)
	(:objects
		c0 c1 - counter
	)
  (:init
		(= (value c0) 41)
	(= (value c1) 1)

        (= (rate_value c0) 0)
	(= (rate_value c1) 0)

		(= (max_int) 100)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
		)
	)
)

