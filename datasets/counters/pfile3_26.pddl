;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3_100)
	(:domain fo-counters-rnd)
	(:objects
		c0 c1 c2 - counter
	)
  (:init
		(= (value c0) 63)
	(= (value c1) 85)
	(= (value c2) 17)

        (= (rate_value c0) 0)
	(= (rate_value c1) 0)
	(= (rate_value c2) 0)

		(= (max_int) 100)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
	(<= (+ (value c1) 1) (value c2))
		)
	)
)

