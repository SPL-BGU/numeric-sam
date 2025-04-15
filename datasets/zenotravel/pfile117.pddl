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
	city4 - city
	city5 - city
	)
(:init
	(at plane1 city4)
	(= (capacity plane1) 12516)
	(= (fuel plane1) 4391)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 16)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 8)
	(at plane2 city2)
	(= (capacity plane2) 10978)
	(= (fuel plane2) 1919)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 14)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 2)
	(at person1 city4)
	(at person2 city0)
	(at person3 city0)
	(at person4 city4)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 955)
	(= (distance city0 city2) 654)
	(= (distance city0 city3) 693)
	(= (distance city0 city4) 714)
	(= (distance city0 city5) 877)
	(= (distance city1 city0) 955)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 904)
	(= (distance city1 city3) 855)
	(= (distance city1 city4) 743)
	(= (distance city1 city5) 604)
	(= (distance city2 city0) 654)
	(= (distance city2 city1) 904)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 686)
	(= (distance city2 city4) 785)
	(= (distance city2 city5) 701)
	(= (distance city3 city0) 693)
	(= (distance city3 city1) 855)
	(= (distance city3 city2) 686)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 956)
	(= (distance city3 city5) 757)
	(= (distance city4 city0) 714)
	(= (distance city4 city1) 743)
	(= (distance city4 city2) 785)
	(= (distance city4 city3) 956)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 736)
	(= (distance city5 city0) 877)
	(= (distance city5 city1) 604)
	(= (distance city5 city2) 701)
	(= (distance city5 city3) 757)
	(= (distance city5 city4) 736)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city3)
	(at person2 city1)
	(at person3 city4)
	(at person4 city2)
	))

(:metric minimize (+ (* 2 (total-time))  (* 5 (total-fuel-used))))
)
