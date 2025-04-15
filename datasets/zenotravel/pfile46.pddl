(define (problem ZTRAVEL-4-2)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	person1 - person
	person2 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 3018)
	(= (fuel plane1) 908)
	(= (slow-burn plane1) 1)
	(= (fast-burn plane1) 3)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 2)
	(at plane2 city0)
	(= (capacity plane2) 11882)
	(= (fuel plane2) 4725)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 10)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 1)
	(at plane3 city0)
	(= (capacity plane3) 9036)
	(= (fuel plane3) 3363)
	(= (slow-burn plane3) 4)
	(= (fast-burn plane3) 14)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 5)
	(at plane4 city1)
	(= (capacity plane4) 4385)
	(= (fuel plane4) 1476)
	(= (slow-burn plane4) 2)
	(= (fast-burn plane4) 7)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 5)
	(at person1 city1)
	(at person2 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 734)
	(= (distance city0 city2) 742)
	(= (distance city0 city3) 702)
	(= (distance city1 city0) 734)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 853)
	(= (distance city1 city3) 973)
	(= (distance city2 city0) 742)
	(= (distance city2 city1) 853)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 568)
	(= (distance city3 city0) 702)
	(= (distance city3 city1) 973)
	(= (distance city3 city2) 568)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city2)
	(at person2 city2)
	))

(:metric minimize (+ (* 5 (total-time))  (* 3 (total-fuel-used))))
)
