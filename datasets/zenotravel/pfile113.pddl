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
	(at plane1 city1)
	(= (capacity plane1) 9256)
	(= (fuel plane1) 2411)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 6)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 9)
	(at plane2 city0)
	(= (capacity plane2) 11620)
	(= (fuel plane2) 3885)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 18)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 4)
	(at plane3 city0)
	(= (capacity plane3) 2606)
	(= (fuel plane3) 846)
	(= (slow-burn plane3) 1)
	(= (fast-burn plane3) 2)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 10)
	(at person1 city0)
	(at person2 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 737)
	(= (distance city0 city2) 826)
	(= (distance city1 city0) 737)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 587)
	(= (distance city2 city0) 826)
	(= (distance city2 city1) 587)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city0)
	(at plane2 city1)
	(at person1 city0)
	(at person2 city2)
	))

(:metric minimize (+ (* 3 (total-time))  (* 2 (total-fuel-used))))
)
