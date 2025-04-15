;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11_10)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 - person
	)

  (:init
		(= (x b0) 9)
(= (y b0) 0)
(= (x b1) -6)
(= (y b1) 0)
(= (x b2) -2)
(= (y b2) 0)
(= (x b3) 8)
(= (y b3) 0)
(= (x b4) 1)
(= (y b4) 0)
(= (x b5) -8)
(= (y b5) 0)
(= (x b6) -1)
(= (y b6) 0)
(= (x b7) 10)
(= (y b7) 0)
(= (x b8) -10)
(= (y b8) 0)
(= (x b9) -5)
(= (y b9) 0)
(= (x b10) 2)
(= (y b10) 0)

		(= (d p0) 4)
(= (d p1) 71)
(= (d p2) 69)
(= (d p3) 10)
(= (d p4) 18)
(= (d p5) 6)
(= (d p6) 43)
(= (d p7) 39)
(= (d p8) 68)
(= (d p9) 12)

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

