;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10_16)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 - person
	)

  (:init
		(= (x b0) 6)
(= (y b0) 0)
(= (x b1) -3)
(= (y b1) 0)
(= (x b2) -8)
(= (y b2) 0)
(= (x b3) -10)
(= (y b3) 0)
(= (x b4) 6)
(= (y b4) 0)
(= (x b5) -7)
(= (y b5) 0)
(= (x b6) -7)
(= (y b6) 0)
(= (x b7) 1)
(= (y b7) 0)
(= (x b8) 0)
(= (y b8) 0)
(= (x b9) 6)
(= (y b9) 0)

		(= (d p0) 40)
(= (d p1) 14)
(= (d p2) 62)
(= (d p3) 90)
(= (d p4) 46)
(= (d p5) 45)
(= (d p6) 18)
(= (d p7) 12)
(= (d p8) 5)
(= (d p9) 73)
(= (d p10) 2)
(= (d p11) 24)
(= (d p12) 60)
(= (d p13) 79)
(= (d p14) 82)
(= (d p15) 50)

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
(saved p13)
(saved p14)
(saved p15)
		)
	)
)

