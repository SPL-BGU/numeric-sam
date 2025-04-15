;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15_3)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 - boat
		p0 p1 p2 - person
	)

  (:init
		(= (x b0) 4)
(= (y b0) 0)
(= (x b1) 5)
(= (y b1) 0)
(= (x b2) -6)
(= (y b2) 0)
(= (x b3) 5)
(= (y b3) 0)
(= (x b4) -5)
(= (y b4) 0)
(= (x b5) 1)
(= (y b5) 0)
(= (x b6) 10)
(= (y b6) 0)
(= (x b7) 5)
(= (y b7) 0)
(= (x b8) -8)
(= (y b8) 0)
(= (x b9) 2)
(= (y b9) 0)
(= (x b10) 8)
(= (y b10) 0)
(= (x b11) -2)
(= (y b11) 0)
(= (x b12) -8)
(= (y b12) 0)
(= (x b13) -10)
(= (y b13) 0)
(= (x b14) -6)
(= (y b14) 0)

		(= (d p0) 26)
(= (d p1) 97)
(= (d p2) 100)

	)

	(:goal
		(and
			(saved p0)
(saved p1)
(saved p2)
		)
	)
)

