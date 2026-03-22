;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3_14)

	(:domain sailing)

	(:objects
		b0 b1 b2 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 - person
	)

  (:init
		(= (x b0) 4)
(= (y b0) 0)
(= (x b1) 3)
(= (y b1) 0)
(= (x b2) 10)
(= (y b2) 0)

		(= (d p0) 399)
(= (d p1) 101)
(= (d p2) 93)
(= (d p3) 205)
(= (d p4) 167)
(= (d p5) 423)
(= (d p6) 317)
(= (d p7) 461)
(= (d p8) 19)
(= (d p9) 431)
(= (d p10) 378)
(= (d p11) 359)
(= (d p12) 402)
(= (d p13) 403)

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
(saved p10)
(saved p11)
(saved p12)
(saved p13)
		)
	)
)

