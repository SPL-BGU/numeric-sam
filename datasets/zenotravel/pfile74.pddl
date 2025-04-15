(define (problem ZTRAVEL-3-3)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	person1 - person
	person2 - person
	person3 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 7614)
	(= (fuel plane1) 1985)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 7)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 5)
	(at plane2 city3)
	(= (capacity plane2) 12673)
	(= (fuel plane2) 2225)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 19)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 5)
	(at plane3 city2)
	(= (capacity plane3) 14710)
	(= (fuel plane3) 3248)
	(= (slow-burn plane3) 5)
	(= (fast-burn plane3) 12)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 6)
	(at person1 city2)
	(at person2 city0)
	(at person3 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 999)
	(= (distance city0 city2) 522)
	(= (distance city0 city3) 935)
	(= (distance city1 city0) 999)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 581)
	(= (distance city1 city3) 795)
	(= (distance city2 city0) 522)
	(= (distance city2 city1) 581)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 655)
	(= (distance city3 city0) 935)
	(= (distance city3 city1) 795)
	(= (distance city3 city2) 655)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city1)
	(at person2 city1)
	(at person3 city3)
	))

(:metric minimize (+ (* 1 (total-time))  (* 5 (total-fuel-used))))
)
