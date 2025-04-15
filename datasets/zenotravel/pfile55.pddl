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
	(at plane1 city1)
	(= (capacity plane1) 9884)
	(= (fuel plane1) 1957)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 10)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 8)
	(at plane2 city1)
	(= (capacity plane2) 10974)
	(= (fuel plane2) 3394)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 15)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 5)
	(at person1 city2)
	(at person2 city2)
	(at person3 city1)
	(at person4 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 596)
	(= (distance city0 city2) 600)
	(= (distance city0 city3) 812)
	(= (distance city1 city0) 596)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 792)
	(= (distance city1 city3) 924)
	(= (distance city2 city0) 600)
	(= (distance city2 city1) 792)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 560)
	(= (distance city3 city0) 812)
	(= (distance city3 city1) 924)
	(= (distance city3 city2) 560)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city0)
	(at person1 city2)
	(at person2 city3)
	(at person3 city2)
	(at person4 city3)
	))

(:metric minimize (+ (* 3 (total-time))  (* 4 (total-fuel-used))))
)
