;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14_6)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 - boat
		p0 p1 p2 p3 p4 p5 - person
	)

  (:init
		(= (x b0) 5)
(= (y b0) 0)
(= (x b1) -10)
(= (y b1) 0)
(= (x b2) 4)
(= (y b2) 0)
(= (x b3) 4)
(= (y b3) 0)
(= (x b4) 5)
(= (y b4) 0)
(= (x b5) 10)
(= (y b5) 0)
(= (x b6) 3)
(= (y b6) 0)
(= (x b7) 8)
(= (y b7) 0)
(= (x b8) -9)
(= (y b8) 0)
(= (x b9) -7)
(= (y b9) 0)
(= (x b10) -5)
(= (y b10) 0)
(= (x b11) 1)
(= (y b11) 0)
(= (x b12) 10)
(= (y b12) 0)
(= (x b13) 9)
(= (y b13) 0)

		(= (d p0) 71)
(= (d p1) 94)
(= (d p2) 100)
(= (d p3) 60)
(= (d p4) 78)
(= (d p5) 19)

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

