(define (problem ZTRAVEL-5-10)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
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
	(at plane1 city5)
	(= (capacity plane1) 4548)
	(= (fuel plane1) 887)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 4)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 2)
	(at plane2 city3)
	(= (capacity plane2) 5736)
	(= (fuel plane2) 1540)
	(= (slow-burn plane2) 2)
	(= (fast-burn plane2) 4)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 4)
	(at plane3 city4)
	(= (capacity plane3) 5528)
	(= (fuel plane3) 494)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 7)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 1)
	(at plane4 city5)
	(= (capacity plane4) 4972)
	(= (fuel plane4) 872)
	(= (slow-burn plane4) 2)
	(= (fast-burn plane4) 6)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 2)
	(at plane5 city2)
	(= (capacity plane5) 10627)
	(= (fuel plane5) 670)
	(= (slow-burn plane5) 5)
	(= (fast-burn plane5) 15)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 3)
	(at person1 city3)
	(at person2 city1)
	(at person3 city4)
	(at person4 city4)
	(at person5 city4)
	(at person6 city1)
	(at person7 city2)
	(at person8 city3)
	(at person9 city4)
	(at person10 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 780)
	(= (distance city0 city2) 612)
	(= (distance city0 city3) 696)
	(= (distance city0 city4) 721)
	(= (distance city0 city5) 642)
	(= (distance city1 city0) 780)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 572)
	(= (distance city1 city3) 781)
	(= (distance city1 city4) 932)
	(= (distance city1 city5) 947)
	(= (distance city2 city0) 612)
	(= (distance city2 city1) 572)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 615)
	(= (distance city2 city4) 502)
	(= (distance city2 city5) 730)
	(= (distance city3 city0) 696)
	(= (distance city3 city1) 781)
	(= (distance city3 city2) 615)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 588)
	(= (distance city3 city5) 813)
	(= (distance city4 city0) 721)
	(= (distance city4 city1) 932)
	(= (distance city4 city2) 502)
	(= (distance city4 city3) 588)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 972)
	(= (distance city5 city0) 642)
	(= (distance city5 city1) 947)
	(= (distance city5 city2) 730)
	(= (distance city5 city3) 813)
	(= (distance city5 city4) 972)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city0)
	(at plane3 city1)
	(at plane5 city0)
	(at person2 city2)
	(at person3 city2)
	(at person4 city3)
	(at person5 city5)
	(at person6 city3)
	(at person7 city3)
	(at person8 city2)
	(at person9 city3)
	(at person10 city5)
	))

(:metric minimize (+ (* 2 (total-time))  (* 5 (total-fuel-used))))
)
