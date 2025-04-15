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
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 2312)
	(= (fuel plane1) 498)
	(= (slow-burn plane1) 1)
	(= (fast-burn plane1) 3)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 10)
	(at person1 city1)
	(at person2 city5)
	(at person3 city4)
	(at person4 city5)
	(at person5 city1)
	(at person6 city1)
	(at person7 city4)
	(at person8 city2)
	(at person9 city5)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 563)
	(= (distance city0 city2) 926)
	(= (distance city0 city3) 667)
	(= (distance city0 city4) 682)
	(= (distance city0 city5) 542)
	(= (distance city1 city0) 563)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 751)
	(= (distance city1 city3) 637)
	(= (distance city1 city4) 690)
	(= (distance city1 city5) 997)
	(= (distance city2 city0) 926)
	(= (distance city2 city1) 751)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 732)
	(= (distance city2 city4) 513)
	(= (distance city2 city5) 758)
	(= (distance city3 city0) 667)
	(= (distance city3 city1) 637)
	(= (distance city3 city2) 732)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 570)
	(= (distance city3 city5) 759)
	(= (distance city4 city0) 682)
	(= (distance city4 city1) 690)
	(= (distance city4 city2) 513)
	(= (distance city4 city3) 570)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 732)
	(= (distance city5 city0) 542)
	(= (distance city5 city1) 997)
	(= (distance city5 city2) 758)
	(= (distance city5 city3) 759)
	(= (distance city5 city4) 732)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city2)
	(at person2 city1)
	(at person3 city3)
	(at person4 city0)
	(at person5 city0)
	(at person6 city3)
	(at person7 city0)
	(at person8 city0)
	(at person9 city1)
	))

(:metric minimize (+ (* 1 (total-time))  (* 5 (total-fuel-used))))
)
