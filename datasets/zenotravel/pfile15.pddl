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
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 7845)
	(= (fuel plane1) 2590)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 11)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 4)
	(at person1 city0)
	(at person2 city3)
	(at person3 city1)
	(at person4 city1)
	(at person5 city3)
	(at person6 city4)
	(at person7 city2)
	(at person8 city0)
	(at person9 city0)
	(at person10 city5)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 677)
	(= (distance city0 city2) 836)
	(= (distance city0 city3) 757)
	(= (distance city0 city4) 638)
	(= (distance city0 city5) 991)
	(= (distance city1 city0) 677)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 891)
	(= (distance city1 city3) 692)
	(= (distance city1 city4) 696)
	(= (distance city1 city5) 523)
	(= (distance city2 city0) 836)
	(= (distance city2 city1) 891)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 617)
	(= (distance city2 city4) 551)
	(= (distance city2 city5) 693)
	(= (distance city3 city0) 757)
	(= (distance city3 city1) 692)
	(= (distance city3 city2) 617)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 988)
	(= (distance city3 city5) 865)
	(= (distance city4 city0) 638)
	(= (distance city4 city1) 696)
	(= (distance city4 city2) 551)
	(= (distance city4 city3) 988)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 662)
	(= (distance city5 city0) 991)
	(= (distance city5 city1) 523)
	(= (distance city5 city2) 693)
	(= (distance city5 city3) 865)
	(= (distance city5 city4) 662)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city1)
	(at person2 city3)
	(at person3 city0)
	(at person4 city5)
	(at person5 city5)
	(at person7 city4)
	(at person8 city0)
	(at person9 city3)
	(at person10 city3)
	))

(:metric minimize (+ (* 4 (total-time))  (* 1 (total-fuel-used))))
)
