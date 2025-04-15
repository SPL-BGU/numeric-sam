(define (problem ZTRAVEL-3-2)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	person1 - person
	person2 - person
	city0 - city
	city1 - city
	city2 - city
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 7451)
	(= (fuel plane1) 2370)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 9)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 4)
	(at plane2 city2)
	(= (capacity plane2) 11377)
	(= (fuel plane2) 2339)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 12)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 1)
	(at plane3 city0)
	(= (capacity plane3) 7869)
	(= (fuel plane3) 873)
	(= (slow-burn plane3) 3)
	(= (fast-burn plane3) 10)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 9)
	(at person1 city2)
	(at person2 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 955)
	(= (distance city0 city2) 763)
	(= (distance city1 city0) 955)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 865)
	(= (distance city2 city0) 763)
	(= (distance city2 city1) 865)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city2)
	(at person1 city2)
	(at person2 city0)
	))

(:metric minimize (+ (* 3 (total-time))  (* 2 (total-fuel-used))))
)
