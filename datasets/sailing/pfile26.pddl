;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11_17)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 - person
	)

  (:init
		(= (x b0) -6)
(= (y b0) 0)
(= (x b1) -1)
(= (y b1) 0)
(= (x b2) 6)
(= (y b2) 0)
(= (x b3) 1)
(= (y b3) 0)
(= (x b4) 5)
(= (y b4) 0)
(= (x b5) -2)
(= (y b5) 0)
(= (x b6) -6)
(= (y b6) 0)
(= (x b7) -1)
(= (y b7) 0)
(= (x b8) 7)
(= (y b8) 0)
(= (x b9) -8)
(= (y b9) 0)
(= (x b10) 3)
(= (y b10) 0)

		(= (d p0) 39)
(= (d p1) 45)
(= (d p2) 56)
(= (d p3) 61)
(= (d p4) 73)
(= (d p5) 56)
(= (d p6) 27)
(= (d p7) 79)
(= (d p8) 18)
(= (d p9) 61)
(= (d p10) 45)
(= (d p11) 63)
(= (d p12) 60)
(= (d p13) 32)
(= (d p14) 81)
(= (d p15) 14)
(= (d p16) 14)

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
(saved p16)
		)
	)
)

