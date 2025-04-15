(define (problem ZTRAVEL-2-5)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	city0 - city
	city1 - city
	city2 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 7004)
	(= (fuel plane1) 1948)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 8)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 2)
	(at plane2 city1)
	(= (capacity plane2) 11850)
	(= (fuel plane2) 2693)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 10)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 1)
	(at person1 city0)
	(at person2 city0)
	(at person3 city0)
	(at person4 city0)
	(at person5 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 625)
	(= (distance city0 city2) 718)
	(= (distance city1 city0) 625)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 974)
	(= (distance city2 city0) 718)
	(= (distance city2 city1) 974)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city1)
	(at person1 city0)
	(at person2 city1)
	(at person3 city2)
	(at person4 city1)
	(at person5 city0)
	))

(:metric minimize (+ (* 4 (total-time))  (* 2 (total-fuel-used))))
)
