(define (problem ZTRAVEL-5-3)
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
	city0 - city
	city1 - city
	city2 - city
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 2861)
	(= (fuel plane1) 434)
	(= (slow-burn plane1) 1)
	(= (fast-burn plane1) 3)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 5)
	(at plane2 city1)
	(= (capacity plane2) 9274)
	(= (fuel plane2) 1442)
	(= (slow-burn plane2) 3)
	(= (fast-burn plane2) 9)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 1)
	(at plane3 city2)
	(= (capacity plane3) 5457)
	(= (fuel plane3) 482)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 6)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 8)
	(at plane4 city1)
	(= (capacity plane4) 9879)
	(= (fuel plane4) 3205)
	(= (slow-burn plane4) 4)
	(= (fast-burn plane4) 9)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 3)
	(at plane5 city1)
	(= (capacity plane5) 6588)
	(= (fuel plane5) 2529)
	(= (slow-burn plane5) 3)
	(= (fast-burn plane5) 11)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 4)
	(at person1 city2)
	(at person2 city1)
	(at person3 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 745)
	(= (distance city0 city2) 718)
	(= (distance city1 city0) 745)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 955)
	(= (distance city2 city0) 718)
	(= (distance city2 city1) 955)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane5 city0)
	(at person1 city1)
	(at person2 city0)
	(at person3 city2)
	))

(:metric minimize (+ (* 1 (total-time))  (* 4 (total-fuel-used))))
)
