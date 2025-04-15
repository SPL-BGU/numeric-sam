(define (problem ZTRAVEL-4-10)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
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
	(at plane1 city3)
	(= (capacity plane1) 13676)
	(= (fuel plane1) 1304)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 16)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 3)
	(at plane2 city1)
	(= (capacity plane2) 13503)
	(= (fuel plane2) 3571)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 14)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 4)
	(at plane3 city2)
	(= (capacity plane3) 2738)
	(= (fuel plane3) 263)
	(= (slow-burn plane3) 1)
	(= (fast-burn plane3) 2)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 5)
	(at plane4 city4)
	(= (capacity plane4) 5960)
	(= (fuel plane4) 1917)
	(= (slow-burn plane4) 2)
	(= (fast-burn plane4) 4)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 2)
	(at person1 city0)
	(at person2 city3)
	(at person3 city4)
	(at person4 city1)
	(at person5 city3)
	(at person6 city2)
	(at person7 city4)
	(at person8 city0)
	(at person9 city4)
	(at person10 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 932)
	(= (distance city0 city2) 674)
	(= (distance city0 city3) 895)
	(= (distance city0 city4) 860)
	(= (distance city1 city0) 932)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 531)
	(= (distance city1 city3) 538)
	(= (distance city1 city4) 785)
	(= (distance city2 city0) 674)
	(= (distance city2 city1) 531)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 579)
	(= (distance city2 city4) 506)
	(= (distance city3 city0) 895)
	(= (distance city3 city1) 538)
	(= (distance city3 city2) 579)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 702)
	(= (distance city4 city0) 860)
	(= (distance city4 city1) 785)
	(= (distance city4 city2) 506)
	(= (distance city4 city3) 702)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city4)
	(at person2 city4)
	(at person3 city1)
	(at person4 city2)
	(at person5 city3)
	(at person6 city4)
	(at person7 city0)
	(at person8 city1)
	(at person9 city0)
	(at person10 city1)
	))

(:metric minimize (+ (* 3 (total-time))  (* 2 (total-fuel-used))))
)
