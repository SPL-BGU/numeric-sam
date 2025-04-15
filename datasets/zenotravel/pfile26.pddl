(define (problem ZTRAVEL-2-8)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
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
	city5 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 4812)
	(= (fuel plane1) 278)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 6)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 9)
	(at plane2 city2)
	(= (capacity plane2) 4374)
	(= (fuel plane2) 1777)
	(= (slow-burn plane2) 2)
	(= (fast-burn plane2) 4)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 6)
	(at person1 city1)
	(at person2 city5)
	(at person3 city4)
	(at person4 city1)
	(at person5 city3)
	(at person6 city5)
	(at person7 city5)
	(at person8 city5)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 897)
	(= (distance city0 city2) 607)
	(= (distance city0 city3) 671)
	(= (distance city0 city4) 648)
	(= (distance city0 city5) 627)
	(= (distance city1 city0) 897)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 855)
	(= (distance city1 city3) 927)
	(= (distance city1 city4) 817)
	(= (distance city1 city5) 702)
	(= (distance city2 city0) 607)
	(= (distance city2 city1) 855)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 831)
	(= (distance city2 city4) 852)
	(= (distance city2 city5) 582)
	(= (distance city3 city0) 671)
	(= (distance city3 city1) 927)
	(= (distance city3 city2) 831)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 944)
	(= (distance city3 city5) 648)
	(= (distance city4 city0) 648)
	(= (distance city4 city1) 817)
	(= (distance city4 city2) 852)
	(= (distance city4 city3) 944)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 864)
	(= (distance city5 city0) 627)
	(= (distance city5 city1) 702)
	(= (distance city5 city2) 582)
	(= (distance city5 city3) 648)
	(= (distance city5 city4) 864)
	(= (distance city5 city5) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane2 city5)
	(at person1 city0)
	(at person2 city5)
	(at person3 city0)
	(at person4 city4)
	(at person5 city5)
	(at person6 city3)
	(at person7 city0)
	(at person8 city1)
	))

(:metric minimize (+ (* 2 (total-time))  (* 4 (total-fuel-used))))
)
