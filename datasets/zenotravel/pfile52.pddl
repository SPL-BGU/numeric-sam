(define (problem ZTRAVEL-1-10)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
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
	(= (capacity plane1) 5815)
	(= (fuel plane1) 678)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 4)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 5)
	(at person1 city1)
	(at person2 city1)
	(at person3 city3)
	(at person4 city6)
	(at person5 city4)
	(at person6 city6)
	(at person7 city2)
	(at person8 city5)
	(at person9 city1)
	(at person10 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 807)
	(= (distance city0 city2) 728)
	(= (distance city0 city3) 606)
	(= (distance city0 city4) 560)
	(= (distance city0 city5) 521)
	(= (distance city0 city6) 976)
	(= (distance city1 city0) 807)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 872)
	(= (distance city1 city3) 654)
	(= (distance city1 city4) 925)
	(= (distance city1 city5) 934)
	(= (distance city1 city6) 726)
	(= (distance city2 city0) 728)
	(= (distance city2 city1) 872)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 938)
	(= (distance city2 city4) 914)
	(= (distance city2 city5) 823)
	(= (distance city2 city6) 507)
	(= (distance city3 city0) 606)
	(= (distance city3 city1) 654)
	(= (distance city3 city2) 938)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 676)
	(= (distance city3 city5) 695)
	(= (distance city3 city6) 591)
	(= (distance city4 city0) 560)
	(= (distance city4 city1) 925)
	(= (distance city4 city2) 914)
	(= (distance city4 city3) 676)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 996)
	(= (distance city4 city6) 677)
	(= (distance city5 city0) 521)
	(= (distance city5 city1) 934)
	(= (distance city5 city2) 823)
	(= (distance city5 city3) 695)
	(= (distance city5 city4) 996)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 846)
	(= (distance city6 city0) 976)
	(= (distance city6 city1) 726)
	(= (distance city6 city2) 507)
	(= (distance city6 city3) 591)
	(= (distance city6 city4) 677)
	(= (distance city6 city5) 846)
	(= (distance city6 city6) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city3)
	(at person1 city4)
	(at person2 city4)
	(at person3 city3)
	(at person4 city2)
	(at person5 city2)
	(at person6 city3)
	(at person7 city1)
	(at person8 city2)
	(at person9 city1)
	(at person10 city6)
	))

(:metric minimize (+ (* 1 (total-time))  (* 2 (total-fuel-used))))
)
