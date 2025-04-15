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
	(at plane1 city2)
	(= (capacity plane1) 10922)
	(= (fuel plane1) 1168)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 13)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 9)
	(at person1 city1)
	(at person2 city0)
	(at person3 city1)
	(at person4 city3)
	(at person5 city1)
	(at person6 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 577)
	(= (distance city0 city2) 655)
	(= (distance city0 city3) 674)
	(= (distance city1 city0) 577)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 646)
	(= (distance city1 city3) 620)
	(= (distance city2 city0) 655)
	(= (distance city2 city1) 646)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 694)
	(= (distance city3 city0) 674)
	(= (distance city3 city1) 620)
	(= (distance city3 city2) 694)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city1)
	(at person1 city2)
	(at person2 city0)
	(at person3 city0)
	(at person4 city1)
	(at person6 city2)
	))

(:metric minimize (+ (* 5 (total-time))  (* 5 (total-fuel-used))))
)
