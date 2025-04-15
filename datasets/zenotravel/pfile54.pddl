(define (problem ZTRAVEL-4-10)
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
	person10 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	)
(:init
	(at plane1 city4)
	(= (capacity plane1) 11461)
	(= (fuel plane1) 3980)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 13)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 7)
	(at plane2 city4)
	(= (capacity plane2) 11620)
	(= (fuel plane2) 3941)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 18)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 2)
	(at plane3 city0)
	(= (capacity plane3) 15173)
	(= (fuel plane3) 1764)
	(= (slow-burn plane3) 5)
	(= (fast-burn plane3) 13)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 4)
	(at plane4 city0)
	(= (capacity plane4) 2816)
	(= (fuel plane4) 378)
	(= (slow-burn plane4) 1)
	(= (fast-burn plane4) 2)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 6)
	(at person1 city0)
	(at person2 city1)
	(at person3 city2)
	(at person4 city3)
	(at person5 city0)
	(at person6 city2)
	(at person7 city4)
	(at person8 city2)
	(at person9 city4)
	(at person10 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 664)
	(= (distance city0 city2) 890)
	(= (distance city0 city3) 908)
	(= (distance city0 city4) 879)
	(= (distance city1 city0) 664)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 704)
	(= (distance city1 city3) 696)
	(= (distance city1 city4) 981)
	(= (distance city2 city0) 890)
	(= (distance city2 city1) 704)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 948)
	(= (distance city2 city4) 979)
	(= (distance city3 city0) 908)
	(= (distance city3 city1) 696)
	(= (distance city3 city2) 948)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 766)
	(= (distance city4 city0) 879)
	(= (distance city4 city1) 981)
	(= (distance city4 city2) 979)
	(= (distance city4 city3) 766)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane4 city3)
	(at person1 city4)
	(at person2 city1)
	(at person3 city2)
	(at person4 city2)
	(at person5 city4)
	(at person6 city0)
	(at person7 city0)
	(at person8 city0)
	(at person9 city4)
	(at person10 city4)
	))

(:metric minimize (+ (* 5 (total-time))  (* 5 (total-fuel-used))))
)
