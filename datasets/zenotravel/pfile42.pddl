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
	(= (capacity plane1) 5730)
	(= (fuel plane1) 729)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 4)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 8)
	(at person1 city2)
	(at person2 city3)
	(at person3 city2)
	(at person4 city2)
	(at person5 city2)
	(at person6 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 516)
	(= (distance city0 city2) 664)
	(= (distance city0 city3) 845)
	(= (distance city1 city0) 516)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 711)
	(= (distance city1 city3) 603)
	(= (distance city2 city0) 664)
	(= (distance city2 city1) 711)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 625)
	(= (distance city3 city0) 845)
	(= (distance city3 city1) 603)
	(= (distance city3 city2) 625)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city2)
	(at person2 city0)
	(at person3 city2)
	(at person4 city2)
	(at person5 city1)
	(at person6 city3)
	))

(:metric minimize (+ (* 2 (total-time))  (* 1 (total-fuel-used))))
)
