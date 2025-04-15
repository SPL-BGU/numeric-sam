;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14_5)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 - boat
		p0 p1 p2 p3 p4 - person
	)

  (:init
		(= (x b0) -8)
(= (y b0) 0)
(= (x b1) 9)
(= (y b1) 0)
(= (x b2) -5)
(= (y b2) 0)
(= (x b3) -8)
(= (y b3) 0)
(= (x b4) 0)
(= (y b4) 0)
(= (x b5) -5)
(= (y b5) 0)
(= (x b6) 0)
(= (y b6) 0)
(= (x b7) -10)
(= (y b7) 0)
(= (x b8) -6)
(= (y b8) 0)
(= (x b9) 6)
(= (y b9) 0)
(= (x b10) 6)
(= (y b10) 0)
(= (x b11) 7)
(= (y b11) 0)
(= (x b12) -10)
(= (y b12) 0)
(= (x b13) 8)
(= (y b13) 0)

		(= (d p0) 45)
(= (d p1) 17)
(= (d p2) 9)
(= (d p3) 90)
(= (d p4) 58)

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

