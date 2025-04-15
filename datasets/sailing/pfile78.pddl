;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11_12)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 - person
	)

  (:init
		(= (x b0) 10)
(= (y b0) 0)
(= (x b1) 10)
(= (y b1) 0)
(= (x b2) 8)
(= (y b2) 0)
(= (x b3) -8)
(= (y b3) 0)
(= (x b4) -7)
(= (y b4) 0)
(= (x b5) 2)
(= (y b5) 0)
(= (x b6) -3)
(= (y b6) 0)
(= (x b7) 0)
(= (y b7) 0)
(= (x b8) -7)
(= (y b8) 0)
(= (x b9) -6)
(= (y b9) 0)
(= (x b10) 1)
(= (y b10) 0)

		(= (d p0) 76)
(= (d p1) 19)
(= (d p2) 21)
(= (d p3) 2)
(= (d p4) 85)
(= (d p5) 76)
(= (d p6) 71)
(= (d p7) 74)
(= (d p8) 18)
(= (d p9) 0)
(= (d p10) 99)
(= (d p11) 7)

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
(saved p11)
		)
	)
)

