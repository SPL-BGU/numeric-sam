;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13_5)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - boat
		p0 p1 p2 p3 p4 - person
	)

  (:init
		(= (x b0) -7)
(= (y b0) 0)
(= (x b1) 2)
(= (y b1) 0)
(= (x b2) 9)
(= (y b2) 0)
(= (x b3) -3)
(= (y b3) 0)
(= (x b4) 5)
(= (y b4) 0)
(= (x b5) -1)
(= (y b5) 0)
(= (x b6) 2)
(= (y b6) 0)
(= (x b7) 3)
(= (y b7) 0)
(= (x b8) 9)
(= (y b8) 0)
(= (x b9) -8)
(= (y b9) 0)
(= (x b10) -5)
(= (y b10) 0)
(= (x b11) 9)
(= (y b11) 0)
(= (x b12) 2)
(= (y b12) 0)

		(= (d p0) 86)
(= (d p1) 76)
(= (d p2) 74)
(= (d p3) 46)
(= (d p4) 4)

	)

	(:goal
		(and
			(saved p0)
(saved p1)
(saved p2)
(saved p3)
(saved p4)
		)
	)
)

