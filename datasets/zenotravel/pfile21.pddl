(define (problem ZTRAVEL-4-8)
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 4408)
	(= (fuel plane1) 560)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 7)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 4)
	(at plane2 city4)
	(= (capacity plane2) 9671)
	(= (fuel plane2) 1928)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 14)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 9)
	(at plane3 city0)
	(= (capacity plane3) 2200)
	(= (fuel plane3) 769)
	(= (slow-burn plane3) 1)
	(= (fast-burn plane3) 3)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 1)
	(at plane4 city3)
	(= (capacity plane4) 4791)
	(= (fuel plane4) 745)
	(= (slow-burn plane4) 2)
	(= (fast-burn plane4) 6)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 7)
	(at person1 city4)
	(at person2 city1)
	(at person3 city1)
	(at person4 city2)
	(at person5 city3)
	(at person6 city2)
	(at person7 city3)
	(at person8 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 752)
	(= (distance city0 city2) 577)
	(= (distance city0 city3) 666)
	(= (distance city0 city4) 849)
	(= (distance city1 city0) 752)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 545)
	(= (distance city1 city3) 805)
	(= (distance city1 city4) 526)
	(= (distance city2 city0) 577)
	(= (distance city2 city1) 545)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 833)
	(= (distance city2 city4) 942)
	(= (distance city3 city0) 666)
	(= (distance city3 city1) 805)
	(= (distance city3 city2) 833)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 621)
	(= (distance city4 city0) 849)
	(= (distance city4 city1) 526)
	(= (distance city4 city2) 942)
	(= (distance city4 city3) 621)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city1)
	(at plane4 city0)
	(at person1 city2)
	(at person2 city4)
	(at person3 city3)
	(at person4 city4)
	(at person5 city3)
	(at person6 city1)
	(at person7 city1)
	(at person8 city3)
	))

(:metric minimize (+ (* 5 (total-time))  (* 1 (total-fuel-used))))
)
