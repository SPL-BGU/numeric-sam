;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8_100)
	(:domain fo-counters-rnd)
	(:objects
		c0 c1 c2 c3 c4 c5 c6 c7 - counter
	)
  (:init
		(= (value c0) 100)
	(= (value c1) 88)
	(= (value c2) 68)
	(= (value c3) 43)
	(= (value c4) 97)
	(= (value c5) 36)
	(= (value c6) 98)
	(= (value c7) 55)

        (= (rate_value c0) 0)
	(= (rate_value c1) 0)
	(= (rate_value c2) 0)
	(= (rate_value c3) 0)
	(= (rate_value c4) 0)
	(= (rate_value c5) 0)
	(= (rate_value c6) 0)
	(= (rate_value c7) 0)

		(= (max_int) 100)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
	(<= (+ (value c1) 1) (value c2))
	(<= (+ (value c2) 1) (value c3))
	(<= (+ (value c3) 1) (value c4))
	(<= (+ (value c4) 1) (value c5))
	(<= (+ (value c5) 1) (value c6))
	(<= (+ (value c6) 1) (value c7))
		)
	)
)

