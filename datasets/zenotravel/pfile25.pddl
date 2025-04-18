(define (problem ZTRAVEL-1-5)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	city6 - city
	city7 - city
	city8 - city
	)
(:init
	(at plane1 city2)
	(= (capacity plane1) 6025)
	(= (fuel plane1) 419)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 4)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 7)
	(at person1 city5)
	(at person2 city1)
	(at person3 city1)
	(at person4 city0)
	(at person5 city6)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 969)
	(= (distance city0 city2) 902)
	(= (distance city0 city3) 521)
	(= (distance city0 city4) 989)
	(= (distance city0 city5) 662)
	(= (distance city0 city6) 996)
	(= (distance city0 city7) 998)
	(= (distance city0 city8) 922)
	(= (distance city1 city0) 969)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 551)
	(= (distance city1 city3) 791)
	(= (distance city1 city4) 850)
	(= (distance city1 city5) 753)
	(= (distance city1 city6) 995)
	(= (distance city1 city7) 876)
	(= (distance city1 city8) 871)
	(= (distance city2 city0) 902)
	(= (distance city2 city1) 551)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 970)
	(= (distance city2 city4) 995)
	(= (distance city2 city5) 525)
	(= (distance city2 city6) 886)
	(= (distance city2 city7) 743)
	(= (distance city2 city8) 871)
	(= (distance city3 city0) 521)
	(= (distance city3 city1) 791)
	(= (distance city3 city2) 970)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 768)
	(= (distance city3 city5) 999)
	(= (distance city3 city6) 599)
	(= (distance city3 city7) 829)
	(= (distance city3 city8) 949)
	(= (distance city4 city0) 989)
	(= (distance city4 city1) 850)
	(= (distance city4 city2) 995)
	(= (distance city4 city3) 768)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 825)
	(= (distance city4 city6) 894)
	(= (distance city4 city7) 856)
	(= (distance city4 city8) 617)
	(= (distance city5 city0) 662)
	(= (distance city5 city1) 753)
	(= (distance city5 city2) 525)
	(= (distance city5 city3) 999)
	(= (distance city5 city4) 825)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 641)
	(= (distance city5 city7) 826)
	(= (distance city5 city8) 520)
	(= (distance city6 city0) 996)
	(= (distance city6 city1) 995)
	(= (distance city6 city2) 886)
	(= (distance city6 city3) 599)
	(= (distance city6 city4) 894)
	(= (distance city6 city5) 641)
	(= (distance city6 city6) 0)
	(= (distance city6 city7) 662)
	(= (distance city6 city8) 815)
	(= (distance city7 city0) 998)
	(= (distance city7 city1) 876)
	(= (distance city7 city2) 743)
	(= (distance city7 city3) 829)
	(= (distance city7 city4) 856)
	(= (distance city7 city5) 826)
	(= (distance city7 city6) 662)
	(= (distance city7 city7) 0)
	(= (distance city7 city8) 682)
	(= (distance city8 city0) 922)
	(= (distance city8 city1) 871)
	(= (distance city8 city2) 871)
	(= (distance city8 city3) 949)
	(= (distance city8 city4) 617)
	(= (distance city8 city5) 520)
	(= (distance city8 city6) 815)
	(= (distance city8 city7) 682)
	(= (distance city8 city8) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city6)
	(at person2 city4)
	(at person3 city5)
	(at person4 city2)
	(at person5 city4)
	))

(:metric minimize (+ (* 3 (total-time))  (* 3 (total-fuel-used))))
)
