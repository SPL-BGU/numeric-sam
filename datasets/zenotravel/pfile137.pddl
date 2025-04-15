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
	(at plane1 city3)
	(= (capacity plane1) 5494)
	(= (fuel plane1) 527)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 6)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 5)
	(at plane2 city2)
	(= (capacity plane2) 9309)
	(= (fuel plane2) 535)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 15)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 2)
	(at person1 city2)
	(at person2 city2)
	(at person3 city2)
	(at person4 city1)
	(at person5 city0)
	(at person6 city1)
	(at person7 city3)
	(at person8 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 539)
	(= (distance city0 city2) 785)
	(= (distance city0 city3) 721)
	(= (distance city1 city0) 539)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 916)
	(= (distance city1 city3) 719)
	(= (distance city2 city0) 785)
	(= (distance city2 city1) 916)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 614)
	(= (distance city3 city0) 721)
	(= (distance city3 city1) 719)
	(= (distance city3 city2) 614)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane2 city3)
	(at person1 city3)
	(at person2 city1)
	(at person3 city3)
	(at person4 city1)
	(at person5 city2)
	(at person6 city0)
	(at person7 city1)
	(at person8 city0)
	))

(:metric minimize (+ (* 2 (total-time))  (* 5 (total-fuel-used))))
)
