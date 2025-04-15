(define (problem ZTRAVEL-3-8)
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 9436)
	(= (fuel plane1) 3003)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 10)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 4)
	(at plane2 city3)
	(= (capacity plane2) 7696)
	(= (fuel plane2) 2765)
	(= (slow-burn plane2) 3)
	(= (fast-burn plane2) 7)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 2)
	(at plane3 city2)
	(= (capacity plane3) 3050)
	(= (fuel plane3) 427)
	(= (slow-burn plane3) 1)
	(= (fast-burn plane3) 2)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 3)
	(at person1 city1)
	(at person2 city3)
	(at person3 city5)
	(at person4 city3)
	(at person5 city4)
	(at person6 city2)
	(at person7 city3)
	(at person8 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 978)
	(= (distance city0 city2) 794)
	(= (distance city0 city3) 640)
	(= (distance city0 city4) 980)
	(= (distance city0 city5) 700)
	(= (distance city1 city0) 978)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 793)
	(= (distance city1 city3) 526)
	(= (distance city1 city4) 987)
	(= (distance city1 city5) 691)
	(= (distance city2 city0) 794)
	(= (distance city2 city1) 793)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 884)
	(= (distance city2 city4) 666)
	(= (distance city2 city5) 888)
	(= (distance city3 city0) 640)
	(= (distance city3 city1) 526)
	(= (distance city3 city2) 884)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 806)
	(= (distance city3 city5) 987)
	(= (distance city4 city0) 980)
	(= (distance city4 city1) 987)
	(= (distance city4 city2) 666)
	(= (distance city4 city3) 806)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 814)
	(= (distance city5 city0) 700)
	(= (distance city5 city1) 691)
	(= (distance city5 city2) 888)
	(= (distance city5 city3) 987)
	(= (distance city5 city4) 814)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane2 city0)
	(at person1 city4)
	(at person2 city0)
	(at person3 city2)
	(at person4 city2)
	(at person5 city2)
	(at person6 city3)
	(at person7 city2)
	(at person8 city3)
	))

(:metric minimize (+ (* 3 (total-time))  (* 1 (total-fuel-used))))
)
