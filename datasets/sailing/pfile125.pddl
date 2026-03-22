;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_13)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3 - boat
		p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 - person
	)

  (:init
		(= (x b0) -1)
(= (y b0) 0)
(= (x b1) -8)
(= (y b1) 0)
(= (x b2) 6)
(= (y b2) 0)
(= (x b3) -2)
(= (y b3) 0)

		(= (d p0) 204)
(= (d p1) 219)
(= (d p2) 428)
(= (d p3) 312)
(= (d p4) 166)
(= (d p5) 69)
(= (d p6) 209)
(= (d p7) 220)
(= (d p8) 447)
(= (d p9) 47)
(= (d p10) 150)
(= (d p11) 108)
(= (d p12) 310)

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
		)
	)
)

