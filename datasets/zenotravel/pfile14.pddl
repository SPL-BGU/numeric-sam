(define (problem ZTRAVEL-5-10)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
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
	(= (capacity plane1) 11322)
	(= (fuel plane1) 398)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 9)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 4)
	(at plane2 city2)
	(= (capacity plane2) 4748)
	(= (fuel plane2) 1396)
	(= (slow-burn plane2) 2)
	(= (fast-burn plane2) 4)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 9)
	(at plane3 city2)
	(= (capacity plane3) 8507)
	(= (fuel plane3) 161)
	(= (slow-burn plane3) 3)
	(= (fast-burn plane3) 6)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 2)
	(at plane4 city0)
	(= (capacity plane4) 15472)
	(= (fuel plane4) 2146)
	(= (slow-burn plane4) 5)
	(= (fast-burn plane4) 18)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 3)
	(at plane5 city2)
	(= (capacity plane5) 11656)
	(= (fuel plane5) 1368)
	(= (slow-burn plane5) 4)
	(= (fast-burn plane5) 9)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 4)
	(at person1 city1)
	(at person2 city0)
	(at person3 city2)
	(at person4 city2)
	(at person5 city1)
	(at person6 city3)
	(at person7 city0)
	(at person8 city1)
	(at person9 city3)
	(at person10 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 999)
	(= (distance city0 city2) 631)
	(= (distance city0 city3) 607)
	(= (distance city1 city0) 999)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 730)
	(= (distance city1 city3) 526)
	(= (distance city2 city0) 631)
	(= (distance city2 city1) 730)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 783)
	(= (distance city3 city0) 607)
	(= (distance city3 city1) 526)
	(= (distance city3 city2) 783)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane3 city3)
	(at plane4 city3)
	(at plane5 city0)
	(at person1 city0)
	(at person2 city0)
	(at person3 city1)
	(at person4 city0)
	(at person5 city2)
	(at person6 city1)
	(at person7 city1)
	(at person8 city0)
	(at person9 city3)
	(at person10 city3)
	))

(:metric minimize (+ (* 2 (total-time))  (* 5 (total-fuel-used))))
)
