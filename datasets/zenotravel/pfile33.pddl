(define (problem ZTRAVEL-2-6)
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 4447)
	(= (fuel plane1) 1366)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 4)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 3)
	(at plane2 city2)
	(= (capacity plane2) 9770)
	(= (fuel plane2) 2963)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 11)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 8)
	(at person1 city1)
	(at person2 city3)
	(at person3 city1)
	(at person4 city3)
	(at person5 city4)
	(at person6 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 653)
	(= (distance city0 city2) 806)
	(= (distance city0 city3) 733)
	(= (distance city0 city4) 770)
	(= (distance city1 city0) 653)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 650)
	(= (distance city1 city3) 631)
	(= (distance city1 city4) 943)
	(= (distance city2 city0) 806)
	(= (distance city2 city1) 650)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 854)
	(= (distance city2 city4) 526)
	(= (distance city3 city0) 733)
	(= (distance city3 city1) 631)
	(= (distance city3 city2) 854)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 631)
	(= (distance city4 city0) 770)
	(= (distance city4 city1) 943)
	(= (distance city4 city2) 526)
	(= (distance city4 city3) 631)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane2 city3)
	(at person1 city0)
	(at person2 city2)
	(at person3 city2)
	(at person4 city4)
	(at person5 city2)
	(at person6 city3)
	))

(:metric minimize (+ (* 1 (total-time))  (* 1 (total-fuel-used))))
)
