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
	(= (capacity plane1) 5596)
	(= (fuel plane1) 318)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 5)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 4)
	(at plane2 city1)
	(= (capacity plane2) 8823)
	(= (fuel plane2) 1018)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 11)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 5)
	(at plane3 city1)
	(= (capacity plane3) 6118)
	(= (fuel plane3) 709)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 5)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 7)
	(at plane4 city3)
	(= (capacity plane4) 5582)
	(= (fuel plane4) 1423)
	(= (slow-burn plane4) 2)
	(= (fast-burn plane4) 4)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 5)
	(at person1 city1)
	(at person2 city1)
	(at person3 city2)
	(at person4 city3)
	(at person5 city3)
	(at person6 city3)
	(at person7 city1)
	(at person8 city3)
	(at person9 city1)
	(at person10 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 676)
	(= (distance city0 city2) 676)
	(= (distance city0 city3) 607)
	(= (distance city0 city4) 974)
	(= (distance city0 city5) 765)
	(= (distance city1 city0) 676)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 618)
	(= (distance city1 city3) 590)
	(= (distance city1 city4) 866)
	(= (distance city1 city5) 784)
	(= (distance city2 city0) 676)
	(= (distance city2 city1) 618)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 901)
	(= (distance city2 city4) 587)
	(= (distance city2 city5) 841)
	(= (distance city3 city0) 607)
	(= (distance city3 city1) 590)
	(= (distance city3 city2) 901)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 913)
	(= (distance city3 city5) 542)
	(= (distance city4 city0) 974)
	(= (distance city4 city1) 866)
	(= (distance city4 city2) 587)
	(= (distance city4 city3) 913)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 689)
	(= (distance city5 city0) 765)
	(= (distance city5 city1) 784)
	(= (distance city5 city2) 841)
	(= (distance city5 city3) 542)
	(= (distance city5 city4) 689)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city4)
	(at plane2 city5)
	(at plane4 city1)
	(at person1 city0)
	(at person2 city5)
	(at person3 city2)
	(at person4 city3)
	(at person5 city5)
	(at person6 city2)
	(at person7 city3)
	(at person8 city4)
	(at person9 city3)
	(at person10 city5)
	))

(:metric minimize (+ (* 2 (total-time))  (* 2 (total-fuel-used))))
)
