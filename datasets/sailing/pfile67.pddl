;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12_5)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 - boat
		p0 p1 p2 p3 p4 - person
	)

  (:init
		(= (x b0) 10)
(= (y b0) 0)
(= (x b1) -5)
(= (y b1) 0)
(= (x b2) 1)
(= (y b2) 0)
(= (x b3) -8)
(= (y b3) 0)
(= (x b4) 0)
(= (y b4) 0)
(= (x b5) -1)
(= (y b5) 0)
(= (x b6) -9)
(= (y b6) 0)
(= (x b7) 2)
(= (y b7) 0)
(= (x b8) 2)
(= (y b8) 0)
(= (x b9) -3)
(= (y b9) 0)
(= (x b10) 7)
(= (y b10) 0)
(= (x b11) -4)
(= (y b11) 0)

		(= (d p0) 49)
(= (d p1) 74)
(= (d p2) 35)
(= (d p3) 63)
(= (d p4) 49)

	)

	(:goal
		(and
			(saved p0)
(saved p1)
(saved p2)
(saved p3)
(saved p4)
		)
	)
)

