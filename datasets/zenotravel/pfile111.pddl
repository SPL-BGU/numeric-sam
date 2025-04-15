(define (problem ZTRAVEL-3-9)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	person9 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	)
(:init
	(at plane1 city5)
	(= (capacity plane1) 6138)
	(= (fuel plane1) 811)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 5)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 10)
	(at plane2 city4)
	(= (capacity plane2) 10138)
	(= (fuel plane2) 3119)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 10)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 3)
	(at plane3 city5)
	(= (capacity plane3) 4486)
	(= (fuel plane3) 1881)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 6)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 9)
	(at person1 city2)
	(at person2 city2)
	(at person3 city3)
	(at person4 city1)
	(at person5 city5)
	(at person6 city0)
	(at person7 city1)
	(at person8 city0)
	(at person9 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 879)
	(= (distance city0 city2) 664)
	(= (distance city0 city3) 785)
	(= (distance city0 city4) 503)
	(= (distance city0 city5) 575)
	(= (distance city1 city0) 879)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 991)
	(= (distance city1 city3) 771)
	(= (distance city1 city4) 858)
	(= (distance city1 city5) 938)
	(= (distance city2 city0) 664)
	(= (distance city2 city1) 991)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 681)
	(= (distance city2 city4) 507)
	(= (distance city2 city5) 966)
	(= (distance city3 city0) 785)
	(= (distance city3 city1) 771)
	(= (distance city3 city2) 681)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 751)
	(= (distance city3 city5) 851)
	(= (distance city4 city0) 503)
	(= (distance city4 city1) 858)
	(= (distance city4 city2) 507)
	(= (distance city4 city3) 751)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 511)
	(= (distance city5 city0) 575)
	(= (distance city5 city1) 938)
	(= (distance city5 city2) 966)
	(= (distance city5 city3) 851)
	(= (distance city5 city4) 511)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane3 city5)
	(at person1 city4)
	(at person2 city5)
	(at person3 city5)
	(at person4 city2)
	(at person5 city1)
	(at person6 city3)
	(at person7 city5)
	(at person8 city0)
	(at person9 city1)
	))

(:metric minimize (+ (* 3 (total-time))  (* 4 (total-fuel-used))))
)
