;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13_6)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - boat
		p0 p1 p2 p3 p4 p5 - person
	)

  (:init
		(= (x b0) 3)
(= (y b0) 0)
(= (x b1) -10)
(= (y b1) 0)
(= (x b2) 0)
(= (y b2) 0)
(= (x b3) -2)
(= (y b3) 0)
(= (x b4) 5)
(= (y b4) 0)
(= (x b5) 6)
(= (y b5) 0)
(= (x b6) 5)
(= (y b6) 0)
(= (x b7) 7)
(= (y b7) 0)
(= (x b8) 1)
(= (y b8) 0)
(= (x b9) 4)
(= (y b9) 0)
(= (x b10) -7)
(= (y b10) 0)
(= (x b11) -6)
(= (y b11) 0)
(= (x b12) -5)
(= (y b12) 0)

		(= (d p0) 13)
(= (d p1) 74)
(= (d p2) 83)
(= (d p3) 45)
(= (d p4) 56)
(= (d p5) 34)

	)

	(:goal
		(and
			(saved p0)
(saved p1)
(saved p2)
(saved p3)
(saved p4)
(saved p5)
		)
	)
)

