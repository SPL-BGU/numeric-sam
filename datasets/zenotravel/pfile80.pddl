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
	city5 - city
	city6 - city
	)
(:init
	(at plane1 city5)
	(= (capacity plane1) 2791)
	(= (fuel plane1) 762)
	(= (slow-burn plane1) 1)
	(= (fast-burn plane1) 2)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 2)
	(at plane2 city3)
	(= (capacity plane2) 7479)
	(= (fuel plane2) 1534)
	(= (slow-burn plane2) 3)
	(= (fast-burn plane2) 8)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 1)
	(at plane3 city4)
	(= (capacity plane3) 9224)
	(= (fuel plane3) 347)
	(= (slow-burn plane3) 4)
	(= (fast-burn plane3) 11)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 2)
	(at plane4 city0)
	(= (capacity plane4) 5597)
	(= (fuel plane4) 1921)
	(= (slow-burn plane4) 2)
	(= (fast-burn plane4) 4)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 3)
	(at person1 city1)
	(at person2 city4)
	(at person3 city5)
	(at person4 city2)
	(at person5 city5)
	(at person6 city1)
	(at person7 city1)
	(at person8 city4)
	(at person9 city4)
	(at person10 city5)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 825)
	(= (distance city0 city2) 762)
	(= (distance city0 city3) 594)
	(= (distance city0 city4) 792)
	(= (distance city0 city5) 848)
	(= (distance city0 city6) 569)
	(= (distance city1 city0) 825)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 926)
	(= (distance city1 city3) 785)
	(= (distance city1 city4) 953)
	(= (distance city1 city5) 869)
	(= (distance city1 city6) 610)
	(= (distance city2 city0) 762)
	(= (distance city2 city1) 926)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 707)
	(= (distance city2 city4) 782)
	(= (distance city2 city5) 549)
	(= (distance city2 city6) 892)
	(= (distance city3 city0) 594)
	(= (distance city3 city1) 785)
	(= (distance city3 city2) 707)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 861)
	(= (distance city3 city5) 988)
	(= (distance city3 city6) 794)
	(= (distance city4 city0) 792)
	(= (distance city4 city1) 953)
	(= (distance city4 city2) 782)
	(= (distance city4 city3) 861)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 952)
	(= (distance city4 city6) 693)
	(= (distance city5 city0) 848)
	(= (distance city5 city1) 869)
	(= (distance city5 city2) 549)
	(= (distance city5 city3) 988)
	(= (distance city5 city4) 952)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 863)
	(= (distance city6 city0) 569)
	(= (distance city6 city1) 610)
	(= (distance city6 city2) 892)
	(= (distance city6 city3) 794)
	(= (distance city6 city4) 693)
	(= (distance city6 city5) 863)
	(= (distance city6 city6) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city1)
	(at plane2 city2)
	(at person2 city1)
	(at person3 city1)
	(at person4 city2)
	(at person5 city3)
	(at person6 city6)
	(at person7 city4)
	(at person8 city6)
	(at person9 city4)
	(at person10 city2)
	))

(:metric minimize (+ (* 3 (total-time))  (* 2 (total-fuel-used))))
)
