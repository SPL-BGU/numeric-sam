;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15_4)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 - boat
		p0 p1 p2 p3 - person
	)

  (:init
		(= (x b0) 1)
(= (y b0) 0)
(= (x b1) -7)
(= (y b1) 0)
(= (x b2) 2)
(= (y b2) 0)
(= (x b3) -4)
(= (y b3) 0)
(= (x b4) 0)
(= (y b4) 0)
(= (x b5) 4)
(= (y b5) 0)
(= (x b6) 8)
(= (y b6) 0)
(= (x b7) -3)
(= (y b7) 0)
(= (x b8) 2)
(= (y b8) 0)
(= (x b9) -8)
(= (y b9) 0)
(= (x b10) 5)
(= (y b10) 0)
(= (x b11) 3)
(= (y b11) 0)
(= (x b12) -5)
(= (y b12) 0)
(= (x b13) 4)
(= (y b13) 0)
(= (x b14) 6)
(= (y b14) 0)

		(= (d p0) 24)
(= (d p1) 92)
(= (d p2) 29)
(= (d p3) 49)

	)

	(:goal
		(and
			(saved p0)
(saved p1)
(saved p2)
(saved p3)
		)
	)
)

