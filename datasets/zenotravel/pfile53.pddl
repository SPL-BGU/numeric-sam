(define (problem ZTRAVEL-4-10)
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
	person10 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	)
(:init
	(at plane1 city4)
	(= (capacity plane1) 14382)
	(= (fuel plane1) 2639)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 16)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 2)
	(at plane2 city0)
	(= (capacity plane2) 4802)
	(= (fuel plane2) 1114)
	(= (slow-burn plane2) 2)
	(= (fast-burn plane2) 4)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 9)
	(at plane3 city2)
	(= (capacity plane3) 15311)
	(= (fuel plane3) 2352)
	(= (slow-burn plane3) 5)
	(= (fast-burn plane3) 11)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 9)
	(at plane4 city2)
	(= (capacity plane4) 10319)
	(= (fuel plane4) 2555)
	(= (slow-burn plane4) 4)
	(= (fast-burn plane4) 13)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 4)
	(at person1 city0)
	(at person2 city2)
	(at person3 city1)
	(at person4 city3)
	(at person5 city5)
	(at person6 city5)
	(at person7 city4)
	(at person8 city5)
	(at person9 city2)
	(at person10 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 988)
	(= (distance city0 city2) 937)
	(= (distance city0 city3) 759)
	(= (distance city0 city4) 723)
	(= (distance city0 city5) 990)
	(= (distance city1 city0) 988)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 589)
	(= (distance city1 city3) 805)
	(= (distance city1 city4) 804)
	(= (distance city1 city5) 830)
	(= (distance city2 city0) 937)
	(= (distance city2 city1) 589)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 979)
	(= (distance city2 city4) 985)
	(= (distance city2 city5) 522)
	(= (distance city3 city0) 759)
	(= (distance city3 city1) 805)
	(= (distance city3 city2) 979)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 867)
	(= (distance city3 city5) 853)
	(= (distance city4 city0) 723)
	(= (distance city4 city1) 804)
	(= (distance city4 city2) 985)
	(= (distance city4 city3) 867)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 756)
	(= (distance city5 city0) 990)
	(= (distance city5 city1) 830)
	(= (distance city5 city2) 522)
	(= (distance city5 city3) 853)
	(= (distance city5 city4) 756)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city2)
	(at person2 city1)
	(at person3 city1)
	(at person4 city4)
	(at person5 city0)
	(at person6 city1)
	(at person7 city3)
	(at person8 city2)
	(at person9 city5)
	(at person10 city4)
	))

(:metric minimize (+ (* 5 (total-time))  (* 2 (total-fuel-used))))
)
