(define (problem ZTRAVEL-1-8)
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 7207)
	(= (fuel plane1) 281)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 8)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 3)
	(at person1 city0)
	(at person2 city3)
	(at person3 city1)
	(at person4 city1)
	(at person5 city1)
	(at person6 city2)
	(at person7 city0)
	(at person8 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 744)
	(= (distance city0 city2) 575)
	(= (distance city0 city3) 625)
	(= (distance city1 city0) 744)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 710)
	(= (distance city1 city3) 775)
	(= (distance city2 city0) 575)
	(= (distance city2 city1) 710)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 881)
	(= (distance city3 city0) 625)
	(= (distance city3 city1) 775)
	(= (distance city3 city2) 881)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city1)
	(at person2 city3)
	(at person3 city3)
	(at person4 city1)
	(at person5 city0)
	(at person6 city1)
	(at person7 city0)
	(at person8 city2)
	))

(:metric minimize (+ (* 5 (total-time))  (* 3 (total-fuel-used))))
)
