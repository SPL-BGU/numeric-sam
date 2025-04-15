;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11_11)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 - person
	)

  (:init
		(= (x b0) -1)
(= (y b0) 0)
(= (x b1) 0)
(= (y b1) 0)
(= (x b2) 3)
(= (y b2) 0)
(= (x b3) -1)
(= (y b3) 0)
(= (x b4) -2)
(= (y b4) 0)
(= (x b5) 3)
(= (y b5) 0)
(= (x b6) 3)
(= (y b6) 0)
(= (x b7) -5)
(= (y b7) 0)
(= (x b8) 5)
(= (y b8) 0)
(= (x b9) 4)
(= (y b9) 0)
(= (x b10) -3)
(= (y b10) 0)

		(= (d p0) 41)
(= (d p1) 66)
(= (d p2) 36)
(= (d p3) 14)
(= (d p4) 50)
(= (d p5) 26)
(= (d p6) 2)
(= (d p7) 37)
(= (d p8) 61)
(= (d p9) 29)
(= (d p10) 72)

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

