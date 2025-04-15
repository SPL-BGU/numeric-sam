;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10_4)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - boat
		p0 p1 p2 p3 - person
	)

  (:init
		(= (x b0) 5)
(= (y b0) 0)
(= (x b1) -5)
(= (y b1) 0)
(= (x b2) 2)
(= (y b2) 0)
(= (x b3) -8)
(= (y b3) 0)
(= (x b4) -10)
(= (y b4) 0)
(= (x b5) 0)
(= (y b5) 0)
(= (x b6) 1)
(= (y b6) 0)
(= (x b7) -7)
(= (y b7) 0)
(= (x b8) 1)
(= (y b8) 0)
(= (x b9) 6)
(= (y b9) 0)

		(= (d p0) 49)
(= (d p1) 14)
(= (d p2) 81)
(= (d p3) 35)

	)

	(:goal
		(and
			(saved p0)
(saved p1)
(saved p2)
(saved p3)
		)
	)
)

