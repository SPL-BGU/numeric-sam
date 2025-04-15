(define (problem ZTRAVEL-5-4)
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	)
(:init
	(at plane1 city3)
	(= (capacity plane1) 8152)
	(= (fuel plane1) 1940)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 7)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 1)
	(at plane2 city1)
	(= (capacity plane2) 2636)
	(= (fuel plane2) 841)
	(= (slow-burn plane2) 1)
	(= (fast-burn plane2) 3)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 6)
	(at plane3 city0)
	(= (capacity plane3) 5229)
	(= (fuel plane3) 418)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 5)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 9)
	(at plane4 city3)
	(= (capacity plane4) 12323)
	(= (fuel plane4) 3033)
	(= (slow-burn plane4) 4)
	(= (fast-burn plane4) 14)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 3)
	(at plane5 city0)
	(= (capacity plane5) 7679)
	(= (fuel plane5) 232)
	(= (slow-burn plane5) 3)
	(= (fast-burn plane5) 9)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 7)
	(at person1 city2)
	(at person2 city0)
	(at person3 city2)
	(at person4 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 641)
	(= (distance city0 city2) 610)
	(= (distance city0 city3) 633)
	(= (distance city1 city0) 641)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 762)
	(= (distance city1 city3) 612)
	(= (distance city2 city0) 610)
	(= (distance city2 city1) 762)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 935)
	(= (distance city3 city0) 633)
	(= (distance city3 city1) 612)
	(= (distance city3 city2) 935)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane2 city3)
	(at person1 city3)
	(at person2 city3)
	(at person3 city2)
	(at person4 city0)
	))

(:metric minimize (+ (* 5 (total-time))  (* 5 (total-fuel-used))))
)
