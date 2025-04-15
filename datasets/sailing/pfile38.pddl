;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14_5)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 - boat
		p0 p1 p2 p3 p4 - person
	)

  (:init
		(= (x b0) 10)
(= (y b0) 0)
(= (x b1) 3)
(= (y b1) 0)
(= (x b2) -2)
(= (y b2) 0)
(= (x b3) 10)
(= (y b3) 0)
(= (x b4) -3)
(= (y b4) 0)
(= (x b5) -8)
(= (y b5) 0)
(= (x b6) 7)
(= (y b6) 0)
(= (x b7) 5)
(= (y b7) 0)
(= (x b8) 5)
(= (y b8) 0)
(= (x b9) -5)
(= (y b9) 0)
(= (x b10) -4)
(= (y b10) 0)
(= (x b11) 5)
(= (y b11) 0)
(= (x b12) -2)
(= (y b12) 0)
(= (x b13) 5)
(= (y b13) 0)

		(= (d p0) 51)
(= (d p1) 28)
(= (d p2) 19)
(= (d p3) 3)
(= (d p4) 31)

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

