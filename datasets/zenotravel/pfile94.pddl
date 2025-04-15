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
	city4 - city
	)
(:init
	(at plane1 city4)
	(= (capacity plane1) 2768)
	(= (fuel plane1) 178)
	(= (slow-burn plane1) 1)
	(= (fast-burn plane1) 3)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 2)
	(at person1 city0)
	(at person2 city2)
	(at person3 city4)
	(at person4 city1)
	(at person5 city1)
	(at person6 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 586)
	(= (distance city0 city2) 656)
	(= (distance city0 city3) 965)
	(= (distance city0 city4) 785)
	(= (distance city1 city0) 586)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 640)
	(= (distance city1 city3) 618)
	(= (distance city1 city4) 956)
	(= (distance city2 city0) 656)
	(= (distance city2 city1) 640)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 605)
	(= (distance city2 city4) 846)
	(= (distance city3 city0) 965)
	(= (distance city3 city1) 618)
	(= (distance city3 city2) 605)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 966)
	(= (distance city4 city0) 785)
	(= (distance city4 city1) 956)
	(= (distance city4 city2) 846)
	(= (distance city4 city3) 966)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city3)
	(at person1 city0)
	(at person2 city4)
	(at person3 city0)
	(at person4 city1)
	(at person5 city4)
	(at person6 city3)
	))

(:metric minimize (+ (* 4 (total-time))  (* 1 (total-fuel-used))))
)
