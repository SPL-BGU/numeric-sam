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
	city7 - city
	city8 - city
	city9 - city
	)
(:init
	(at plane1 city5)
	(= (capacity plane1) 11862)
	(= (fuel plane1) 269)
	(= (slow-burn plane1) 5)
	(= (fast-burn plane1) 19)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 3)
	(at person1 city3)
	(at person2 city1)
	(at person3 city4)
	(at person4 city6)
	(at person5 city4)
	(at person6 city1)
	(at person7 city5)
	(at person8 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 709)
	(= (distance city0 city2) 959)
	(= (distance city0 city3) 925)
	(= (distance city0 city4) 983)
	(= (distance city0 city5) 628)
	(= (distance city0 city6) 555)
	(= (distance city0 city7) 790)
	(= (distance city0 city8) 928)
	(= (distance city0 city9) 762)
	(= (distance city1 city0) 709)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 945)
	(= (distance city1 city3) 787)
	(= (distance city1 city4) 664)
	(= (distance city1 city5) 825)
	(= (distance city1 city6) 639)
	(= (distance city1 city7) 712)
	(= (distance city1 city8) 688)
	(= (distance city1 city9) 790)
	(= (distance city2 city0) 959)
	(= (distance city2 city1) 945)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 684)
	(= (distance city2 city4) 661)
	(= (distance city2 city5) 654)
	(= (distance city2 city6) 789)
	(= (distance city2 city7) 960)
	(= (distance city2 city8) 961)
	(= (distance city2 city9) 844)
	(= (distance city3 city0) 925)
	(= (distance city3 city1) 787)
	(= (distance city3 city2) 684)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 567)
	(= (distance city3 city5) 554)
	(= (distance city3 city6) 924)
	(= (distance city3 city7) 721)
	(= (distance city3 city8) 921)
	(= (distance city3 city9) 747)
	(= (distance city4 city0) 983)
	(= (distance city4 city1) 664)
	(= (distance city4 city2) 661)
	(= (distance city4 city3) 567)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 671)
	(= (distance city4 city6) 631)
	(= (distance city4 city7) 707)
	(= (distance city4 city8) 596)
	(= (distance city4 city9) 615)
	(= (distance city5 city0) 628)
	(= (distance city5 city1) 825)
	(= (distance city5 city2) 654)
	(= (distance city5 city3) 554)
	(= (distance city5 city4) 671)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 835)
	(= (distance city5 city7) 651)
	(= (distance city5 city8) 906)
	(= (distance city5 city9) 763)
	(= (distance city6 city0) 555)
	(= (distance city6 city1) 639)
	(= (distance city6 city2) 789)
	(= (distance city6 city3) 924)
	(= (distance city6 city4) 631)
	(= (distance city6 city5) 835)
	(= (distance city6 city6) 0)
	(= (distance city6 city7) 913)
	(= (distance city6 city8) 851)
	(= (distance city6 city9) 551)
	(= (distance city7 city0) 790)
	(= (distance city7 city1) 712)
	(= (distance city7 city2) 960)
	(= (distance city7 city3) 721)
	(= (distance city7 city4) 707)
	(= (distance city7 city5) 651)
	(= (distance city7 city6) 913)
	(= (distance city7 city7) 0)
	(= (distance city7 city8) 578)
	(= (distance city7 city9) 677)
	(= (distance city8 city0) 928)
	(= (distance city8 city1) 688)
	(= (distance city8 city2) 961)
	(= (distance city8 city3) 921)
	(= (distance city8 city4) 596)
	(= (distance city8 city5) 906)
	(= (distance city8 city6) 851)
	(= (distance city8 city7) 578)
	(= (distance city8 city8) 0)
	(= (distance city8 city9) 690)
	(= (distance city9 city0) 762)
	(= (distance city9 city1) 790)
	(= (distance city9 city2) 844)
	(= (distance city9 city3) 747)
	(= (distance city9 city4) 615)
	(= (distance city9 city5) 763)
	(= (distance city9 city6) 551)
	(= (distance city9 city7) 677)
	(= (distance city9 city8) 690)
	(= (distance city9 city9) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city0)
	(at person2 city5)
	(at person3 city9)
	(at person4 city6)
	(at person5 city1)
	(at person6 city2)
	(at person7 city6)
	(at person8 city6)
	))

(:metric minimize (+ (* 5 (total-time))  (* 2 (total-fuel-used))))
)
