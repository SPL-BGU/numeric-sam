(define (problem ZTRAVEL-4-7)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 9470)
	(= (fuel plane1) 3189)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 14)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 8)
	(at plane2 city4)
	(= (capacity plane2) 12367)
	(= (fuel plane2) 3164)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 13)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 6)
	(at plane3 city1)
	(= (capacity plane3) 5750)
	(= (fuel plane3) 772)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 7)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 6)
	(at plane4 city0)
	(= (capacity plane4) 2975)
	(= (fuel plane4) 421)
	(= (slow-burn plane4) 1)
	(= (fast-burn plane4) 2)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 1)
	(at person1 city1)
	(at person2 city1)
	(at person3 city2)
	(at person4 city3)
	(at person5 city4)
	(at person6 city1)
	(at person7 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 646)
	(= (distance city0 city2) 556)
	(= (distance city0 city3) 694)
	(= (distance city0 city4) 633)
	(= (distance city1 city0) 646)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 882)
	(= (distance city1 city3) 710)
	(= (distance city1 city4) 746)
	(= (distance city2 city0) 556)
	(= (distance city2 city1) 882)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 639)
	(= (distance city2 city4) 802)
	(= (distance city3 city0) 694)
	(= (distance city3 city1) 710)
	(= (distance city3 city2) 639)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 828)
	(= (distance city4 city0) 633)
	(= (distance city4 city1) 746)
	(= (distance city4 city2) 802)
	(= (distance city4 city3) 828)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city0)
	(at person2 city0)
	(at person3 city2)
	(at person4 city2)
	(at person5 city4)
	(at person6 city4)
	(at person7 city0)
	))

(:metric minimize (+ (* 2 (total-time))  (* 3 (total-fuel-used))))
)
