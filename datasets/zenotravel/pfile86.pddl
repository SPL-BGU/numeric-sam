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
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 7004)
	(= (fuel plane1) 2517)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 7)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 5)
	(at plane2 city0)
	(= (capacity plane2) 7366)
	(= (fuel plane2) 168)
	(= (slow-burn plane2) 3)
	(= (fast-burn plane2) 6)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 4)
	(at plane3 city1)
	(= (capacity plane3) 5921)
	(= (fuel plane3) 738)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 5)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 2)
	(at plane4 city2)
	(= (capacity plane4) 8650)
	(= (fuel plane4) 2743)
	(= (slow-burn plane4) 3)
	(= (fast-burn plane4) 8)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 2)
	(at plane5 city0)
	(= (capacity plane5) 10531)
	(= (fuel plane5) 2393)
	(= (slow-burn plane5) 5)
	(= (fast-burn plane5) 18)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 7)
	(at person1 city2)
	(at person2 city2)
	(at person3 city0)
	(at person4 city2)
	(at person5 city2)
	(at person6 city2)
	(at person7 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 899)
	(= (distance city0 city2) 500)
	(= (distance city1 city0) 899)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 750)
	(= (distance city2 city0) 500)
	(= (distance city2 city1) 750)
	(= (distance city2 city2) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city0)
	(at plane4 city2)
	(at plane5 city0)
	(at person1 city2)
	(at person2 city0)
	(at person3 city0)
	(at person4 city2)
	(at person5 city2)
	(at person6 city0)
	(at person7 city0)
	))

(:metric minimize (+ (* 1 (total-time))  (* 3 (total-fuel-used))))
)
