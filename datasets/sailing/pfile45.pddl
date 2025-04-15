;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15_6)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 - boat
		p0 p1 p2 p3 p4 p5 - person
	)

  (:init
		(= (x b0) -1)
(= (y b0) 0)
(= (x b1) 5)
(= (y b1) 0)
(= (x b2) -4)
(= (y b2) 0)
(= (x b3) -2)
(= (y b3) 0)
(= (x b4) -2)
(= (y b4) 0)
(= (x b5) 8)
(= (y b5) 0)
(= (x b6) -5)
(= (y b6) 0)
(= (x b7) -6)
(= (y b7) 0)
(= (x b8) 10)
(= (y b8) 0)
(= (x b9) -1)
(= (y b9) 0)
(= (x b10) -10)
(= (y b10) 0)
(= (x b11) -7)
(= (y b11) 0)
(= (x b12) -3)
(= (y b12) 0)
(= (x b13) -4)
(= (y b13) 0)
(= (x b14) 5)
(= (y b14) 0)

		(= (d p0) 48)
(= (d p1) 90)
(= (d p2) 45)
(= (d p3) 95)
(= (d p4) 12)
(= (d p5) 33)

	)

	(:goal
		(and
			(saved p0)
(saved p1)
(saved p2)
(saved p3)
(saved p4)
(saved p5)
		)
	)
)

