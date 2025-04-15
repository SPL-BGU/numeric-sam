(define (problem ZTRAVEL-2-8)
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
	person7 - person
	person8 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 6471)
	(= (fuel plane1) 349)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 7)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 6)
	(at plane2 city1)
	(= (capacity plane2) 7767)
	(= (fuel plane2) 2295)
	(= (slow-burn plane2) 3)
	(= (fast-burn plane2) 10)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 9)
	(at person1 city0)
	(at person2 city3)
	(at person3 city2)
	(at person4 city1)
	(at person5 city2)
	(at person6 city2)
	(at person7 city0)
	(at person8 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 923)
	(= (distance city0 city2) 732)
	(= (distance city0 city3) 800)
	(= (distance city1 city0) 923)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 856)
	(= (distance city1 city3) 748)
	(= (distance city2 city0) 732)
	(= (distance city2 city1) 856)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 597)
	(= (distance city3 city0) 800)
	(= (distance city3 city1) 748)
	(= (distance city3 city2) 597)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city0)
	(at person1 city1)
	(at person2 city3)
	(at person3 city1)
	(at person4 city2)
	(at person5 city2)
	(at person6 city3)
	(at person7 city3)
	(at person8 city1)
	))

(:metric minimize (+ (* 5 (total-time))  (* 4 (total-fuel-used))))
)
