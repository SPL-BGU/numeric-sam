;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12_7)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 - boat
		p0 p1 p2 p3 p4 p5 p6 - person
	)

  (:init
		(= (x b0) 4)
(= (y b0) 0)
(= (x b1) -10)
(= (y b1) 0)
(= (x b2) -5)
(= (y b2) 0)
(= (x b3) 2)
(= (y b3) 0)
(= (x b4) -10)
(= (y b4) 0)
(= (x b5) 6)
(= (y b5) 0)
(= (x b6) 9)
(= (y b6) 0)
(= (x b7) -5)
(= (y b7) 0)
(= (x b8) -6)
(= (y b8) 0)
(= (x b9) -1)
(= (y b9) 0)
(= (x b10) 7)
(= (y b10) 0)
(= (x b11) 1)
(= (y b11) 0)

		(= (d p0) 41)
(= (d p1) 4)
(= (d p2) 76)
(= (d p3) 4)
(= (d p4) 26)
(= (d p5) 31)
(= (d p6) 93)

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

