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
	city5 - city
	city6 - city
	)
(:init
	(at plane1 city4)
	(= (capacity plane1) 12282)
	(= (fuel plane1) 1051)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 10)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 9)
	(at person1 city4)
	(at person2 city0)
	(at person3 city0)
	(at person4 city2)
	(at person5 city6)
	(at person6 city5)
	(at person7 city1)
	(at person8 city5)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 856)
	(= (distance city0 city2) 633)
	(= (distance city0 city3) 508)
	(= (distance city0 city4) 635)
	(= (distance city0 city5) 732)
	(= (distance city0 city6) 728)
	(= (distance city1 city0) 856)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 522)
	(= (distance city1 city3) 514)
	(= (distance city1 city4) 937)
	(= (distance city1 city5) 945)
	(= (distance city1 city6) 593)
	(= (distance city2 city0) 633)
	(= (distance city2 city1) 522)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 922)
	(= (distance city2 city4) 865)
	(= (distance city2 city5) 819)
	(= (distance city2 city6) 935)
	(= (distance city3 city0) 508)
	(= (distance city3 city1) 514)
	(= (distance city3 city2) 922)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 874)
	(= (distance city3 city5) 941)
	(= (distance city3 city6) 518)
	(= (distance city4 city0) 635)
	(= (distance city4 city1) 937)
	(= (distance city4 city2) 865)
	(= (distance city4 city3) 874)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 938)
	(= (distance city4 city6) 663)
	(= (distance city5 city0) 732)
	(= (distance city5 city1) 945)
	(= (distance city5 city2) 819)
	(= (distance city5 city3) 941)
	(= (distance city5 city4) 938)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 635)
	(= (distance city6 city0) 728)
	(= (distance city6 city1) 593)
	(= (distance city6 city2) 935)
	(= (distance city6 city3) 518)
	(= (distance city6 city4) 663)
	(= (distance city6 city5) 635)
	(= (distance city6 city6) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city6)
	(at person2 city2)
	(at person3 city1)
	(at person5 city6)
	(at person6 city6)
	(at person7 city1)
	(at person8 city0)
	))

(:metric minimize (+ (* 1 (total-time))  (* 1 (total-fuel-used))))
)
