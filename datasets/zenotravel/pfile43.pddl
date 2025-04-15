(define (problem ZTRAVEL-3-4)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	city0 - city
	city1 - city
	city2 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 13523)
	(= (fuel plane1) 784)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 18)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 8)
	(at plane2 city0)
	(= (capacity plane2) 12013)
	(= (fuel plane2) 1031)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 12)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 9)
	(at plane3 city0)
	(= (capacity plane3) 14939)
	(= (fuel plane3) 4441)
	(= (slow-burn plane3) 5)
	(= (fast-burn plane3) 11)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 1)
	(at person1 city1)
	(at person2 city2)
	(at person3 city2)
	(at person4 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 696)
	(= (distance city0 city2) 620)
	(= (distance city1 city0) 696)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 745)
	(= (distance city2 city0) 620)
	(= (distance city2 city1) 745)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city1)
	(at person2 city0)
	(at person3 city2)
	(at person4 city1)
	))

(:metric minimize (+ (* 5 (total-time))  (* 2 (total-fuel-used))))
)
