;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11_3)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - boat
		p0 p1 p2 - person
	)

  (:init
		(= (x b0) -3)
(= (y b0) 0)
(= (x b1) -7)
(= (y b1) 0)
(= (x b2) 9)
(= (y b2) 0)
(= (x b3) -10)
(= (y b3) 0)
(= (x b4) 5)
(= (y b4) 0)
(= (x b5) 5)
(= (y b5) 0)
(= (x b6) 1)
(= (y b6) 0)
(= (x b7) 8)
(= (y b7) 0)
(= (x b8) -6)
(= (y b8) 0)
(= (x b9) -9)
(= (y b9) 0)
(= (x b10) -2)
(= (y b10) 0)

		(= (d p0) 34)
(= (d p1) 85)
(= (d p2) 80)

	)

	(:goal
		(and
			(saved p0)
(saved p1)
(saved p2)
		)
	)
)

