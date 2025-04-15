(define (problem ZTRAVEL-1-6)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
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
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 13464)
	(= (fuel plane1) 4412)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 11)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 5)
	(at person1 city3)
	(at person2 city2)
	(at person3 city0)
	(at person4 city0)
	(at person5 city2)
	(at person6 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 691)
	(= (distance city0 city2) 765)
	(= (distance city0 city3) 537)
	(= (distance city1 city0) 691)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 838)
	(= (distance city1 city3) 825)
	(= (distance city2 city0) 765)
	(= (distance city2 city1) 838)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 940)
	(= (distance city3 city0) 537)
	(= (distance city3 city1) 825)
	(= (distance city3 city2) 940)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city3)
	(at person2 city3)
	(at person3 city0)
	(at person4 city2)
	(at person5 city2)
	(at person6 city3)
	))

(:metric minimize (+ (* 4 (total-time))  (* 5 (total-fuel-used))))
)
