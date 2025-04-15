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
	(at plane1 city2)
	(= (capacity plane1) 11508)
	(= (fuel plane1) 4877)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 11)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 6)
	(at plane2 city1)
	(= (capacity plane2) 5574)
	(= (fuel plane2) 13)
	(= (slow-burn plane2) 2)
	(= (fast-burn plane2) 7)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 7)
	(at plane3 city0)
	(= (capacity plane3) 5132)
	(= (fuel plane3) 709)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 5)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 8)
	(at person1 city3)
	(at person2 city4)
	(at person3 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 887)
	(= (distance city0 city2) 863)
	(= (distance city0 city3) 597)
	(= (distance city0 city4) 877)
	(= (distance city1 city0) 887)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 598)
	(= (distance city1 city3) 767)
	(= (distance city1 city4) 539)
	(= (distance city2 city0) 863)
	(= (distance city2 city1) 598)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 895)
	(= (distance city2 city4) 511)
	(= (distance city3 city0) 597)
	(= (distance city3 city1) 767)
	(= (distance city3 city2) 895)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 732)
	(= (distance city4 city0) 877)
	(= (distance city4 city1) 539)
	(= (distance city4 city2) 511)
	(= (distance city4 city3) 732)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city1)
	(at person2 city3)
	(at person3 city1)
	))

(:metric minimize (+ (* 1 (total-time))  (* 3 (total-fuel-used))))
)
