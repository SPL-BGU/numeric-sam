;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10_10)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 - person
	)

  (:init
		(= (x b0) 6)
(= (y b0) 0)
(= (x b1) -8)
(= (y b1) 0)
(= (x b2) -8)
(= (y b2) 0)
(= (x b3) 3)
(= (y b3) 0)
(= (x b4) 8)
(= (y b4) 0)
(= (x b5) 0)
(= (y b5) 0)
(= (x b6) -9)
(= (y b6) 0)
(= (x b7) -5)
(= (y b7) 0)
(= (x b8) -2)
(= (y b8) 0)
(= (x b9) -10)
(= (y b9) 0)

		(= (d p0) 92)
(= (d p1) 63)
(= (d p2) 4)
(= (d p3) 39)
(= (d p4) 81)
(= (d p5) 20)
(= (d p6) 61)
(= (d p7) 46)
(= (d p8) 85)
(= (d p9) 67)

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

