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
	city4 - city
	city5 - city
	)
(:init
	(at plane1 city5)
	(= (capacity plane1) 13670)
	(= (fuel plane1) 3525)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 12)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 2)
	(at plane2 city0)
	(= (capacity plane2) 2999)
	(= (fuel plane2) 324)
	(= (slow-burn plane2) 1)
	(= (fast-burn plane2) 2)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 1)
	(at plane3 city3)
	(= (capacity plane3) 2351)
	(= (fuel plane3) 547)
	(= (slow-burn plane3) 1)
	(= (fast-burn plane3) 2)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 8)
	(at plane4 city4)
	(= (capacity plane4) 8892)
	(= (fuel plane4) 2949)
	(= (slow-burn plane4) 3)
	(= (fast-burn plane4) 6)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 4)
	(at plane5 city5)
	(= (capacity plane5) 10932)
	(= (fuel plane5) 988)
	(= (slow-burn plane5) 5)
	(= (fast-burn plane5) 12)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 1)
	(at person1 city0)
	(at person2 city2)
	(at person3 city0)
	(at person4 city5)
	(at person5 city1)
	(at person6 city2)
	(at person7 city4)
	(at person8 city5)
	(at person9 city0)
	(at person10 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 880)
	(= (distance city0 city2) 524)
	(= (distance city0 city3) 957)
	(= (distance city0 city4) 902)
	(= (distance city0 city5) 556)
	(= (distance city1 city0) 880)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 868)
	(= (distance city1 city3) 943)
	(= (distance city1 city4) 510)
	(= (distance city1 city5) 525)
	(= (distance city2 city0) 524)
	(= (distance city2 city1) 868)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 894)
	(= (distance city2 city4) 726)
	(= (distance city2 city5) 611)
	(= (distance city3 city0) 957)
	(= (distance city3 city1) 943)
	(= (distance city3 city2) 894)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 716)
	(= (distance city3 city5) 802)
	(= (distance city4 city0) 902)
	(= (distance city4 city1) 510)
	(= (distance city4 city2) 726)
	(= (distance city4 city3) 716)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 765)
	(= (distance city5 city0) 556)
	(= (distance city5 city1) 525)
	(= (distance city5 city2) 611)
	(= (distance city5 city3) 802)
	(= (distance city5 city4) 765)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city4)
	(at plane2 city2)
	(at plane3 city0)
	(at person1 city2)
	(at person2 city1)
	(at person3 city5)
	(at person4 city0)
	(at person5 city5)
	(at person6 city0)
	(at person8 city2)
	(at person9 city3)
	(at person10 city3)
	))

(:metric minimize (+ (* 4 (total-time))  (* 4 (total-fuel-used))))
)
