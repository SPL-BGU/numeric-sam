;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10_12)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 - person
	)

  (:init
		(= (x b0) 0)
(= (y b0) 0)
(= (x b1) 3)
(= (y b1) 0)
(= (x b2) 9)
(= (y b2) 0)
(= (x b3) 1)
(= (y b3) 0)
(= (x b4) 7)
(= (y b4) 0)
(= (x b5) -7)
(= (y b5) 0)
(= (x b6) 8)
(= (y b6) 0)
(= (x b7) 0)
(= (y b7) 0)
(= (x b8) 5)
(= (y b8) 0)
(= (x b9) -10)
(= (y b9) 0)

		(= (d p0) 2)
(= (d p1) 8)
(= (d p2) 66)
(= (d p3) 36)
(= (d p4) 100)
(= (d p5) 13)
(= (d p6) 24)
(= (d p7) 50)
(= (d p8) 85)
(= (d p9) 55)
(= (d p10) 19)
(= (d p11) 54)

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

