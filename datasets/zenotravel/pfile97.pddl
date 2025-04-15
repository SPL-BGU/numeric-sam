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
	city5 - city
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 7685)
	(= (fuel plane1) 444)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 6)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 3)
	(at plane2 city1)
	(= (capacity plane2) 13697)
	(= (fuel plane2) 839)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 10)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 5)
	(at plane3 city3)
	(= (capacity plane3) 6812)
	(= (fuel plane3) 1346)
	(= (slow-burn plane3) 3)
	(= (fast-burn plane3) 8)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 8)
	(at plane4 city5)
	(= (capacity plane4) 2367)
	(= (fuel plane4) 432)
	(= (slow-burn plane4) 1)
	(= (fast-burn plane4) 3)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 6)
	(at person1 city0)
	(at person2 city4)
	(at person3 city2)
	(at person4 city0)
	(at person5 city5)
	(at person6 city3)
	(at person7 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 872)
	(= (distance city0 city2) 774)
	(= (distance city0 city3) 917)
	(= (distance city0 city4) 514)
	(= (distance city0 city5) 788)
	(= (distance city1 city0) 872)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 947)
	(= (distance city1 city3) 996)
	(= (distance city1 city4) 795)
	(= (distance city1 city5) 801)
	(= (distance city2 city0) 774)
	(= (distance city2 city1) 947)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 591)
	(= (distance city2 city4) 693)
	(= (distance city2 city5) 834)
	(= (distance city3 city0) 917)
	(= (distance city3 city1) 996)
	(= (distance city3 city2) 591)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 945)
	(= (distance city3 city5) 992)
	(= (distance city4 city0) 514)
	(= (distance city4 city1) 795)
	(= (distance city4 city2) 693)
	(= (distance city4 city3) 945)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 572)
	(= (distance city5 city0) 788)
	(= (distance city5 city1) 801)
	(= (distance city5 city2) 834)
	(= (distance city5 city3) 992)
	(= (distance city5 city4) 572)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city3)
	(at plane2 city5)
	(at person1 city5)
	(at person2 city4)
	(at person3 city1)
	(at person4 city2)
	(at person5 city4)
	(at person6 city1)
	(at person7 city1)
	))

(:metric minimize (+ (* 2 (total-time))  (* 2 (total-fuel-used))))
)
