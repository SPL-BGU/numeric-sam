;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_8)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 - person
	)

  (:init
		(= (x b0) -8)
(= (y b0) 0)
(= (x b1) 1)
(= (y b1) 0)
(= (x b2) -8)
(= (y b2) 0)
(= (x b3) 1)
(= (y b3) 0)

		(= (d p0) 264)
(= (d p1) 439)
(= (d p2) 220)
(= (d p3) 342)
(= (d p4) 50)
(= (d p5) 340)
(= (d p6) 347)
(= (d p7) 357)

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

