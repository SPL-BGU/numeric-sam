;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12_4)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 - boat
		p0 p1 p2 p3 - person
	)

  (:init
		(= (x b0) -10)
(= (y b0) 0)
(= (x b1) -10)
(= (y b1) 0)
(= (x b2) -6)
(= (y b2) 0)
(= (x b3) 10)
(= (y b3) 0)
(= (x b4) 5)
(= (y b4) 0)
(= (x b5) -1)
(= (y b5) 0)
(= (x b6) 10)
(= (y b6) 0)
(= (x b7) -1)
(= (y b7) 0)
(= (x b8) 2)
(= (y b8) 0)
(= (x b9) 1)
(= (y b9) 0)
(= (x b10) -1)
(= (y b10) 0)
(= (x b11) -9)
(= (y b11) 0)

		(= (d p0) 25)
(= (d p1) 67)
(= (d p2) 70)
(= (d p3) 98)

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

