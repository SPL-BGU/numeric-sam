;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7_11)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 - person
	)

  (:init
		(= (x b0) -9)
(= (y b0) 0)
(= (x b1) 1)
(= (y b1) 0)
(= (x b2) -5)
(= (y b2) 0)
(= (x b3) 3)
(= (y b3) 0)
(= (x b4) 9)
(= (y b4) 0)
(= (x b5) 4)
(= (y b5) 0)
(= (x b6) -3)
(= (y b6) 0)

		(= (d p0) 444)
(= (d p1) 460)
(= (d p2) 395)
(= (d p3) 170)
(= (d p4) 154)
(= (d p5) 21)
(= (d p6) 422)
(= (d p7) 276)
(= (d p8) 117)
(= (d p9) 298)
(= (d p10) 92)

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
		)
	)
)

