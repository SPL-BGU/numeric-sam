(define (problem ZTRAVEL-4-9)
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
	person8 - person
	person9 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 10635)
	(= (fuel plane1) 3642)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 13)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 3)
	(at plane2 city3)
	(= (capacity plane2) 8582)
	(= (fuel plane2) 1186)
	(= (slow-burn plane2) 3)
	(= (fast-burn plane2) 9)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 10)
	(at plane3 city3)
	(= (capacity plane3) 5747)
	(= (fuel plane3) 788)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 5)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 3)
	(at plane4 city3)
	(= (capacity plane4) 8690)
	(= (fuel plane4) 3828)
	(= (slow-burn plane4) 4)
	(= (fast-burn plane4) 9)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 3)
	(at person1 city0)
	(at person2 city4)
	(at person3 city4)
	(at person4 city3)
	(at person5 city3)
	(at person6 city2)
	(at person7 city4)
	(at person8 city0)
	(at person9 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 582)
	(= (distance city0 city2) 851)
	(= (distance city0 city3) 734)
	(= (distance city0 city4) 767)
	(= (distance city1 city0) 582)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 639)
	(= (distance city1 city3) 968)
	(= (distance city1 city4) 772)
	(= (distance city2 city0) 851)
	(= (distance city2 city1) 639)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 920)
	(= (distance city2 city4) 939)
	(= (distance city3 city0) 734)
	(= (distance city3 city1) 968)
	(= (distance city3 city2) 920)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 958)
	(= (distance city4 city0) 767)
	(= (distance city4 city1) 772)
	(= (distance city4 city2) 939)
	(= (distance city4 city3) 958)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city4)
	(at person2 city0)
	(at person3 city0)
	(at person4 city2)
	(at person5 city4)
	(at person6 city1)
	(at person7 city1)
	(at person8 city0)
	(at person9 city0)
	))

(:metric minimize (+ (* 4 (total-time))  (* 2 (total-fuel-used))))
)
