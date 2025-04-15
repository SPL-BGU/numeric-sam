(define (problem ZTRAVEL-5-10)
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
	person10 - person
	city0 - city
	city1 - city
	city2 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 10157)
	(= (fuel plane1) 1929)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 14)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 8)
	(at plane2 city0)
	(= (capacity plane2) 5098)
	(= (fuel plane2) 1643)
	(= (slow-burn plane2) 2)
	(= (fast-burn plane2) 5)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 1)
	(at plane3 city0)
	(= (capacity plane3) 8673)
	(= (fuel plane3) 2164)
	(= (slow-burn plane3) 4)
	(= (fast-burn plane3) 15)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 6)
	(at plane4 city0)
	(= (capacity plane4) 10466)
	(= (fuel plane4) 3865)
	(= (slow-burn plane4) 4)
	(= (fast-burn plane4) 13)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 6)
	(at plane5 city2)
	(= (capacity plane5) 5485)
	(= (fuel plane5) 426)
	(= (slow-burn plane5) 2)
	(= (fast-burn plane5) 4)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 6)
	(at person1 city1)
	(at person2 city2)
	(at person3 city0)
	(at person4 city1)
	(at person5 city1)
	(at person6 city1)
	(at person7 city0)
	(at person8 city2)
	(at person9 city2)
	(at person10 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 649)
	(= (distance city0 city2) 699)
	(= (distance city1 city0) 649)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 775)
	(= (distance city2 city0) 699)
	(= (distance city2 city1) 775)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane5 city2)
	(at person1 city2)
	(at person2 city1)
	(at person3 city2)
	(at person4 city0)
	(at person5 city0)
	(at person6 city2)
	(at person7 city1)
	(at person8 city2)
	(at person9 city1)
	(at person10 city1)
	))

(:metric minimize (+ (* 1 (total-time))  (* 1 (total-fuel-used))))
)
