;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10_14)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 - person
	)

  (:init
		(= (x b0) -1)
(= (y b0) 0)
(= (x b1) 6)
(= (y b1) 0)
(= (x b2) 6)
(= (y b2) 0)
(= (x b3) 6)
(= (y b3) 0)
(= (x b4) 6)
(= (y b4) 0)
(= (x b5) -10)
(= (y b5) 0)
(= (x b6) 9)
(= (y b6) 0)
(= (x b7) -9)
(= (y b7) 0)
(= (x b8) 5)
(= (y b8) 0)
(= (x b9) -9)
(= (y b9) 0)

		(= (d p0) 89)
(= (d p1) 87)
(= (d p2) 24)
(= (d p3) 15)
(= (d p4) 30)
(= (d p5) 63)
(= (d p6) 78)
(= (d p7) 50)
(= (d p8) 46)
(= (d p9) 55)
(= (d p10) 91)
(= (d p11) 40)
(= (d p12) 21)
(= (d p13) 82)

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

