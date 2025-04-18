(define (problem ZTRAVEL-3-6)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
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
	(at plane1 city9)
	(= (capacity plane1) 12108)
	(= (fuel plane1) 2098)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 9)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 9)
	(at plane2 city2)
	(= (capacity plane2) 7979)
	(= (fuel plane2) 2520)
	(= (slow-burn plane2) 3)
	(= (fast-burn plane2) 8)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 5)
	(at plane3 city3)
	(= (capacity plane3) 5421)
	(= (fuel plane3) 1030)
	(= (slow-burn plane3) 2)
	(= (fast-burn plane3) 5)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 4)
	(at person1 city9)
	(at person2 city8)
	(at person3 city7)
	(at person4 city9)
	(at person5 city0)
	(at person6 city7)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 829)
	(= (distance city0 city2) 567)
	(= (distance city0 city3) 576)
	(= (distance city0 city4) 561)
	(= (distance city0 city5) 848)
	(= (distance city0 city6) 719)
	(= (distance city0 city7) 862)
	(= (distance city0 city8) 720)
	(= (distance city0 city9) 860)
	(= (distance city1 city0) 829)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 629)
	(= (distance city1 city3) 862)
	(= (distance city1 city4) 669)
	(= (distance city1 city5) 650)
	(= (distance city1 city6) 681)
	(= (distance city1 city7) 617)
	(= (distance city1 city8) 685)
	(= (distance city1 city9) 930)
	(= (distance city2 city0) 567)
	(= (distance city2 city1) 629)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 794)
	(= (distance city2 city4) 585)
	(= (distance city2 city5) 660)
	(= (distance city2 city6) 699)
	(= (distance city2 city7) 829)
	(= (distance city2 city8) 959)
	(= (distance city2 city9) 977)
	(= (distance city3 city0) 576)
	(= (distance city3 city1) 862)
	(= (distance city3 city2) 794)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 817)
	(= (distance city3 city5) 686)
	(= (distance city3 city6) 793)
	(= (distance city3 city7) 850)
	(= (distance city3 city8) 958)
	(= (distance city3 city9) 691)
	(= (distance city4 city0) 561)
	(= (distance city4 city1) 669)
	(= (distance city4 city2) 585)
	(= (distance city4 city3) 817)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 520)
	(= (distance city4 city6) 788)
	(= (distance city4 city7) 758)
	(= (distance city4 city8) 596)
	(= (distance city4 city9) 849)
	(= (distance city5 city0) 848)
	(= (distance city5 city1) 650)
	(= (distance city5 city2) 660)
	(= (distance city5 city3) 686)
	(= (distance city5 city4) 520)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 607)
	(= (distance city5 city7) 815)
	(= (distance city5 city8) 711)
	(= (distance city5 city9) 827)
	(= (distance city6 city0) 719)
	(= (distance city6 city1) 681)
	(= (distance city6 city2) 699)
	(= (distance city6 city3) 793)
	(= (distance city6 city4) 788)
	(= (distance city6 city5) 607)
	(= (distance city6 city6) 0)
	(= (distance city6 city7) 676)
	(= (distance city6 city8) 840)
	(= (distance city6 city9) 690)
	(= (distance city7 city0) 862)
	(= (distance city7 city1) 617)
	(= (distance city7 city2) 829)
	(= (distance city7 city3) 850)
	(= (distance city7 city4) 758)
	(= (distance city7 city5) 815)
	(= (distance city7 city6) 676)
	(= (distance city7 city7) 0)
	(= (distance city7 city8) 845)
	(= (distance city7 city9) 991)
	(= (distance city8 city0) 720)
	(= (distance city8 city1) 685)
	(= (distance city8 city2) 959)
	(= (distance city8 city3) 958)
	(= (distance city8 city4) 596)
	(= (distance city8 city5) 711)
	(= (distance city8 city6) 840)
	(= (distance city8 city7) 845)
	(= (distance city8 city8) 0)
	(= (distance city8 city9) 872)
	(= (distance city9 city0) 860)
	(= (distance city9 city1) 930)
	(= (distance city9 city2) 977)
	(= (distance city9 city3) 691)
	(= (distance city9 city4) 849)
	(= (distance city9 city5) 827)
	(= (distance city9 city6) 690)
	(= (distance city9 city7) 991)
	(= (distance city9 city8) 872)
	(= (distance city9 city9) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city3)
	(at plane3 city8)
	(at person1 city8)
	(at person2 city7)
	(at person3 city6)
	(at person4 city1)
	(at person5 city9)
	(at person6 city3)
	))

(:metric minimize (+ (* 5 (total-time))  (* 2 (total-fuel-used))))
)
