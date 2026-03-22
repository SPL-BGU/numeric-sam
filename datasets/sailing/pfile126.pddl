;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10_2)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - boat
		p0 p1 - person
	)

  (:init
		(= (x b0) -4)
(= (y b0) 0)
(= (x b1) -5)
(= (y b1) 0)
(= (x b2) 3)
(= (y b2) 0)
(= (x b3) 3)
(= (y b3) 0)
(= (x b4) -9)
(= (y b4) 0)
(= (x b5) -3)
(= (y b5) 0)
(= (x b6) -8)
(= (y b6) 0)
(= (x b7) -10)
(= (y b7) 0)
(= (x b8) 4)
(= (y b8) 0)
(= (x b9) -10)
(= (y b9) 0)

		(= (d p0) 183)
(= (d p1) 465)

	)

	(:goal
		(and
			(saved p0)
(saved p1)
		)
	)
)

