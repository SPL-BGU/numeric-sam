(define (problem ZTRAVEL-2-7)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	)
(:init
	(at plane1 city4)
	(= (capacity plane1) 2654)
	(= (fuel plane1) 224)
	(= (slow-burn plane1) 1)
	(= (fast-burn plane1) 3)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 6)
	(at plane2 city1)
	(= (capacity plane2) 8506)
	(= (fuel plane2) 3573)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 11)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 4)
	(at person1 city4)
	(at person2 city1)
	(at person3 city1)
	(at person4 city1)
	(at person5 city3)
	(at person6 city3)
	(at person7 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 650)
	(= (distance city0 city2) 892)
	(= (distance city0 city3) 580)
	(= (distance city0 city4) 604)
	(= (distance city1 city0) 650)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 669)
	(= (distance city1 city3) 854)
	(= (distance city1 city4) 588)
	(= (distance city2 city0) 892)
	(= (distance city2 city1) 669)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 519)
	(= (distance city2 city4) 532)
	(= (distance city3 city0) 580)
	(= (distance city3 city1) 854)
	(= (distance city3 city2) 519)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 662)
	(= (distance city4 city0) 604)
	(= (distance city4 city1) 588)
	(= (distance city4 city2) 532)
	(= (distance city4 city3) 662)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city2)
	(at plane2 city0)
	(at person1 city2)
	(at person2 city1)
	(at person3 city1)
	(at person4 city4)
	(at person6 city3)
	(at person7 city3)
	))

(:metric minimize (+ (* 2 (total-time))  (* 2 (total-fuel-used))))
)
