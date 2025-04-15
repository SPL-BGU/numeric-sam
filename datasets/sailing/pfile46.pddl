;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11_6)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - boat
		p0 p1 p2 p3 p4 p5 - person
	)

  (:init
		(= (x b0) -8)
(= (y b0) 0)
(= (x b1) -2)
(= (y b1) 0)
(= (x b2) 4)
(= (y b2) 0)
(= (x b3) 4)
(= (y b3) 0)
(= (x b4) 10)
(= (y b4) 0)
(= (x b5) 8)
(= (y b5) 0)
(= (x b6) -2)
(= (y b6) 0)
(= (x b7) 5)
(= (y b7) 0)
(= (x b8) 10)
(= (y b8) 0)
(= (x b9) 3)
(= (y b9) 0)
(= (x b10) 8)
(= (y b10) 0)

		(= (d p0) 51)
(= (d p1) 2)
(= (d p2) 56)
(= (d p3) 92)
(= (d p4) 77)
(= (d p5) 76)

	)

	(:goal
		(and
			(saved p0)
(saved p1)
(saved p2)
(saved p3)
(saved p4)
(saved p5)
		)
	)
)

