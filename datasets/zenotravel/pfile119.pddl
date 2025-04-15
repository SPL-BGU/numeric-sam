(define (problem ZTRAVEL-2-10)
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
	person9 - person
	person10 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	city6 - city
	)
(:init
	(at plane1 city0)
	(= (capacity plane1) 8886)
	(= (fuel plane1) 2854)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 11)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 7)
	(at plane2 city6)
	(= (capacity plane2) 2127)
	(= (fuel plane2) 931)
	(= (slow-burn plane2) 1)
	(= (fast-burn plane2) 3)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 2)
	(at person1 city1)
	(at person2 city2)
	(at person3 city2)
	(at person4 city3)
	(at person5 city5)
	(at person6 city2)
	(at person7 city0)
	(at person8 city1)
	(at person9 city1)
	(at person10 city6)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 562)
	(= (distance city0 city2) 566)
	(= (distance city0 city3) 744)
	(= (distance city0 city4) 532)
	(= (distance city0 city5) 560)
	(= (distance city0 city6) 873)
	(= (distance city1 city0) 562)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 964)
	(= (distance city1 city3) 537)
	(= (distance city1 city4) 908)
	(= (distance city1 city5) 768)
	(= (distance city1 city6) 543)
	(= (distance city2 city0) 566)
	(= (distance city2 city1) 964)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 861)
	(= (distance city2 city4) 854)
	(= (distance city2 city5) 557)
	(= (distance city2 city6) 725)
	(= (distance city3 city0) 744)
	(= (distance city3 city1) 537)
	(= (distance city3 city2) 861)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 571)
	(= (distance city3 city5) 528)
	(= (distance city3 city6) 693)
	(= (distance city4 city0) 532)
	(= (distance city4 city1) 908)
	(= (distance city4 city2) 854)
	(= (distance city4 city3) 571)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 966)
	(= (distance city4 city6) 847)
	(= (distance city5 city0) 560)
	(= (distance city5 city1) 768)
	(= (distance city5 city2) 557)
	(= (distance city5 city3) 528)
	(= (distance city5 city4) 966)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 520)
	(= (distance city6 city0) 873)
	(= (distance city6 city1) 543)
	(= (distance city6 city2) 725)
	(= (distance city6 city3) 693)
	(= (distance city6 city4) 847)
	(= (distance city6 city5) 520)
	(= (distance city6 city6) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city1)
	(at person2 city2)
	(at person3 city0)
	(at person4 city3)
	(at person5 city3)
	(at person6 city3)
	(at person7 city3)
	(at person8 city3)
	(at person9 city4)
	(at person10 city1)
	))

(:metric minimize (+ (* 3 (total-time))  (* 3 (total-fuel-used))))
)
