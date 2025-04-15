(define (problem ZTRAVEL-4-6)
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 6087)
	(= (fuel plane1) 1059)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 7)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 3)
	(at plane2 city0)
	(= (capacity plane2) 8287)
	(= (fuel plane2) 2328)
	(= (slow-burn plane2) 3)
	(= (fast-burn plane2) 7)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 7)
	(at plane3 city3)
	(= (capacity plane3) 10051)
	(= (fuel plane3) 3059)
	(= (slow-burn plane3) 4)
	(= (fast-burn plane3) 14)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 2)
	(at plane4 city2)
	(= (capacity plane4) 10020)
	(= (fuel plane4) 91)
	(= (slow-burn plane4) 4)
	(= (fast-burn plane4) 9)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 10)
	(at person1 city1)
	(at person2 city0)
	(at person3 city1)
	(at person4 city1)
	(at person5 city1)
	(at person6 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 567)
	(= (distance city0 city2) 981)
	(= (distance city0 city3) 899)
	(= (distance city1 city0) 567)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 701)
	(= (distance city1 city3) 542)
	(= (distance city2 city0) 981)
	(= (distance city2 city1) 701)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 902)
	(= (distance city3 city0) 899)
	(= (distance city3 city1) 542)
	(= (distance city3 city2) 902)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane4 city0)
	(at person1 city1)
	(at person2 city1)
	(at person3 city0)
	(at person4 city3)
	(at person5 city3)
	(at person6 city2)
	))

(:metric minimize (+ (* 4 (total-time))  (* 1 (total-fuel-used))))
)
