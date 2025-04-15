;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10_8)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 - person
	)

  (:init
		(= (x b0) -2)
(= (y b0) 0)
(= (x b1) 7)
(= (y b1) 0)
(= (x b2) -9)
(= (y b2) 0)
(= (x b3) -1)
(= (y b3) 0)
(= (x b4) -9)
(= (y b4) 0)
(= (x b5) -5)
(= (y b5) 0)
(= (x b6) 10)
(= (y b6) 0)
(= (x b7) 4)
(= (y b7) 0)
(= (x b8) -6)
(= (y b8) 0)
(= (x b9) 9)
(= (y b9) 0)

		(= (d p0) 26)
(= (d p1) 62)
(= (d p2) 67)
(= (d p3) 77)
(= (d p4) 42)
(= (d p5) 6)
(= (d p6) 99)
(= (d p7) 49)

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
		)
	)
)

