;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11_6)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - boat
		p0 p1 p2 p3 p4 p5 - person
	)

  (:init
		(= (x b0) -2)
(= (y b0) 0)
(= (x b1) 6)
(= (y b1) 0)
(= (x b2) -7)
(= (y b2) 0)
(= (x b3) 9)
(= (y b3) 0)
(= (x b4) 9)
(= (y b4) 0)
(= (x b5) -9)
(= (y b5) 0)
(= (x b6) -5)
(= (y b6) 0)
(= (x b7) 3)
(= (y b7) 0)
(= (x b8) 1)
(= (y b8) 0)
(= (x b9) -9)
(= (y b9) 0)
(= (x b10) 10)
(= (y b10) 0)

		(= (d p0) 42)
(= (d p1) 39)
(= (d p2) 22)
(= (d p3) 13)
(= (d p4) 83)
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

