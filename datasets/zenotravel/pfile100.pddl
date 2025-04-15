(define (problem ZTRAVEL-4-9)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	person9 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 7534)
	(= (fuel plane1) 1841)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 11)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 7)
	(at plane2 city1)
	(= (capacity plane2) 8950)
	(= (fuel plane2) 2533)
	(= (slow-burn plane2) 3)
	(= (fast-burn plane2) 9)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 5)
	(at plane3 city0)
	(= (capacity plane3) 6361)
	(= (fuel plane3) 2371)
	(= (slow-burn plane3) 3)
	(= (fast-burn plane3) 7)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 9)
	(at plane4 city0)
	(= (capacity plane4) 3041)
	(= (fuel plane4) 550)
	(= (slow-burn plane4) 1)
	(= (fast-burn plane4) 2)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 1)
	(at person1 city0)
	(at person2 city0)
	(at person3 city4)
	(at person4 city4)
	(at person5 city1)
	(at person6 city3)
	(at person7 city2)
	(at person8 city4)
	(at person9 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 657)
	(= (distance city0 city2) 642)
	(= (distance city0 city3) 620)
	(= (distance city0 city4) 742)
	(= (distance city1 city0) 657)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 687)
	(= (distance city1 city3) 526)
	(= (distance city1 city4) 785)
	(= (distance city2 city0) 642)
	(= (distance city2 city1) 687)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 985)
	(= (distance city2 city4) 757)
	(= (distance city3 city0) 620)
	(= (distance city3 city1) 526)
	(= (distance city3 city2) 985)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 714)
	(= (distance city4 city0) 742)
	(= (distance city4 city1) 785)
	(= (distance city4 city2) 757)
	(= (distance city4 city3) 714)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane2 city1)
	(at person1 city2)
	(at person2 city4)
	(at person3 city2)
	(at person4 city0)
	(at person5 city4)
	(at person6 city1)
	(at person7 city3)
	(at person8 city3)
	(at person9 city3)
	))

(:metric minimize (+ (* 2 (total-time))  (* 4 (total-fuel-used))))
)
