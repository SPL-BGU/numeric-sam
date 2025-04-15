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
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 5358)
	(= (fuel plane1) 986)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 7)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 10)
	(at plane2 city1)
	(= (capacity plane2) 10438)
	(= (fuel plane2) 3099)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 15)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 3)
	(at plane3 city0)
	(= (capacity plane3) 5018)
	(= (fuel plane3) 951)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 6)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 1)
	(at plane4 city0)
	(= (capacity plane4) 4919)
	(= (fuel plane4) 916)
	(= (slow-burn plane4) 2)
	(= (fast-burn plane4) 5)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 3)
	(at person1 city2)
	(at person2 city1)
	(at person3 city1)
	(at person4 city2)
	(at person5 city1)
	(at person6 city0)
	(at person7 city0)
	(at person8 city2)
	(at person9 city1)
	(at person10 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 526)
	(= (distance city0 city2) 556)
	(= (distance city1 city0) 526)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 714)
	(= (distance city2 city0) 556)
	(= (distance city2 city1) 714)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city0)
	(at plane2 city0)
	(at plane3 city0)
	(at person1 city1)
	(at person2 city0)
	(at person3 city0)
	(at person4 city1)
	(at person5 city2)
	(at person6 city1)
	(at person7 city1)
	(at person8 city2)
	(at person9 city0)
	(at person10 city0)
	))

(:metric minimize (+ (* 1 (total-time))  (* 3 (total-fuel-used))))
)
