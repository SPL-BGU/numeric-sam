;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13_7)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - boat
		p0 p1 p2 p3 p4 p5 p6 - person
	)

  (:init
		(= (x b0) 1)
(= (y b0) 0)
(= (x b1) 10)
(= (y b1) 0)
(= (x b2) -5)
(= (y b2) 0)
(= (x b3) 6)
(= (y b3) 0)
(= (x b4) 5)
(= (y b4) 0)
(= (x b5) 7)
(= (y b5) 0)
(= (x b6) -7)
(= (y b6) 0)
(= (x b7) 1)
(= (y b7) 0)
(= (x b8) -2)
(= (y b8) 0)
(= (x b9) -1)
(= (y b9) 0)
(= (x b10) 4)
(= (y b10) 0)
(= (x b11) 3)
(= (y b11) 0)
(= (x b12) 10)
(= (y b12) 0)

		(= (d p0) 19)
(= (d p1) 97)
(= (d p2) 62)
(= (d p3) 38)
(= (d p4) 16)
(= (d p5) 46)
(= (d p6) 82)

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

