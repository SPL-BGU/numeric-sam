(define (problem ZTRAVEL-4-9)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
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
	(at plane1 city5)
	(= (capacity plane1) 7579)
	(= (fuel plane1) 2340)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 8)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 2)
	(at plane2 city5)
	(= (capacity plane2) 8887)
	(= (fuel plane2) 3715)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 13)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 1)
	(at plane3 city0)
	(= (capacity plane3) 5305)
	(= (fuel plane3) 1035)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 4)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 10)
	(at plane4 city4)
	(= (capacity plane4) 8826)
	(= (fuel plane4) 2997)
	(= (slow-burn plane4) 3)
	(= (fast-burn plane4) 6)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 8)
	(at person1 city0)
	(at person2 city1)
	(at person3 city2)
	(at person4 city3)
	(at person5 city4)
	(at person6 city5)
	(at person7 city4)
	(at person8 city2)
	(at person9 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 718)
	(= (distance city0 city2) 741)
	(= (distance city0 city3) 871)
	(= (distance city0 city4) 576)
	(= (distance city0 city5) 685)
	(= (distance city1 city0) 718)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 973)
	(= (distance city1 city3) 896)
	(= (distance city1 city4) 841)
	(= (distance city1 city5) 813)
	(= (distance city2 city0) 741)
	(= (distance city2 city1) 973)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 576)
	(= (distance city2 city4) 885)
	(= (distance city2 city5) 652)
	(= (distance city3 city0) 871)
	(= (distance city3 city1) 896)
	(= (distance city3 city2) 576)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 921)
	(= (distance city3 city5) 801)
	(= (distance city4 city0) 576)
	(= (distance city4 city1) 841)
	(= (distance city4 city2) 885)
	(= (distance city4 city3) 921)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 899)
	(= (distance city5 city0) 685)
	(= (distance city5 city1) 813)
	(= (distance city5 city2) 652)
	(= (distance city5 city3) 801)
	(= (distance city5 city4) 899)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city5)
	(at person2 city3)
	(at person3 city3)
	(at person5 city5)
	(at person6 city0)
	(at person7 city4)
	(at person8 city0)
	(at person9 city5)
	))

(:metric minimize (+ (* 2 (total-time))  (* 3 (total-fuel-used))))
)
