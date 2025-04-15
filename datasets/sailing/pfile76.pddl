;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12_6)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 - boat
		p0 p1 p2 p3 p4 p5 - person
	)

  (:init
		(= (x b0) 9)
(= (y b0) 0)
(= (x b1) 3)
(= (y b1) 0)
(= (x b2) 6)
(= (y b2) 0)
(= (x b3) -6)
(= (y b3) 0)
(= (x b4) -7)
(= (y b4) 0)
(= (x b5) 7)
(= (y b5) 0)
(= (x b6) 1)
(= (y b6) 0)
(= (x b7) 0)
(= (y b7) 0)
(= (x b8) -6)
(= (y b8) 0)
(= (x b9) -6)
(= (y b9) 0)
(= (x b10) 3)
(= (y b10) 0)
(= (x b11) 1)
(= (y b11) 0)

		(= (d p0) 7)
(= (d p1) 65)
(= (d p2) 67)
(= (d p3) 65)
(= (d p4) 60)
(= (d p5) 63)

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

