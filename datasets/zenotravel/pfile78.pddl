(define (problem ZTRAVEL-1-6)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 2672)
	(= (fuel plane1) 557)
	(= (slow-burn plane1) 1)
	(= (fast-burn plane1) 2)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 4)
	(at person1 city4)
	(at person2 city5)
	(at person3 city3)
	(at person4 city2)
	(at person5 city2)
	(at person6 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 715)
	(= (distance city0 city2) 847)
	(= (distance city0 city3) 790)
	(= (distance city0 city4) 970)
	(= (distance city0 city5) 912)
	(= (distance city1 city0) 715)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 596)
	(= (distance city1 city3) 563)
	(= (distance city1 city4) 988)
	(= (distance city1 city5) 646)
	(= (distance city2 city0) 847)
	(= (distance city2 city1) 596)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 783)
	(= (distance city2 city4) 848)
	(= (distance city2 city5) 542)
	(= (distance city3 city0) 790)
	(= (distance city3 city1) 563)
	(= (distance city3 city2) 783)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 628)
	(= (distance city3 city5) 994)
	(= (distance city4 city0) 970)
	(= (distance city4 city1) 988)
	(= (distance city4 city2) 848)
	(= (distance city4 city3) 628)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 897)
	(= (distance city5 city0) 912)
	(= (distance city5 city1) 646)
	(= (distance city5 city2) 542)
	(= (distance city5 city3) 994)
	(= (distance city5 city4) 897)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city3)
	(at person1 city3)
	(at person2 city5)
	(at person3 city3)
	(at person4 city4)
	(at person5 city0)
	(at person6 city0)
	))

(:metric minimize (+ (* 5 (total-time))  (* 1 (total-fuel-used))))
)
