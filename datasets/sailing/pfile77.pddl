;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10_8)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 - person
	)

  (:init
		(= (x b0) -8)
(= (y b0) 0)
(= (x b1) 5)
(= (y b1) 0)
(= (x b2) 10)
(= (y b2) 0)
(= (x b3) -10)
(= (y b3) 0)
(= (x b4) 0)
(= (y b4) 0)
(= (x b5) -3)
(= (y b5) 0)
(= (x b6) 9)
(= (y b6) 0)
(= (x b7) -4)
(= (y b7) 0)
(= (x b8) 1)
(= (y b8) 0)
(= (x b9) -7)
(= (y b9) 0)

		(= (d p0) 22)
(= (d p1) 4)
(= (d p2) 54)
(= (d p3) 68)
(= (d p4) 62)
(= (d p5) 35)
(= (d p6) 50)
(= (d p7) 1)

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

