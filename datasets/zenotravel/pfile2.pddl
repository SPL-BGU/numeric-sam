(define (problem ZTRAVEL-1-3)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	person1 - person
	person2 - person
	person3 - person
	city0 - city
	city1 - city
	city2 - city
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 8062)
	(= (fuel plane1) 199)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 11)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 3)
	(at person1 city2)
	(at person2 city2)
	(at person3 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 850)
	(= (distance city0 city2) 904)
	(= (distance city1 city0) 850)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 544)
	(= (distance city2 city0) 904)
	(= (distance city2 city1) 544)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city1)
	(at person2 city2)
	(at person3 city1)
	))

(:metric minimize (+ (* 2 (total-time))  (* 1 (total-fuel-used))))
)
