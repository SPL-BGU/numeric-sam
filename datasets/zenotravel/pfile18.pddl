(define (problem ZTRAVEL-1-9)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
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
	(at plane1 city0)
	(= (capacity plane1) 9285)
	(= (fuel plane1) 3205)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 9)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 4)
	(at person1 city4)
	(at person2 city0)
	(at person3 city4)
	(at person4 city2)
	(at person5 city1)
	(at person6 city1)
	(at person7 city4)
	(at person8 city0)
	(at person9 city4)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 964)
	(= (distance city0 city2) 956)
	(= (distance city0 city3) 961)
	(= (distance city0 city4) 617)
	(= (distance city1 city0) 964)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 892)
	(= (distance city1 city3) 973)
	(= (distance city1 city4) 983)
	(= (distance city2 city0) 956)
	(= (distance city2 city1) 892)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 639)
	(= (distance city2 city4) 732)
	(= (distance city3 city0) 961)
	(= (distance city3 city1) 973)
	(= (distance city3 city2) 639)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 743)
	(= (distance city4 city0) 617)
	(= (distance city4 city1) 983)
	(= (distance city4 city2) 732)
	(= (distance city4 city3) 743)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city1)
	(at person1 city2)
	(at person2 city0)
	(at person3 city0)
	(at person4 city4)
	(at person5 city1)
	(at person7 city3)
	(at person8 city1)
	(at person9 city2)
	))

(:metric minimize (+ (* 3 (total-time))  (* 1 (total-fuel-used))))
)
