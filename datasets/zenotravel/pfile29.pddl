(define (problem ZTRAVEL-3-6)
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 11308)
	(= (fuel plane1) 3727)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 19)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 8)
	(at plane2 city2)
	(= (capacity plane2) 2424)
	(= (fuel plane2) 764)
	(= (slow-burn plane2) 1)
	(= (fast-burn plane2) 3)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 6)
	(at plane3 city2)
	(= (capacity plane3) 4246)
	(= (fuel plane3) 1943)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 6)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 2)
	(at person1 city0)
	(at person2 city1)
	(at person3 city2)
	(at person4 city0)
	(at person5 city3)
	(at person6 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 937)
	(= (distance city0 city2) 730)
	(= (distance city0 city3) 878)
	(= (distance city1 city0) 937)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 631)
	(= (distance city1 city3) 783)
	(= (distance city2 city0) 730)
	(= (distance city2 city1) 631)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 689)
	(= (distance city3 city0) 878)
	(= (distance city3 city1) 783)
	(= (distance city3 city2) 689)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city0)
	(at person2 city0)
	(at person4 city2)
	(at person5 city1)
	(at person6 city3)
	))

(:metric minimize (+ (* 3 (total-time))  (* 5 (total-fuel-used))))
)
