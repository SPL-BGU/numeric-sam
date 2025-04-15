(define (problem ZTRAVEL-2-6)
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	)
(:init
	(at plane1 city5)
	(= (capacity plane1) 9205)
	(= (fuel plane1) 478)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 10)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 2)
	(at plane2 city3)
	(= (capacity plane2) 11626)
	(= (fuel plane2) 1927)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 11)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 10)
	(at person1 city1)
	(at person2 city5)
	(at person3 city5)
	(at person4 city5)
	(at person5 city5)
	(at person6 city5)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 636)
	(= (distance city0 city2) 554)
	(= (distance city0 city3) 901)
	(= (distance city0 city4) 742)
	(= (distance city0 city5) 611)
	(= (distance city1 city0) 636)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 534)
	(= (distance city1 city3) 796)
	(= (distance city1 city4) 920)
	(= (distance city1 city5) 573)
	(= (distance city2 city0) 554)
	(= (distance city2 city1) 534)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 771)
	(= (distance city2 city4) 569)
	(= (distance city2 city5) 595)
	(= (distance city3 city0) 901)
	(= (distance city3 city1) 796)
	(= (distance city3 city2) 771)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 557)
	(= (distance city3 city5) 709)
	(= (distance city4 city0) 742)
	(= (distance city4 city1) 920)
	(= (distance city4 city2) 569)
	(= (distance city4 city3) 557)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 947)
	(= (distance city5 city0) 611)
	(= (distance city5 city1) 573)
	(= (distance city5 city2) 595)
	(= (distance city5 city3) 709)
	(= (distance city5 city4) 947)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city3)
	(at person1 city4)
	(at person2 city5)
	(at person3 city1)
	(at person4 city5)
	(at person5 city0)
	(at person6 city5)
	))

(:metric minimize (+ (* 4 (total-time))  (* 1 (total-fuel-used))))
)
