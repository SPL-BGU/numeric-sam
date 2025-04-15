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
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 2230)
	(= (fuel plane1) 374)
	(= (slow-burn plane1) 1)
	(= (fast-burn plane1) 2)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 5)
	(at plane2 city3)
	(= (capacity plane2) 6358)
	(= (fuel plane2) 2536)
	(= (slow-burn plane2) 3)
	(= (fast-burn plane2) 9)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 7)
	(at person1 city4)
	(at person2 city5)
	(at person3 city5)
	(at person4 city0)
	(at person5 city4)
	(at person6 city1)
	(at person7 city4)
	(at person8 city0)
	(at person9 city5)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 744)
	(= (distance city0 city2) 775)
	(= (distance city0 city3) 898)
	(= (distance city0 city4) 946)
	(= (distance city0 city5) 531)
	(= (distance city1 city0) 744)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 987)
	(= (distance city1 city3) 899)
	(= (distance city1 city4) 688)
	(= (distance city1 city5) 565)
	(= (distance city2 city0) 775)
	(= (distance city2 city1) 987)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 565)
	(= (distance city2 city4) 803)
	(= (distance city2 city5) 947)
	(= (distance city3 city0) 898)
	(= (distance city3 city1) 899)
	(= (distance city3 city2) 565)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 561)
	(= (distance city3 city5) 588)
	(= (distance city4 city0) 946)
	(= (distance city4 city1) 688)
	(= (distance city4 city2) 803)
	(= (distance city4 city3) 561)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 727)
	(= (distance city5 city0) 531)
	(= (distance city5 city1) 565)
	(= (distance city5 city2) 947)
	(= (distance city5 city3) 588)
	(= (distance city5 city4) 727)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city1)
	(at person1 city0)
	(at person2 city4)
	(at person3 city5)
	(at person4 city0)
	(at person5 city2)
	(at person6 city4)
	(at person7 city4)
	(at person8 city1)
	(at person9 city1)
	))

(:metric minimize (+ (* 1 (total-time))  (* 3 (total-fuel-used))))
)
