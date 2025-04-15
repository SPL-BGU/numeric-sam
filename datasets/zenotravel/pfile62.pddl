(define (problem ZTRAVEL-1-5)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 12757)
	(= (fuel plane1) 2198)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 13)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 5)
	(at person1 city1)
	(at person2 city3)
	(at person3 city0)
	(at person4 city2)
	(at person5 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 849)
	(= (distance city0 city2) 795)
	(= (distance city0 city3) 871)
	(= (distance city0 city4) 911)
	(= (distance city1 city0) 849)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 692)
	(= (distance city1 city3) 583)
	(= (distance city1 city4) 927)
	(= (distance city2 city0) 795)
	(= (distance city2 city1) 692)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 881)
	(= (distance city2 city4) 706)
	(= (distance city3 city0) 871)
	(= (distance city3 city1) 583)
	(= (distance city3 city2) 881)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 608)
	(= (distance city4 city0) 911)
	(= (distance city4 city1) 927)
	(= (distance city4 city2) 706)
	(= (distance city4 city3) 608)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city0)
	(at person2 city0)
	(at person3 city3)
	(at person4 city1)
	(at person5 city0)
	))

(:metric minimize (+ (* 1 (total-time))  (* 3 (total-fuel-used))))
)
