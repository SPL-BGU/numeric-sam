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
	(at plane1 city4)
	(= (capacity plane1) 11500)
	(= (fuel plane1) 1965)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 11)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 4)
	(at person1 city2)
	(at person2 city3)
	(at person3 city0)
	(at person4 city4)
	(at person5 city6)
	(at person6 city4)
	(at person7 city2)
	(at person8 city4)
	(at person9 city6)
	(at person10 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 568)
	(= (distance city0 city2) 564)
	(= (distance city0 city3) 782)
	(= (distance city0 city4) 919)
	(= (distance city0 city5) 576)
	(= (distance city0 city6) 542)
	(= (distance city1 city0) 568)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 660)
	(= (distance city1 city3) 750)
	(= (distance city1 city4) 880)
	(= (distance city1 city5) 820)
	(= (distance city1 city6) 824)
	(= (distance city2 city0) 564)
	(= (distance city2 city1) 660)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 635)
	(= (distance city2 city4) 873)
	(= (distance city2 city5) 614)
	(= (distance city2 city6) 665)
	(= (distance city3 city0) 782)
	(= (distance city3 city1) 750)
	(= (distance city3 city2) 635)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 747)
	(= (distance city3 city5) 848)
	(= (distance city3 city6) 862)
	(= (distance city4 city0) 919)
	(= (distance city4 city1) 880)
	(= (distance city4 city2) 873)
	(= (distance city4 city3) 747)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 769)
	(= (distance city4 city6) 872)
	(= (distance city5 city0) 576)
	(= (distance city5 city1) 820)
	(= (distance city5 city2) 614)
	(= (distance city5 city3) 848)
	(= (distance city5 city4) 769)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 851)
	(= (distance city6 city0) 542)
	(= (distance city6 city1) 824)
	(= (distance city6 city2) 665)
	(= (distance city6 city3) 862)
	(= (distance city6 city4) 872)
	(= (distance city6 city5) 851)
	(= (distance city6 city6) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city6)
	(at person2 city6)
	(at person3 city5)
	(at person4 city0)
	(at person5 city2)
	(at person6 city0)
	(at person7 city5)
	(at person8 city5)
	(at person9 city6)
	(at person10 city1)
	))

(:metric minimize (+ (* 4 (total-time))  (* 3 (total-fuel-used))))
)
