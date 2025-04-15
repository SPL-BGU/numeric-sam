;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12_11)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 - person
	)

  (:init
		(= (x b0) -4)
(= (y b0) 0)
(= (x b1) 6)
(= (y b1) 0)
(= (x b2) -2)
(= (y b2) 0)
(= (x b3) 9)
(= (y b3) 0)
(= (x b4) 10)
(= (y b4) 0)
(= (x b5) 5)
(= (y b5) 0)
(= (x b6) 4)
(= (y b6) 0)
(= (x b7) 9)
(= (y b7) 0)
(= (x b8) 2)
(= (y b8) 0)
(= (x b9) 3)
(= (y b9) 0)
(= (x b10) 2)
(= (y b10) 0)
(= (x b11) -5)
(= (y b11) 0)

		(= (d p0) 24)
(= (d p1) 39)
(= (d p2) 68)
(= (d p3) 96)
(= (d p4) 69)
(= (d p5) 52)
(= (d p6) 14)
(= (d p7) 43)
(= (d p8) 88)
(= (d p9) 92)
(= (d p10) 20)

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

