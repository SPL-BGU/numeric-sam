(define (problem ZTRAVEL-2-4)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 8991)
	(= (fuel plane1) 1079)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 8)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 7)
	(at plane2 city3)
	(= (capacity plane2) 10097)
	(= (fuel plane2) 2710)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 14)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 7)
	(at person1 city3)
	(at person2 city1)
	(at person3 city0)
	(at person4 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 724)
	(= (distance city0 city2) 849)
	(= (distance city0 city3) 832)
	(= (distance city1 city0) 724)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 860)
	(= (distance city1 city3) 932)
	(= (distance city2 city0) 849)
	(= (distance city2 city1) 860)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 771)
	(= (distance city3 city0) 832)
	(= (distance city3 city1) 932)
	(= (distance city3 city2) 771)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city3)
	(at person1 city3)
	(at person2 city2)
	(at person3 city2)
	(at person4 city1)
	))

(:metric minimize (+ (* 4 (total-time))  (* 4 (total-fuel-used))))
)
