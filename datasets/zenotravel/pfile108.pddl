(define (problem ZTRAVEL-1-8)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 13484)
	(= (fuel plane1) 2761)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 19)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 5)
	(at person1 city4)
	(at person2 city1)
	(at person3 city0)
	(at person4 city2)
	(at person5 city0)
	(at person6 city2)
	(at person7 city4)
	(at person8 city1)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 843)
	(= (distance city0 city2) 546)
	(= (distance city0 city3) 832)
	(= (distance city0 city4) 524)
	(= (distance city1 city0) 843)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 675)
	(= (distance city1 city3) 661)
	(= (distance city1 city4) 981)
	(= (distance city2 city0) 546)
	(= (distance city2 city1) 675)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 917)
	(= (distance city2 city4) 731)
	(= (distance city3 city0) 832)
	(= (distance city3 city1) 661)
	(= (distance city3 city2) 917)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 806)
	(= (distance city4 city0) 524)
	(= (distance city4 city1) 981)
	(= (distance city4 city2) 731)
	(= (distance city4 city3) 806)
	(= (distance city4 city4) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person2 city0)
	(at person3 city2)
	(at person4 city0)
	(at person5 city0)
	(at person6 city0)
	(at person7 city3)
	(at person8 city2)
	))

(:metric minimize (+ (* 1 (total-time))  (* 5 (total-fuel-used))))
)
