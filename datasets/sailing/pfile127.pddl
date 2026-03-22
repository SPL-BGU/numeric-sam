;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9_10)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 - person
	)

  (:init
		(= (x b0) 2)
(= (y b0) 0)
(= (x b1) -9)
(= (y b1) 0)
(= (x b2) -7)
(= (y b2) 0)
(= (x b3) -10)
(= (y b3) 0)
(= (x b4) 4)
(= (y b4) 0)
(= (x b5) 9)
(= (y b5) 0)
(= (x b6) 4)
(= (y b6) 0)
(= (x b7) -8)
(= (y b7) 0)
(= (x b8) 7)
(= (y b8) 0)

		(= (d p0) 42)
(= (d p1) 111)
(= (d p2) 328)
(= (d p3) 184)
(= (d p4) 149)
(= (d p5) 479)
(= (d p6) 146)
(= (d p7) 42)
(= (d p8) 306)
(= (d p9) 190)

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
(saved p8)
(saved p9)
		)
	)
)

