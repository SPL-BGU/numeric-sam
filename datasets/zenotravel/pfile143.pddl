(define (problem ZTRAVEL-1-2)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	person1 - person
	person2 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	)
(:init
	(at plane1 city4)
	(= (capacity plane1) 11443)
	(= (fuel plane1) 3800)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 17)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 1)
	(at person1 city4)
	(at person2 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 865)
	(= (distance city0 city2) 524)
	(= (distance city0 city3) 879)
	(= (distance city0 city4) 627)
	(= (distance city1 city0) 865)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 770)
	(= (distance city1 city3) 776)
	(= (distance city1 city4) 550)
	(= (distance city2 city0) 524)
	(= (distance city2 city1) 770)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 579)
	(= (distance city2 city4) 828)
	(= (distance city3 city0) 879)
	(= (distance city3 city1) 776)
	(= (distance city3 city2) 579)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 539)
	(= (distance city4 city0) 627)
	(= (distance city4 city1) 550)
	(= (distance city4 city2) 828)
	(= (distance city4 city3) 539)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city4)
	(at person2 city4)
	))

(:metric minimize (+ (* 4 (total-time))  (* 5 (total-fuel-used))))
)
