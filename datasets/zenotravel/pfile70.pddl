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
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 5801)
	(= (fuel plane1) 1267)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 6)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 2)
	(at plane2 city1)
	(= (capacity plane2) 5486)
	(= (fuel plane2) 1491)
	(= (slow-burn plane2) 2)
	(= (fast-burn plane2) 6)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 2)
	(at plane3 city3)
	(= (capacity plane3) 8409)
	(= (fuel plane3) 2336)
	(= (slow-burn plane3) 3)
	(= (fast-burn plane3) 6)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 7)
	(at person1 city3)
	(at person2 city3)
	(at person3 city2)
	(at person4 city0)
	(at person5 city0)
	(at person6 city0)
	(at person7 city0)
	(at person8 city0)
	(at person9 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 785)
	(= (distance city0 city2) 949)
	(= (distance city0 city3) 582)
	(= (distance city1 city0) 785)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 943)
	(= (distance city1 city3) 680)
	(= (distance city2 city0) 949)
	(= (distance city2 city1) 943)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 967)
	(= (distance city3 city0) 582)
	(= (distance city3 city1) 680)
	(= (distance city3 city2) 967)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city2)
	(at person2 city0)
	(at person3 city0)
	(at person4 city2)
	(at person5 city1)
	(at person6 city3)
	(at person7 city0)
	(at person8 city2)
	(at person9 city1)
	))

(:metric minimize (+ (* 5 (total-time))  (* 5 (total-fuel-used))))
)
