(define (problem ZTRAVEL-1-9)
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
	(= (capacity plane1) 10565)
	(= (fuel plane1) 2756)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 9)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 7)
	(at person1 city3)
	(at person2 city6)
	(at person3 city4)
	(at person4 city2)
	(at person5 city4)
	(at person6 city2)
	(at person7 city3)
	(at person8 city6)
	(at person9 city4)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 542)
	(= (distance city0 city2) 589)
	(= (distance city0 city3) 701)
	(= (distance city0 city4) 933)
	(= (distance city0 city5) 717)
	(= (distance city0 city6) 762)
	(= (distance city1 city0) 542)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 650)
	(= (distance city1 city3) 877)
	(= (distance city1 city4) 566)
	(= (distance city1 city5) 541)
	(= (distance city1 city6) 881)
	(= (distance city2 city0) 589)
	(= (distance city2 city1) 650)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 783)
	(= (distance city2 city4) 587)
	(= (distance city2 city5) 654)
	(= (distance city2 city6) 877)
	(= (distance city3 city0) 701)
	(= (distance city3 city1) 877)
	(= (distance city3 city2) 783)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 783)
	(= (distance city3 city5) 854)
	(= (distance city3 city6) 576)
	(= (distance city4 city0) 933)
	(= (distance city4 city1) 566)
	(= (distance city4 city2) 587)
	(= (distance city4 city3) 783)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 842)
	(= (distance city4 city6) 520)
	(= (distance city5 city0) 717)
	(= (distance city5 city1) 541)
	(= (distance city5 city2) 654)
	(= (distance city5 city3) 854)
	(= (distance city5 city4) 842)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 761)
	(= (distance city6 city0) 762)
	(= (distance city6 city1) 881)
	(= (distance city6 city2) 877)
	(= (distance city6 city3) 576)
	(= (distance city6 city4) 520)
	(= (distance city6 city5) 761)
	(= (distance city6 city6) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city0)
	(at person2 city4)
	(at person3 city5)
	(at person4 city2)
	(at person5 city0)
	(at person6 city1)
	(at person7 city5)
	(at person8 city2)
	(at person9 city6)
	))

(:metric minimize (+ (* 1 (total-time))  (* 5 (total-fuel-used))))
)
