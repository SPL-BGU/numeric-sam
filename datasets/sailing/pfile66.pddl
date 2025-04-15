;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11_7)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - boat
		p0 p1 p2 p3 p4 p5 p6 - person
	)

  (:init
		(= (x b0) -5)
(= (y b0) 0)
(= (x b1) 2)
(= (y b1) 0)
(= (x b2) 2)
(= (y b2) 0)
(= (x b3) 4)
(= (y b3) 0)
(= (x b4) 9)
(= (y b4) 0)
(= (x b5) -7)
(= (y b5) 0)
(= (x b6) -2)
(= (y b6) 0)
(= (x b7) -6)
(= (y b7) 0)
(= (x b8) -10)
(= (y b8) 0)
(= (x b9) -1)
(= (y b9) 0)
(= (x b10) 9)
(= (y b10) 0)

		(= (d p0) 85)
(= (d p1) 61)
(= (d p2) 0)
(= (d p3) 16)
(= (d p4) 34)
(= (d p5) 8)
(= (d p6) 59)

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
		)
	)
)

