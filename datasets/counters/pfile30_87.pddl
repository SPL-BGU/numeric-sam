;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30_100)
	(:domain fo-counters-rnd)
	(:objects
		c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21 c22 c23 c24 c25 c26 c27 c28 c29 - counter
	)
  (:init
		(= (value c0) 33)
	(= (value c1) 52)
	(= (value c2) 90)
	(= (value c3) 38)
	(= (value c4) 87)
	(= (value c5) 91)
	(= (value c6) 24)
	(= (value c7) 12)
	(= (value c8) 9)
	(= (value c9) 14)
	(= (value c10) 90)
	(= (value c11) 44)
	(= (value c12) 32)
	(= (value c13) 47)
	(= (value c14) 44)
	(= (value c15) 25)
	(= (value c16) 100)
	(= (value c17) 15)
	(= (value c18) 82)
	(= (value c19) 42)
	(= (value c20) 65)
	(= (value c21) 58)
	(= (value c22) 11)
	(= (value c23) 82)
	(= (value c24) 13)
	(= (value c25) 34)
	(= (value c26) 39)
	(= (value c27) 93)
	(= (value c28) 29)
	(= (value c29) 99)

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
	(= (rate_value c25) 0)
	(= (rate_value c26) 0)
	(= (rate_value c27) 0)
	(= (rate_value c28) 0)
	(= (rate_value c29) 0)

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
	(<= (+ (value c24) 1) (value c25))
	(<= (+ (value c25) 1) (value c26))
	(<= (+ (value c26) 1) (value c27))
	(<= (+ (value c27) 1) (value c28))
	(<= (+ (value c28) 1) (value c29))
		)
	)
)

