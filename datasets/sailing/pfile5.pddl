;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12_11)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 - person
	)

  (:init
		(= (x b0) 7)
(= (y b0) 0)
(= (x b1) 5)
(= (y b1) 0)
(= (x b2) 9)
(= (y b2) 0)
(= (x b3) 10)
(= (y b3) 0)
(= (x b4) -10)
(= (y b4) 0)
(= (x b5) 4)
(= (y b5) 0)
(= (x b6) -6)
(= (y b6) 0)
(= (x b7) -2)
(= (y b7) 0)
(= (x b8) 10)
(= (y b8) 0)
(= (x b9) 8)
(= (y b9) 0)
(= (x b10) 5)
(= (y b10) 0)
(= (x b11) 6)
(= (y b11) 0)

		(= (d p0) 44)
(= (d p1) 5)
(= (d p2) 19)
(= (d p3) 63)
(= (d p4) 62)
(= (d p5) 17)
(= (d p6) 45)
(= (d p7) 37)
(= (d p8) 63)
(= (d p9) 17)
(= (d p10) 9)

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

