(define (problem ZTRAVEL-5-9)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
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
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 2142)
	(= (fuel plane1) 68)
	(= (slow-burn plane1) 1)
	(= (fast-burn plane1) 3)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 6)
	(at plane2 city2)
	(= (capacity plane2) 7093)
	(= (fuel plane2) 582)
	(= (slow-burn plane2) 3)
	(= (fast-burn plane2) 8)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 3)
	(at plane3 city1)
	(= (capacity plane3) 7114)
	(= (fuel plane3) 447)
	(= (slow-burn plane3) 3)
	(= (fast-burn plane3) 11)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 6)
	(at plane4 city1)
	(= (capacity plane4) 3013)
	(= (fuel plane4) 361)
	(= (slow-burn plane4) 1)
	(= (fast-burn plane4) 3)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 7)
	(at plane5 city0)
	(= (capacity plane5) 11517)
	(= (fuel plane5) 2458)
	(= (slow-burn plane5) 5)
	(= (fast-burn plane5) 17)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 1)
	(at person1 city0)
	(at person2 city0)
	(at person3 city2)
	(at person4 city0)
	(at person5 city2)
	(at person6 city2)
	(at person7 city0)
	(at person8 city0)
	(at person9 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 505)
	(= (distance city0 city2) 861)
	(= (distance city1 city0) 505)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 575)
	(= (distance city2 city0) 861)
	(= (distance city2 city1) 575)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city0)
	(at plane5 city2)
	(at person1 city2)
	(at person2 city2)
	(at person3 city1)
	(at person4 city0)
	(at person5 city1)
	(at person6 city0)
	(at person7 city2)
	(at person8 city2)
	(at person9 city0)
	))

(:metric minimize (+ (* 3 (total-time))  (* 2 (total-fuel-used))))
)
