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
	city4 - city
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 12766)
	(= (fuel plane1) 3687)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 14)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 1)
	(at plane2 city2)
	(= (capacity plane2) 4570)
	(= (fuel plane2) 284)
	(= (slow-burn plane2) 2)
	(= (fast-burn plane2) 7)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 6)
	(at person1 city3)
	(at person2 city4)
	(at person3 city0)
	(at person4 city1)
	(at person5 city1)
	(at person6 city0)
	(at person7 city0)
	(at person8 city3)
	(at person9 city4)
	(at person10 city4)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 581)
	(= (distance city0 city2) 960)
	(= (distance city0 city3) 656)
	(= (distance city0 city4) 915)
	(= (distance city1 city0) 581)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 620)
	(= (distance city1 city3) 595)
	(= (distance city1 city4) 693)
	(= (distance city2 city0) 960)
	(= (distance city2 city1) 620)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 572)
	(= (distance city2 city4) 777)
	(= (distance city3 city0) 656)
	(= (distance city3 city1) 595)
	(= (distance city3 city2) 572)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 920)
	(= (distance city4 city0) 915)
	(= (distance city4 city1) 693)
	(= (distance city4 city2) 777)
	(= (distance city4 city3) 920)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city4)
	(at person2 city0)
	(at person3 city2)
	(at person4 city3)
	(at person5 city1)
	(at person6 city4)
	(at person7 city0)
	(at person8 city1)
	(at person9 city2)
	(at person10 city1)
	))

(:metric minimize (+ (* 5 (total-time))  (* 5 (total-fuel-used))))
)
