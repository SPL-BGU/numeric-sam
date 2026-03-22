;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9_3)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 - boat
		p0 p1 p2 - person
	)

  (:init
		(= (x b0) -8)
(= (y b0) 0)
(= (x b1) 1)
(= (y b1) 0)
(= (x b2) -7)
(= (y b2) 0)
(= (x b3) 4)
(= (y b3) 0)
(= (x b4) 6)
(= (y b4) 0)
(= (x b5) 10)
(= (y b5) 0)
(= (x b6) -6)
(= (y b6) 0)
(= (x b7) -10)
(= (y b7) 0)
(= (x b8) -8)
(= (y b8) 0)

		(= (d p0) 326)
(= (d p1) 187)
(= (d p2) 121)

	)

	(:goal
		(and
			(saved p0)
(saved p1)
(saved p2)
		)
	)
)

