;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13_11)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 - person
	)

  (:init
		(= (x b0) -2)
(= (y b0) 0)
(= (x b1) 2)
(= (y b1) 0)
(= (x b2) 10)
(= (y b2) 0)
(= (x b3) 4)
(= (y b3) 0)
(= (x b4) 1)
(= (y b4) 0)
(= (x b5) -7)
(= (y b5) 0)
(= (x b6) 9)
(= (y b6) 0)
(= (x b7) -8)
(= (y b7) 0)
(= (x b8) -6)
(= (y b8) 0)
(= (x b9) 4)
(= (y b9) 0)
(= (x b10) 9)
(= (y b10) 0)
(= (x b11) -10)
(= (y b11) 0)
(= (x b12) 4)
(= (y b12) 0)

		(= (d p0) 77)
(= (d p1) 32)
(= (d p2) 17)
(= (d p3) 35)
(= (d p4) 43)
(= (d p5) 7)
(= (d p6) 72)
(= (d p7) 57)
(= (d p8) 34)
(= (d p9) 31)
(= (d p10) 70)

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
(saved p9)
(saved p10)
		)
	)
)

