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
	city3 - city
	city4 - city
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 6743)
	(= (fuel plane1) 2362)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 7)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 2)
	(at plane2 city0)
	(= (capacity plane2) 11019)
	(= (fuel plane2) 2517)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 12)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 3)
	(at plane3 city2)
	(= (capacity plane3) 10300)
	(= (fuel plane3) 544)
	(= (slow-burn plane3) 4)
	(= (fast-burn plane3) 13)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 6)
	(at person1 city3)
	(at person2 city3)
	(at person3 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 574)
	(= (distance city0 city2) 870)
	(= (distance city0 city3) 765)
	(= (distance city0 city4) 689)
	(= (distance city1 city0) 574)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 827)
	(= (distance city1 city3) 695)
	(= (distance city1 city4) 846)
	(= (distance city2 city0) 870)
	(= (distance city2 city1) 827)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 685)
	(= (distance city2 city4) 789)
	(= (distance city3 city0) 765)
	(= (distance city3 city1) 695)
	(= (distance city3 city2) 685)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 830)
	(= (distance city4 city0) 689)
	(= (distance city4 city1) 846)
	(= (distance city4 city2) 789)
	(= (distance city4 city3) 830)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane3 city3)
	(at person1 city2)
	(at person2 city3)
	(at person3 city4)
	))

(:metric minimize (+ (* 5 (total-time))  (* 1 (total-fuel-used))))
)
