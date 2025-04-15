(define (problem ZTRAVEL-2-9)
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
	(= (capacity plane1) 11877)
	(= (fuel plane1) 3320)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 14)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 6)
	(at plane2 city0)
	(= (capacity plane2) 11609)
	(= (fuel plane2) 296)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 13)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 6)
	(at person1 city4)
	(at person2 city4)
	(at person3 city1)
	(at person4 city5)
	(at person5 city1)
	(at person6 city3)
	(at person7 city0)
	(at person8 city3)
	(at person9 city4)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 771)
	(= (distance city0 city2) 751)
	(= (distance city0 city3) 982)
	(= (distance city0 city4) 933)
	(= (distance city0 city5) 891)
	(= (distance city0 city6) 771)
	(= (distance city1 city0) 771)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 660)
	(= (distance city1 city3) 563)
	(= (distance city1 city4) 633)
	(= (distance city1 city5) 597)
	(= (distance city1 city6) 747)
	(= (distance city2 city0) 751)
	(= (distance city2 city1) 660)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 554)
	(= (distance city2 city4) 600)
	(= (distance city2 city5) 549)
	(= (distance city2 city6) 520)
	(= (distance city3 city0) 982)
	(= (distance city3 city1) 563)
	(= (distance city3 city2) 554)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 526)
	(= (distance city3 city5) 622)
	(= (distance city3 city6) 876)
	(= (distance city4 city0) 933)
	(= (distance city4 city1) 633)
	(= (distance city4 city2) 600)
	(= (distance city4 city3) 526)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 754)
	(= (distance city4 city6) 790)
	(= (distance city5 city0) 891)
	(= (distance city5 city1) 597)
	(= (distance city5 city2) 549)
	(= (distance city5 city3) 622)
	(= (distance city5 city4) 754)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 912)
	(= (distance city6 city0) 771)
	(= (distance city6 city1) 747)
	(= (distance city6 city2) 520)
	(= (distance city6 city3) 876)
	(= (distance city6 city4) 790)
	(= (distance city6 city5) 912)
	(= (distance city6 city6) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city4)
	(at person2 city5)
	(at person3 city3)
	(at person4 city6)
	(at person5 city4)
	(at person6 city0)
	(at person7 city1)
	(at person8 city0)
	(at person9 city1)
	))

(:metric minimize (+ (* 4 (total-time))  (* 5 (total-fuel-used))))
)
