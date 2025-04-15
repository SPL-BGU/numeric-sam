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
	(at plane1 city1)
	(= (capacity plane1) 10994)
	(= (fuel plane1) 361)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 11)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 3)
	(at plane2 city3)
	(= (capacity plane2) 2919)
	(= (fuel plane2) 517)
	(= (slow-burn plane2) 1)
	(= (fast-burn plane2) 2)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 8)
	(at plane3 city2)
	(= (capacity plane3) 6324)
	(= (fuel plane3) 1060)
	(= (slow-burn plane3) 3)
	(= (fast-burn plane3) 11)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 1)
	(at person1 city2)
	(at person2 city1)
	(at person3 city0)
	(at person4 city0)
	(at person5 city3)
	(at person6 city1)
	(at person7 city0)
	(at person8 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 566)
	(= (distance city0 city2) 871)
	(= (distance city0 city3) 726)
	(= (distance city1 city0) 566)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 551)
	(= (distance city1 city3) 810)
	(= (distance city2 city0) 871)
	(= (distance city2 city1) 551)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 523)
	(= (distance city3 city0) 726)
	(= (distance city3 city1) 810)
	(= (distance city3 city2) 523)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city1)
	(at plane2 city2)
	(at person1 city2)
	(at person2 city2)
	(at person3 city3)
	(at person4 city2)
	(at person5 city0)
	(at person6 city0)
	(at person7 city3)
	(at person8 city2)
	))

(:metric minimize (+ (* 3 (total-time))  (* 5 (total-fuel-used))))
)
