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
	(at plane1 city3)
	(= (capacity plane1) 7903)
	(= (fuel plane1) 2253)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 9)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 3)
	(at plane2 city3)
	(= (capacity plane2) 2619)
	(= (fuel plane2) 849)
	(= (slow-burn plane2) 1)
	(= (fast-burn plane2) 3)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 7)
	(at plane3 city2)
	(= (capacity plane3) 11472)
	(= (fuel plane3) 336)
	(= (slow-burn plane3) 5)
	(= (fast-burn plane3) 14)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 5)
	(at person1 city4)
	(at person2 city1)
	(at person3 city0)
	(at person4 city4)
	(at person5 city4)
	(at person6 city2)
	(at person7 city0)
	(at person8 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 676)
	(= (distance city0 city2) 894)
	(= (distance city0 city3) 952)
	(= (distance city0 city4) 521)
	(= (distance city0 city5) 977)
	(= (distance city1 city0) 676)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 624)
	(= (distance city1 city3) 933)
	(= (distance city1 city4) 919)
	(= (distance city1 city5) 961)
	(= (distance city2 city0) 894)
	(= (distance city2 city1) 624)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 826)
	(= (distance city2 city4) 775)
	(= (distance city2 city5) 634)
	(= (distance city3 city0) 952)
	(= (distance city3 city1) 933)
	(= (distance city3 city2) 826)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 841)
	(= (distance city3 city5) 691)
	(= (distance city4 city0) 521)
	(= (distance city4 city1) 919)
	(= (distance city4 city2) 775)
	(= (distance city4 city3) 841)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 950)
	(= (distance city5 city0) 977)
	(= (distance city5 city1) 961)
	(= (distance city5 city2) 634)
	(= (distance city5 city3) 691)
	(= (distance city5 city4) 950)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city2)
	(at person2 city1)
	(at person3 city3)
	(at person4 city3)
	(at person5 city2)
	(at person6 city1)
	(at person7 city1)
	(at person8 city0)
	))

(:metric minimize (+ (* 2 (total-time))  (* 4 (total-fuel-used))))
)
