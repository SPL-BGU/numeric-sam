(define (problem ZTRAVEL-5-10)
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
	person9 - person
	person10 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 5100)
	(= (fuel plane1) 624)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 5)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 10)
	(at plane2 city2)
	(= (capacity plane2) 12649)
	(= (fuel plane2) 3449)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 19)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 2)
	(at plane3 city3)
	(= (capacity plane3) 2455)
	(= (fuel plane3) 758)
	(= (slow-burn plane3) 1)
	(= (fast-burn plane3) 3)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 3)
	(at plane4 city1)
	(= (capacity plane4) 12282)
	(= (fuel plane4) 3059)
	(= (slow-burn plane4) 5)
	(= (fast-burn plane4) 15)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 1)
	(at plane5 city1)
	(= (capacity plane5) 14339)
	(= (fuel plane5) 4212)
	(= (slow-burn plane5) 5)
	(= (fast-burn plane5) 10)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 9)
	(at person1 city2)
	(at person2 city3)
	(at person3 city3)
	(at person4 city0)
	(at person5 city3)
	(at person6 city1)
	(at person7 city1)
	(at person8 city0)
	(at person9 city3)
	(at person10 city3)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 619)
	(= (distance city0 city2) 880)
	(= (distance city0 city3) 587)
	(= (distance city1 city0) 619)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 909)
	(= (distance city1 city3) 516)
	(= (distance city2 city0) 880)
	(= (distance city2 city1) 909)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 821)
	(= (distance city3 city0) 587)
	(= (distance city3 city1) 516)
	(= (distance city3 city2) 821)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city3)
	(at person2 city3)
	(at person3 city3)
	(at person4 city3)
	(at person5 city1)
	(at person6 city3)
	(at person7 city0)
	(at person8 city3)
	(at person9 city3)
	(at person10 city0)
	))

(:metric minimize (+ (* 4 (total-time))  (* 5 (total-fuel-used))))
)
