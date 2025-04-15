;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12_9)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 - person
	)

  (:init
		(= (x b0) -3)
(= (y b0) 0)
(= (x b1) -8)
(= (y b1) 0)
(= (x b2) -2)
(= (y b2) 0)
(= (x b3) -2)
(= (y b3) 0)
(= (x b4) 1)
(= (y b4) 0)
(= (x b5) 2)
(= (y b5) 0)
(= (x b6) 0)
(= (y b6) 0)
(= (x b7) 0)
(= (y b7) 0)
(= (x b8) -5)
(= (y b8) 0)
(= (x b9) -8)
(= (y b9) 0)
(= (x b10) 2)
(= (y b10) 0)
(= (x b11) -2)
(= (y b11) 0)

		(= (d p0) 58)
(= (d p1) 79)
(= (d p2) 87)
(= (d p3) 9)
(= (d p4) 66)
(= (d p5) 99)
(= (d p6) 44)
(= (d p7) 18)
(= (d p8) 24)

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
		)
	)
)

