;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10_4)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - boat
		p0 p1 p2 p3 - person
	)

  (:init
		(= (x b0) -4)
(= (y b0) 0)
(= (x b1) -4)
(= (y b1) 0)
(= (x b2) 8)
(= (y b2) 0)
(= (x b3) -10)
(= (y b3) 0)
(= (x b4) -9)
(= (y b4) 0)
(= (x b5) 1)
(= (y b5) 0)
(= (x b6) 5)
(= (y b6) 0)
(= (x b7) 8)
(= (y b7) 0)
(= (x b8) 10)
(= (y b8) 0)
(= (x b9) -3)
(= (y b9) 0)

		(= (d p0) 39)
(= (d p1) 64)
(= (d p2) 57)
(= (d p3) 57)

	)

	(:goal
		(and
			(saved p0)
(saved p1)
(saved p2)
(saved p3)
		)
	)
)

