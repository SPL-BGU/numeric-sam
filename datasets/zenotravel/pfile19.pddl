(define (problem ZTRAVEL-5-3)
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
	city0 - city
	city1 - city
	city2 - city
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 9493)
	(= (fuel plane1) 2304)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 13)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 6)
	(at plane2 city2)
	(= (capacity plane2) 13084)
	(= (fuel plane2) 3087)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 12)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 5)
	(at plane3 city1)
	(= (capacity plane3) 8788)
	(= (fuel plane3) 3426)
	(= (slow-burn plane3) 4)
	(= (fast-burn plane3) 9)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 6)
	(at plane4 city2)
	(= (capacity plane4) 13638)
	(= (fuel plane4) 4598)
	(= (slow-burn plane4) 5)
	(= (fast-burn plane4) 15)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 2)
	(at plane5 city1)
	(= (capacity plane5) 10641)
	(= (fuel plane5) 1926)
	(= (slow-burn plane5) 5)
	(= (fast-burn plane5) 18)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 3)
	(at person1 city2)
	(at person2 city0)
	(at person3 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 645)
	(= (distance city0 city2) 663)
	(= (distance city1 city0) 645)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 614)
	(= (distance city2 city0) 663)
	(= (distance city2 city1) 614)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city0)
	(at plane5 city0)
	(at person1 city1)
	(at person2 city2)
	(at person3 city1)
	))

(:metric minimize (+ (* 2 (total-time))  (* 2 (total-fuel-used))))
)
