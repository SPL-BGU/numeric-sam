;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_100)
	(:domain fo-counters-rnd)
	(:objects
		c0 c1 c2 c3 - counter
	)
  (:init
		(= (value c0) 34)
	(= (value c1) 35)
	(= (value c2) 38)
	(= (value c3) 67)

        (= (rate_value c0) 0)
	(= (rate_value c1) 0)
	(= (rate_value c2) 0)
	(= (rate_value c3) 0)

		(= (max_int) 100)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
	(<= (+ (value c1) 1) (value c2))
	(<= (+ (value c2) 1) (value c3))
		)
	)
)

