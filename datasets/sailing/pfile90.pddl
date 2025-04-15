;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13_8)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 - person
	)

  (:init
		(= (x b0) -7)
(= (y b0) 0)
(= (x b1) -8)
(= (y b1) 0)
(= (x b2) 9)
(= (y b2) 0)
(= (x b3) -8)
(= (y b3) 0)
(= (x b4) -8)
(= (y b4) 0)
(= (x b5) 3)
(= (y b5) 0)
(= (x b6) 6)
(= (y b6) 0)
(= (x b7) -8)
(= (y b7) 0)
(= (x b8) -6)
(= (y b8) 0)
(= (x b9) 5)
(= (y b9) 0)
(= (x b10) -7)
(= (y b10) 0)
(= (x b11) 8)
(= (y b11) 0)
(= (x b12) 5)
(= (y b12) 0)

		(= (d p0) 23)
(= (d p1) 68)
(= (d p2) 38)
(= (d p3) 92)
(= (d p4) 98)
(= (d p5) 12)
(= (d p6) 58)
(= (d p7) 19)

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
		)
	)
)

