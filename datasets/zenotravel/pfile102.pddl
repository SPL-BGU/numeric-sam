(define (problem ZTRAVEL-5-7)
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	)
(:init
	(at plane1 city4)
	(= (capacity plane1) 14715)
	(= (fuel plane1) 3030)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 14)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 10)
	(at plane2 city4)
	(= (capacity plane2) 11684)
	(= (fuel plane2) 3299)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 14)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 8)
	(at plane3 city0)
	(= (capacity plane3) 8790)
	(= (fuel plane3) 324)
	(= (slow-burn plane3) 3)
	(= (fast-burn plane3) 10)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 3)
	(at plane4 city1)
	(= (capacity plane4) 5679)
	(= (fuel plane4) 1030)
	(= (slow-burn plane4) 2)
	(= (fast-burn plane4) 5)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 9)
	(at plane5 city1)
	(= (capacity plane5) 7180)
	(= (fuel plane5) 215)
	(= (slow-burn plane5) 3)
	(= (fast-burn plane5) 10)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 2)
	(at person1 city3)
	(at person2 city2)
	(at person3 city4)
	(at person4 city1)
	(at person5 city2)
	(at person6 city1)
	(at person7 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 518)
	(= (distance city0 city2) 557)
	(= (distance city0 city3) 675)
	(= (distance city0 city4) 815)
	(= (distance city1 city0) 518)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 874)
	(= (distance city1 city3) 500)
	(= (distance city1 city4) 649)
	(= (distance city2 city0) 557)
	(= (distance city2 city1) 874)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 783)
	(= (distance city2 city4) 816)
	(= (distance city3 city0) 675)
	(= (distance city3 city1) 500)
	(= (distance city3 city2) 783)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 803)
	(= (distance city4 city0) 815)
	(= (distance city4 city1) 649)
	(= (distance city4 city2) 816)
	(= (distance city4 city3) 803)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city4)
	(at plane2 city0)
	(at plane3 city0)
	(at plane5 city0)
	(at person1 city4)
	(at person2 city1)
	(at person3 city2)
	(at person4 city0)
	(at person5 city3)
	(at person6 city0)
	(at person7 city3)
	))

(:metric minimize (+ (* 1 (total-time))  (* 2 (total-fuel-used))))
)
