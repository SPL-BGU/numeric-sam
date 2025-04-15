(define (problem ZTRAVEL-3-10)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
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
	(at plane1 city3)
	(= (capacity plane1) 6130)
	(= (fuel plane1) 1643)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 5)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 5)
	(at plane2 city0)
	(= (capacity plane2) 8435)
	(= (fuel plane2) 2199)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 8)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 7)
	(at plane3 city6)
	(= (capacity plane3) 8444)
	(= (fuel plane3) 850)
	(= (slow-burn plane3) 4)
	(= (fast-burn plane3) 11)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 1)
	(at person1 city4)
	(at person2 city3)
	(at person3 city3)
	(at person4 city3)
	(at person5 city4)
	(at person6 city2)
	(at person7 city6)
	(at person8 city5)
	(at person9 city0)
	(at person10 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 637)
	(= (distance city0 city2) 523)
	(= (distance city0 city3) 996)
	(= (distance city0 city4) 540)
	(= (distance city0 city5) 573)
	(= (distance city0 city6) 539)
	(= (distance city1 city0) 637)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 640)
	(= (distance city1 city3) 724)
	(= (distance city1 city4) 749)
	(= (distance city1 city5) 947)
	(= (distance city1 city6) 507)
	(= (distance city2 city0) 523)
	(= (distance city2 city1) 640)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 637)
	(= (distance city2 city4) 985)
	(= (distance city2 city5) 610)
	(= (distance city2 city6) 708)
	(= (distance city3 city0) 996)
	(= (distance city3 city1) 724)
	(= (distance city3 city2) 637)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 628)
	(= (distance city3 city5) 681)
	(= (distance city3 city6) 635)
	(= (distance city4 city0) 540)
	(= (distance city4 city1) 749)
	(= (distance city4 city2) 985)
	(= (distance city4 city3) 628)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 707)
	(= (distance city4 city6) 628)
	(= (distance city5 city0) 573)
	(= (distance city5 city1) 947)
	(= (distance city5 city2) 610)
	(= (distance city5 city3) 681)
	(= (distance city5 city4) 707)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 651)
	(= (distance city6 city0) 539)
	(= (distance city6 city1) 507)
	(= (distance city6 city2) 708)
	(= (distance city6 city3) 635)
	(= (distance city6 city4) 628)
	(= (distance city6 city5) 651)
	(= (distance city6 city6) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane3 city5)
	(at person1 city0)
	(at person2 city3)
	(at person3 city6)
	(at person4 city2)
	(at person5 city6)
	(at person6 city0)
	(at person7 city2)
	(at person8 city0)
	(at person9 city0)
	(at person10 city2)
	))

(:metric minimize (+ (* 1 (total-time))  (* 3 (total-fuel-used))))
)
