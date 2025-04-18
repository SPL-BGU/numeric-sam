(define (problem ZTRAVEL-4-9)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	person9 - person
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
	(= (capacity plane1) 2950)
	(= (fuel plane1) 494)
	(= (slow-burn plane1) 1)
	(= (fast-burn plane1) 3)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 7)
	(at plane2 city0)
	(= (capacity plane2) 2887)
	(= (fuel plane2) 124)
	(= (slow-burn plane2) 1)
	(= (fast-burn plane2) 2)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 3)
	(at plane3 city4)
	(= (capacity plane3) 10414)
	(= (fuel plane3) 608)
	(= (slow-burn plane3) 4)
	(= (fast-burn plane3) 15)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 5)
	(at plane4 city5)
	(= (capacity plane4) 6343)
	(= (fuel plane4) 1410)
	(= (slow-burn plane4) 3)
	(= (fast-burn plane4) 6)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 8)
	(at person1 city1)
	(at person2 city0)
	(at person3 city0)
	(at person4 city4)
	(at person5 city6)
	(at person6 city2)
	(at person7 city5)
	(at person8 city3)
	(at person9 city0)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 804)
	(= (distance city0 city2) 534)
	(= (distance city0 city3) 798)
	(= (distance city0 city4) 941)
	(= (distance city0 city5) 503)
	(= (distance city0 city6) 955)
	(= (distance city1 city0) 804)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 859)
	(= (distance city1 city3) 874)
	(= (distance city1 city4) 607)
	(= (distance city1 city5) 639)
	(= (distance city1 city6) 696)
	(= (distance city2 city0) 534)
	(= (distance city2 city1) 859)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 623)
	(= (distance city2 city4) 760)
	(= (distance city2 city5) 645)
	(= (distance city2 city6) 538)
	(= (distance city3 city0) 798)
	(= (distance city3 city1) 874)
	(= (distance city3 city2) 623)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 819)
	(= (distance city3 city5) 813)
	(= (distance city3 city6) 919)
	(= (distance city4 city0) 941)
	(= (distance city4 city1) 607)
	(= (distance city4 city2) 760)
	(= (distance city4 city3) 819)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 571)
	(= (distance city4 city6) 864)
	(= (distance city5 city0) 503)
	(= (distance city5 city1) 639)
	(= (distance city5 city2) 645)
	(= (distance city5 city3) 813)
	(= (distance city5 city4) 571)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 596)
	(= (distance city6 city0) 955)
	(= (distance city6 city1) 696)
	(= (distance city6 city2) 538)
	(= (distance city6 city3) 919)
	(= (distance city6 city4) 864)
	(= (distance city6 city5) 596)
	(= (distance city6 city6) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane3 city3)
	(at person1 city6)
	(at person2 city4)
	(at person3 city6)
	(at person5 city4)
	(at person6 city3)
	(at person7 city3)
	(at person8 city6)
	(at person9 city6)
	))

(:metric minimize (+ (* 1 (total-time))  (* 1 (total-fuel-used))))
)
