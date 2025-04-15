(define (problem ZTRAVEL-2-10)
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
	person9 - person
	person10 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 2595)
	(= (fuel plane1) 230)
	(= (slow-burn plane1) 1)
	(= (fast-burn plane1) 2)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 9)
	(at plane2 city3)
	(= (capacity plane2) 6637)
	(= (fuel plane2) 2880)
	(= (slow-burn plane2) 3)
	(= (fast-burn plane2) 8)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 3)
	(at person1 city3)
	(at person2 city2)
	(at person3 city3)
	(at person4 city0)
	(at person5 city1)
	(at person6 city0)
	(at person7 city3)
	(at person8 city3)
	(at person9 city2)
	(at person10 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 758)
	(= (distance city0 city2) 522)
	(= (distance city0 city3) 726)
	(= (distance city1 city0) 758)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 721)
	(= (distance city1 city3) 563)
	(= (distance city2 city0) 522)
	(= (distance city2 city1) 721)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 578)
	(= (distance city3 city0) 726)
	(= (distance city3 city1) 563)
	(= (distance city3 city2) 578)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane2 city3)
	(at person1 city0)
	(at person2 city0)
	(at person3 city1)
	(at person4 city0)
	(at person5 city1)
	(at person6 city2)
	(at person7 city3)
	(at person8 city0)
	(at person9 city1)
	(at person10 city0)
	))

(:metric minimize (+ (* 1 (total-time))  (* 5 (total-fuel-used))))
)
