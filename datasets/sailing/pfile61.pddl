;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13_10)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 - person
	)

  (:init
		(= (x b0) 10)
(= (y b0) 0)
(= (x b1) 1)
(= (y b1) 0)
(= (x b2) 0)
(= (y b2) 0)
(= (x b3) -9)
(= (y b3) 0)
(= (x b4) -2)
(= (y b4) 0)
(= (x b5) -10)
(= (y b5) 0)
(= (x b6) -6)
(= (y b6) 0)
(= (x b7) 4)
(= (y b7) 0)
(= (x b8) 0)
(= (y b8) 0)
(= (x b9) 4)
(= (y b9) 0)
(= (x b10) 10)
(= (y b10) 0)
(= (x b11) -6)
(= (y b11) 0)
(= (x b12) 0)
(= (y b12) 0)

		(= (d p0) 78)
(= (d p1) 45)
(= (d p2) 58)
(= (d p3) 27)
(= (d p4) 12)
(= (d p5) 93)
(= (d p6) 34)
(= (d p7) 77)
(= (d p8) 20)
(= (d p9) 18)

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
		)
	)
)

