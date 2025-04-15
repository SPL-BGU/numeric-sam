(define (problem ZTRAVEL-2-5)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	)
(:init
	(at plane1 city3)
	(= (capacity plane1) 10938)
	(= (fuel plane1) 3319)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 9)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 8)
	(at plane2 city0)
	(= (capacity plane2) 4278)
	(= (fuel plane2) 252)
	(= (slow-burn plane2) 2)
	(= (fast-burn plane2) 4)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 2)
	(at person1 city5)
	(at person2 city5)
	(at person3 city0)
	(at person4 city4)
	(at person5 city5)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 883)
	(= (distance city0 city2) 968)
	(= (distance city0 city3) 515)
	(= (distance city0 city4) 521)
	(= (distance city0 city5) 824)
	(= (distance city1 city0) 883)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 890)
	(= (distance city1 city3) 955)
	(= (distance city1 city4) 791)
	(= (distance city1 city5) 593)
	(= (distance city2 city0) 968)
	(= (distance city2 city1) 890)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 938)
	(= (distance city2 city4) 507)
	(= (distance city2 city5) 676)
	(= (distance city3 city0) 515)
	(= (distance city3 city1) 955)
	(= (distance city3 city2) 938)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 618)
	(= (distance city3 city5) 730)
	(= (distance city4 city0) 521)
	(= (distance city4 city1) 791)
	(= (distance city4 city2) 507)
	(= (distance city4 city3) 618)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 734)
	(= (distance city5 city0) 824)
	(= (distance city5 city1) 593)
	(= (distance city5 city2) 676)
	(= (distance city5 city3) 730)
	(= (distance city5 city4) 734)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane2 city1)
	(at person1 city4)
	(at person2 city4)
	(at person3 city1)
	(at person4 city4)
	(at person5 city3)
	))

(:metric minimize (+ (* 4 (total-time))  (* 5 (total-fuel-used))))
)
