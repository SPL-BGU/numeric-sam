(define (problem ZTRAVEL-2-2)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	person1 - person
	person2 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	)
(:init
	(at plane1 city3)
	(= (capacity plane1) 5327)
	(= (fuel plane1) 533)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 7)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 6)
	(at plane2 city0)
	(= (capacity plane2) 2618)
	(= (fuel plane2) 463)
	(= (slow-burn plane2) 1)
	(= (fast-burn plane2) 3)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 10)
	(at person1 city1)
	(at person2 city4)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 932)
	(= (distance city0 city2) 783)
	(= (distance city0 city3) 816)
	(= (distance city0 city4) 509)
	(= (distance city1 city0) 932)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 761)
	(= (distance city1 city3) 914)
	(= (distance city1 city4) 707)
	(= (distance city2 city0) 783)
	(= (distance city2 city1) 761)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 730)
	(= (distance city2 city4) 593)
	(= (distance city3 city0) 816)
	(= (distance city3 city1) 914)
	(= (distance city3 city2) 730)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 664)
	(= (distance city4 city0) 509)
	(= (distance city4 city1) 707)
	(= (distance city4 city2) 593)
	(= (distance city4 city3) 664)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane2 city4)
	(at person1 city2)
	(at person2 city1)
	))

(:metric minimize (+ (* 3 (total-time))  (* 2 (total-fuel-used))))
)
