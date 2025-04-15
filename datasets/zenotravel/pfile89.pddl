(define (problem ZTRAVEL-5-6)
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 2976)
	(= (fuel plane1) 312)
	(= (slow-burn plane1) 1)
	(= (fast-burn plane1) 3)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 4)
	(at plane2 city3)
	(= (capacity plane2) 5193)
	(= (fuel plane2) 1057)
	(= (slow-burn plane2) 2)
	(= (fast-burn plane2) 7)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 6)
	(at plane3 city2)
	(= (capacity plane3) 4525)
	(= (fuel plane3) 174)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 4)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 7)
	(at plane4 city3)
	(= (capacity plane4) 9648)
	(= (fuel plane4) 1239)
	(= (slow-burn plane4) 4)
	(= (fast-burn plane4) 13)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 1)
	(at plane5 city3)
	(= (capacity plane5) 14204)
	(= (fuel plane5) 4369)
	(= (slow-burn plane5) 5)
	(= (fast-burn plane5) 14)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 1)
	(at person1 city3)
	(at person2 city3)
	(at person3 city3)
	(at person4 city2)
	(at person5 city2)
	(at person6 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 939)
	(= (distance city0 city2) 872)
	(= (distance city0 city3) 958)
	(= (distance city1 city0) 939)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 735)
	(= (distance city1 city3) 553)
	(= (distance city2 city0) 872)
	(= (distance city2 city1) 735)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 815)
	(= (distance city3 city0) 958)
	(= (distance city3 city1) 553)
	(= (distance city3 city2) 815)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane2 city2)
	(at plane5 city3)
	(at person1 city2)
	(at person2 city2)
	(at person3 city0)
	(at person4 city3)
	(at person5 city0)
	))

(:metric minimize (+ (* 1 (total-time))  (* 4 (total-fuel-used))))
)
