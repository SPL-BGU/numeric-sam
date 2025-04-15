(define (problem ZTRAVEL-3-8)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
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
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 8992)
	(= (fuel plane1) 2787)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 11)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 10)
	(at plane2 city3)
	(= (capacity plane2) 5941)
	(= (fuel plane2) 698)
	(= (slow-burn plane2) 2)
	(= (fast-burn plane2) 4)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 2)
	(at plane3 city3)
	(= (capacity plane3) 2496)
	(= (fuel plane3) 994)
	(= (slow-burn plane3) 1)
	(= (fast-burn plane3) 3)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 9)
	(at person1 city0)
	(at person2 city0)
	(at person3 city2)
	(at person4 city1)
	(at person5 city3)
	(at person6 city2)
	(at person7 city3)
	(at person8 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 520)
	(= (distance city0 city2) 610)
	(= (distance city0 city3) 654)
	(= (distance city1 city0) 520)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 581)
	(= (distance city1 city3) 871)
	(= (distance city2 city0) 610)
	(= (distance city2 city1) 581)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 647)
	(= (distance city3 city0) 654)
	(= (distance city3 city1) 871)
	(= (distance city3 city2) 647)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city3)
	(at person1 city1)
	(at person2 city0)
	(at person3 city0)
	(at person4 city1)
	(at person5 city3)
	(at person6 city3)
	(at person7 city1)
	))

(:metric minimize (+ (* 5 (total-time))  (* 3 (total-fuel-used))))
)
