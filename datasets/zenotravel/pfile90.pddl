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
	(at plane1 city4)
	(= (capacity plane1) 12232)
	(= (fuel plane1) 2073)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 13)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 7)
	(at person1 city1)
	(at person2 city0)
	(at person3 city4)
	(at person4 city2)
	(at person5 city5)
	(at person6 city4)
	(at person7 city4)
	(at person8 city0)
	(at person9 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 868)
	(= (distance city0 city2) 829)
	(= (distance city0 city3) 608)
	(= (distance city0 city4) 894)
	(= (distance city0 city5) 770)
	(= (distance city1 city0) 868)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 924)
	(= (distance city1 city3) 983)
	(= (distance city1 city4) 763)
	(= (distance city1 city5) 732)
	(= (distance city2 city0) 829)
	(= (distance city2 city1) 924)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 545)
	(= (distance city2 city4) 911)
	(= (distance city2 city5) 518)
	(= (distance city3 city0) 608)
	(= (distance city3 city1) 983)
	(= (distance city3 city2) 545)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 541)
	(= (distance city3 city5) 562)
	(= (distance city4 city0) 894)
	(= (distance city4 city1) 763)
	(= (distance city4 city2) 911)
	(= (distance city4 city3) 541)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 852)
	(= (distance city5 city0) 770)
	(= (distance city5 city1) 732)
	(= (distance city5 city2) 518)
	(= (distance city5 city3) 562)
	(= (distance city5 city4) 852)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city0)
	(at person2 city2)
	(at person3 city3)
	(at person4 city2)
	(at person5 city5)
	(at person6 city5)
	(at person7 city3)
	(at person8 city2)
	(at person9 city1)
	))

(:metric minimize (+ (* 4 (total-time))  (* 2 (total-fuel-used))))
)
