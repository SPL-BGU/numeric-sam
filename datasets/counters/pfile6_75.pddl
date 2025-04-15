;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_100)
	(:domain fo-counters-rnd)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
	)
  (:init
		(= (value c0) 59)
	(= (value c1) 48)
	(= (value c2) 99)
	(= (value c3) 10)
	(= (value c4) 53)
	(= (value c5) 35)

        (= (rate_value c0) 0)
	(= (rate_value c1) 0)
	(= (rate_value c2) 0)
	(= (rate_value c3) 0)
	(= (rate_value c4) 0)
	(= (rate_value c5) 0)

		(= (max_int) 100)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
	(<= (+ (value c1) 1) (value c2))
	(<= (+ (value c2) 1) (value c3))
	(<= (+ (value c3) 1) (value c4))
	(<= (+ (value c4) 1) (value c5))
		)
	)
)

