;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13_9)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 - person
	)

  (:init
		(= (x b0) -1)
(= (y b0) 0)
(= (x b1) 8)
(= (y b1) 0)
(= (x b2) -9)
(= (y b2) 0)
(= (x b3) -9)
(= (y b3) 0)
(= (x b4) 6)
(= (y b4) 0)
(= (x b5) -7)
(= (y b5) 0)
(= (x b6) -10)
(= (y b6) 0)
(= (x b7) 5)
(= (y b7) 0)
(= (x b8) -4)
(= (y b8) 0)
(= (x b9) -10)
(= (y b9) 0)
(= (x b10) -8)
(= (y b10) 0)
(= (x b11) 7)
(= (y b11) 0)
(= (x b12) -6)
(= (y b12) 0)

		(= (d p0) 85)
(= (d p1) 24)
(= (d p2) 83)
(= (d p3) 73)
(= (d p4) 88)
(= (d p5) 66)
(= (d p6) 65)
(= (d p7) 7)
(= (d p8) 46)

	)

	(:goal
		(and
			(saved p0)
(saved p1)
(saved p2)
(saved p3)
(saved p4)
(saved p5)
(saved p6)
(saved p7)
(saved p8)
		)
	)
)

