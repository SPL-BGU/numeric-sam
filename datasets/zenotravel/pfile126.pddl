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
	(at plane1 city0)
	(= (capacity plane1) 12242)
	(= (fuel plane1) 2567)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 9)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 1)
	(at plane2 city2)
	(= (capacity plane2) 4866)
	(= (fuel plane2) 1588)
	(= (slow-burn plane2) 2)
	(= (fast-burn plane2) 5)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 2)
	(at plane3 city2)
	(= (capacity plane3) 6384)
	(= (fuel plane3) 1317)
	(= (slow-burn plane3) 3)
	(= (fast-burn plane3) 11)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 6)
	(at plane4 city1)
	(= (capacity plane4) 5047)
	(= (fuel plane4) 1202)
	(= (slow-burn plane4) 2)
	(= (fast-burn plane4) 6)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 7)
	(at plane5 city2)
	(= (capacity plane5) 8648)
	(= (fuel plane5) 1844)
	(= (slow-burn plane5) 4)
	(= (fast-burn plane5) 13)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 4)
	(at person1 city1)
	(at person2 city1)
	(at person3 city0)
	(at person4 city1)
	(at person5 city2)
	(at person6 city2)
	(at person7 city1)
	(at person8 city0)
	(at person9 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 567)
	(= (distance city0 city2) 762)
	(= (distance city1 city0) 567)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 805)
	(= (distance city2 city0) 762)
	(= (distance city2 city1) 805)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city1)
	(at plane2 city1)
	(at plane4 city1)
	(at plane5 city2)
	(at person1 city1)
	(at person2 city1)
	(at person4 city1)
	(at person5 city0)
	(at person6 city2)
	(at person7 city2)
	(at person8 city1)
	(at person9 city2)
	))

(:metric minimize (+ (* 4 (total-time))  (* 3 (total-fuel-used))))
)
