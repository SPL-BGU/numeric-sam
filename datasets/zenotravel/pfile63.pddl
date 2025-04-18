(define (problem ZTRAVEL-4-6)
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	city6 - city
	city7 - city
	city8 - city
	city9 - city
	)
(:init
	(at plane1 city4)
	(= (capacity plane1) 9827)
	(= (fuel plane1) 2850)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 10)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 4)
	(at plane2 city6)
	(= (capacity plane2) 11199)
	(= (fuel plane2) 3200)
	(= (slow-burn plane2) 5)
	(= (fast-burn plane2) 13)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 7)
	(at plane3 city5)
	(= (capacity plane3) 15284)
	(= (fuel plane3) 3617)
	(= (slow-burn plane3) 5)
	(= (fast-burn plane3) 14)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 4)
	(at plane4 city5)
	(= (capacity plane4) 8534)
	(= (fuel plane4) 3597)
	(= (slow-burn plane4) 4)
	(= (fast-burn plane4) 9)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 7)
	(at person1 city6)
	(at person2 city8)
	(at person3 city7)
	(at person4 city2)
	(at person5 city6)
	(at person6 city4)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 778)
	(= (distance city0 city2) 501)
	(= (distance city0 city3) 772)
	(= (distance city0 city4) 821)
	(= (distance city0 city5) 659)
	(= (distance city0 city6) 942)
	(= (distance city0 city7) 857)
	(= (distance city0 city8) 778)
	(= (distance city0 city9) 607)
	(= (distance city1 city0) 778)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 899)
	(= (distance city1 city3) 780)
	(= (distance city1 city4) 831)
	(= (distance city1 city5) 620)
	(= (distance city1 city6) 859)
	(= (distance city1 city7) 963)
	(= (distance city1 city8) 954)
	(= (distance city1 city9) 945)
	(= (distance city2 city0) 501)
	(= (distance city2 city1) 899)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 798)
	(= (distance city2 city4) 558)
	(= (distance city2 city5) 818)
	(= (distance city2 city6) 748)
	(= (distance city2 city7) 801)
	(= (distance city2 city8) 854)
	(= (distance city2 city9) 903)
	(= (distance city3 city0) 772)
	(= (distance city3 city1) 780)
	(= (distance city3 city2) 798)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 695)
	(= (distance city3 city5) 807)
	(= (distance city3 city6) 814)
	(= (distance city3 city7) 614)
	(= (distance city3 city8) 865)
	(= (distance city3 city9) 834)
	(= (distance city4 city0) 821)
	(= (distance city4 city1) 831)
	(= (distance city4 city2) 558)
	(= (distance city4 city3) 695)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 602)
	(= (distance city4 city6) 644)
	(= (distance city4 city7) 835)
	(= (distance city4 city8) 874)
	(= (distance city4 city9) 965)
	(= (distance city5 city0) 659)
	(= (distance city5 city1) 620)
	(= (distance city5 city2) 818)
	(= (distance city5 city3) 807)
	(= (distance city5 city4) 602)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 995)
	(= (distance city5 city7) 817)
	(= (distance city5 city8) 823)
	(= (distance city5 city9) 773)
	(= (distance city6 city0) 942)
	(= (distance city6 city1) 859)
	(= (distance city6 city2) 748)
	(= (distance city6 city3) 814)
	(= (distance city6 city4) 644)
	(= (distance city6 city5) 995)
	(= (distance city6 city6) 0)
	(= (distance city6 city7) 924)
	(= (distance city6 city8) 722)
	(= (distance city6 city9) 554)
	(= (distance city7 city0) 857)
	(= (distance city7 city1) 963)
	(= (distance city7 city2) 801)
	(= (distance city7 city3) 614)
	(= (distance city7 city4) 835)
	(= (distance city7 city5) 817)
	(= (distance city7 city6) 924)
	(= (distance city7 city7) 0)
	(= (distance city7 city8) 756)
	(= (distance city7 city9) 843)
	(= (distance city8 city0) 778)
	(= (distance city8 city1) 954)
	(= (distance city8 city2) 854)
	(= (distance city8 city3) 865)
	(= (distance city8 city4) 874)
	(= (distance city8 city5) 823)
	(= (distance city8 city6) 722)
	(= (distance city8 city7) 756)
	(= (distance city8 city8) 0)
	(= (distance city8 city9) 913)
	(= (distance city9 city0) 607)
	(= (distance city9 city1) 945)
	(= (distance city9 city2) 903)
	(= (distance city9 city3) 834)
	(= (distance city9 city4) 965)
	(= (distance city9 city5) 773)
	(= (distance city9 city6) 554)
	(= (distance city9 city7) 843)
	(= (distance city9 city8) 913)
	(= (distance city9 city9) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city5)
	(at person1 city0)
	(at person2 city7)
	(at person3 city3)
	(at person4 city6)
	(at person5 city3)
	(at person6 city7)
	))

(:metric minimize (+ (* 4 (total-time))  (* 5 (total-fuel-used))))
)
