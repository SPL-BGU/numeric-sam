;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25_100)
	(:domain fo-counters-rnd)
	(:objects
		c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21 c22 c23 c24 - counter
	)
  (:init
		(= (value c0) 51)
	(= (value c1) 5)
	(= (value c2) 92)
	(= (value c3) 69)
	(= (value c4) 30)
	(= (value c5) 10)
	(= (value c6) 60)
	(= (value c7) 4)
	(= (value c8) 8)
	(= (value c9) 94)
	(= (value c10) 14)
	(= (value c11) 18)
	(= (value c12) 32)
	(= (value c13) 34)
	(= (value c14) 50)
	(= (value c15) 71)
	(= (value c16) 42)
	(= (value c17) 30)
	(= (value c18) 91)
	(= (value c19) 83)
	(= (value c20) 93)
	(= (value c21) 46)
	(= (value c22) 58)
	(= (value c23) 34)
	(= (value c24) 28)

        (= (rate_value c0) 0)
	(= (rate_value c1) 0)
	(= (rate_value c2) 0)
	(= (rate_value c3) 0)
	(= (rate_value c4) 0)
	(= (rate_value c5) 0)
	(= (rate_value c6) 0)
	(= (rate_value c7) 0)
	(= (rate_value c8) 0)
	(= (rate_value c9) 0)
	(= (rate_value c10) 0)
	(= (rate_value c11) 0)
	(= (rate_value c12) 0)
	(= (rate_value c13) 0)
	(= (rate_value c14) 0)
	(= (rate_value c15) 0)
	(= (rate_value c16) 0)
	(= (rate_value c17) 0)
	(= (rate_value c18) 0)
	(= (rate_value c19) 0)
	(= (rate_value c20) 0)
	(= (rate_value c21) 0)
	(= (rate_value c22) 0)
	(= (rate_value c23) 0)
	(= (rate_value c24) 0)

		(= (max_int) 100)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
	(<= (+ (value c1) 1) (value c2))
	(<= (+ (value c2) 1) (value c3))
	(<= (+ (value c3) 1) (value c4))
	(<= (+ (value c4) 1) (value c5))
	(<= (+ (value c5) 1) (value c6))
	(<= (+ (value c6) 1) (value c7))
	(<= (+ (value c7) 1) (value c8))
	(<= (+ (value c8) 1) (value c9))
	(<= (+ (value c9) 1) (value c10))
	(<= (+ (value c10) 1) (value c11))
	(<= (+ (value c11) 1) (value c12))
	(<= (+ (value c12) 1) (value c13))
	(<= (+ (value c13) 1) (value c14))
	(<= (+ (value c14) 1) (value c15))
	(<= (+ (value c15) 1) (value c16))
	(<= (+ (value c16) 1) (value c17))
	(<= (+ (value c17) 1) (value c18))
	(<= (+ (value c18) 1) (value c19))
	(<= (+ (value c19) 1) (value c20))
	(<= (+ (value c20) 1) (value c21))
	(<= (+ (value c21) 1) (value c22))
	(<= (+ (value c22) 1) (value c23))
	(<= (+ (value c23) 1) (value c24))
		)
	)
)

