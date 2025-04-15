;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10_13)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 - person
	)

  (:init
		(= (x b0) -1)
(= (y b0) 0)
(= (x b1) 2)
(= (y b1) 0)
(= (x b2) -1)
(= (y b2) 0)
(= (x b3) 1)
(= (y b3) 0)
(= (x b4) 4)
(= (y b4) 0)
(= (x b5) 7)
(= (y b5) 0)
(= (x b6) -2)
(= (y b6) 0)
(= (x b7) 3)
(= (y b7) 0)
(= (x b8) -3)
(= (y b8) 0)
(= (x b9) 8)
(= (y b9) 0)

		(= (d p0) 16)
(= (d p1) 70)
(= (d p2) 23)
(= (d p3) 79)
(= (d p4) 42)
(= (d p5) 13)
(= (d p6) 84)
(= (d p7) 53)
(= (d p8) 92)
(= (d p9) 95)
(= (d p10) 47)
(= (d p11) 84)
(= (d p12) 78)

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
(saved p12)
		)
	)
)

