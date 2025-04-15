(define (problem ZTRAVEL-5-8)
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	)
(:init
	(at plane1 city3)
	(= (capacity plane1) 9182)
	(= (fuel plane1) 3097)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 13)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 6)
	(at plane2 city5)
	(= (capacity plane2) 11302)
	(= (fuel plane2) 1686)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 17)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 7)
	(at plane3 city5)
	(= (capacity plane3) 8589)
	(= (fuel plane3) 419)
	(= (slow-burn plane3) 3)
	(= (fast-burn plane3) 6)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 1)
	(at plane4 city3)
	(= (capacity plane4) 12844)
	(= (fuel plane4) 1045)
	(= (slow-burn plane4) 5)
	(= (fast-burn plane4) 17)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 8)
	(at plane5 city3)
	(= (capacity plane5) 6642)
	(= (fuel plane5) 2953)
	(= (slow-burn plane5) 3)
	(= (fast-burn plane5) 9)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 1)
	(at person1 city5)
	(at person2 city3)
	(at person3 city2)
	(at person4 city0)
	(at person5 city4)
	(at person6 city4)
	(at person7 city3)
	(at person8 city4)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 664)
	(= (distance city0 city2) 591)
	(= (distance city0 city3) 682)
	(= (distance city0 city4) 615)
	(= (distance city0 city5) 961)
	(= (distance city1 city0) 664)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 803)
	(= (distance city1 city3) 802)
	(= (distance city1 city4) 522)
	(= (distance city1 city5) 580)
	(= (distance city2 city0) 591)
	(= (distance city2 city1) 803)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 515)
	(= (distance city2 city4) 743)
	(= (distance city2 city5) 646)
	(= (distance city3 city0) 682)
	(= (distance city3 city1) 802)
	(= (distance city3 city2) 515)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 702)
	(= (distance city3 city5) 504)
	(= (distance city4 city0) 615)
	(= (distance city4 city1) 522)
	(= (distance city4 city2) 743)
	(= (distance city4 city3) 702)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 533)
	(= (distance city5 city0) 961)
	(= (distance city5 city1) 580)
	(= (distance city5 city2) 646)
	(= (distance city5 city3) 504)
	(= (distance city5 city4) 533)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city0)
	(at person2 city3)
	(at person3 city3)
	(at person4 city1)
	(at person5 city3)
	(at person6 city1)
	(at person7 city1)
	(at person8 city4)
	))

(:metric minimize (+ (* 5 (total-time))  (* 5 (total-fuel-used))))
)
