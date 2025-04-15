(define (problem ZTRAVEL-3-3)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	person1 - person
	person2 - person
	person3 - person
	city0 - city
	city1 - city
	city2 - city
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 2144)
	(= (fuel plane1) 259)
	(= (slow-burn plane1) 1)
	(= (fast-burn plane1) 3)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 4)
	(at plane2 city1)
	(= (capacity plane2) 9808)
	(= (fuel plane2) 2855)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 10)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 1)
	(at plane3 city2)
	(= (capacity plane3) 11387)
	(= (fuel plane3) 17)
	(= (slow-burn plane3) 5)
	(= (fast-burn plane3) 17)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 3)
	(at person1 city1)
	(at person2 city1)
	(at person3 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 530)
	(= (distance city0 city2) 894)
	(= (distance city1 city0) 530)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 601)
	(= (distance city2 city0) 894)
	(= (distance city2 city1) 601)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city1)
	(at person1 city1)
	(at person2 city1)
	(at person3 city2)
	))

(:metric minimize (+ (* 2 (total-time))  (* 2 (total-fuel-used))))
)
