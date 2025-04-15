(define (problem ZTRAVEL-4-3)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	person1 - person
	person2 - person
	person3 - person
	city0 - city
	city1 - city
	city2 - city
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 5085)
	(= (fuel plane1) 1239)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 5)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 5)
	(at plane2 city2)
	(= (capacity plane2) 2565)
	(= (fuel plane2) 941)
	(= (slow-burn plane2) 1)
	(= (fast-burn plane2) 2)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 10)
	(at plane3 city2)
	(= (capacity plane3) 6305)
	(= (fuel plane3) 409)
	(= (slow-burn plane3) 3)
	(= (fast-burn plane3) 11)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 3)
	(at plane4 city0)
	(= (capacity plane4) 11694)
	(= (fuel plane4) 186)
	(= (slow-burn plane4) 5)
	(= (fast-burn plane4) 14)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 9)
	(at person1 city1)
	(at person2 city2)
	(at person3 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 796)
	(= (distance city0 city2) 893)
	(= (distance city1 city0) 796)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 931)
	(= (distance city2 city0) 893)
	(= (distance city2 city1) 931)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city1)
	(at person2 city1)
	))

(:metric minimize (+ (* 1 (total-time))  (* 2 (total-fuel-used))))
)
