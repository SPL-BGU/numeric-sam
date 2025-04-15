(define (problem ZTRAVEL-1-4)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	city0 - city
	city1 - city
	city2 - city
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 8598)
	(= (fuel plane1) 3319)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 8)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 2)
	(at person1 city2)
	(at person2 city2)
	(at person3 city1)
	(at person4 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 855)
	(= (distance city0 city2) 991)
	(= (distance city1 city0) 855)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 930)
	(= (distance city2 city0) 991)
	(= (distance city2 city1) 930)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city0)
	(at person2 city0)
	(at person3 city1)
	(at person4 city0)
	))

(:metric minimize (+ (* 5 (total-time))  (* 5 (total-fuel-used))))
)
