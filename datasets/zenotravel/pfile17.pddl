(define (problem ZTRAVEL-3-7)
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
	person7 - person
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
	(at plane1 city6)
	(= (capacity plane1) 6893)
	(= (fuel plane1) 1415)
	(= (slow-burn plane1) 3)
	(= (fast-burn plane1) 10)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 4)
	(at plane2 city0)
	(= (capacity plane2) 5891)
	(= (fuel plane2) 12)
	(= (slow-burn plane2) 2)
	(= (fast-burn plane2) 6)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 3)
	(at plane3 city8)
	(= (capacity plane3) 8344)
	(= (fuel plane3) 2150)
	(= (slow-burn plane3) 3)
	(= (fast-burn plane3) 7)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 5)
	(at person1 city3)
	(at person2 city4)
	(at person3 city0)
	(at person4 city1)
	(at person5 city8)
	(at person6 city0)
	(at person7 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 785)
	(= (distance city0 city2) 500)
	(= (distance city0 city3) 561)
	(= (distance city0 city4) 958)
	(= (distance city0 city5) 927)
	(= (distance city0 city6) 613)
	(= (distance city0 city7) 553)
	(= (distance city0 city8) 743)
	(= (distance city1 city0) 785)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 831)
	(= (distance city1 city3) 952)
	(= (distance city1 city4) 812)
	(= (distance city1 city5) 607)
	(= (distance city1 city6) 640)
	(= (distance city1 city7) 669)
	(= (distance city1 city8) 906)
	(= (distance city2 city0) 500)
	(= (distance city2 city1) 831)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 882)
	(= (distance city2 city4) 768)
	(= (distance city2 city5) 720)
	(= (distance city2 city6) 863)
	(= (distance city2 city7) 845)
	(= (distance city2 city8) 584)
	(= (distance city3 city0) 561)
	(= (distance city3 city1) 952)
	(= (distance city3 city2) 882)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 801)
	(= (distance city3 city5) 688)
	(= (distance city3 city6) 867)
	(= (distance city3 city7) 910)
	(= (distance city3 city8) 531)
	(= (distance city4 city0) 958)
	(= (distance city4 city1) 812)
	(= (distance city4 city2) 768)
	(= (distance city4 city3) 801)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 738)
	(= (distance city4 city6) 613)
	(= (distance city4 city7) 985)
	(= (distance city4 city8) 615)
	(= (distance city5 city0) 927)
	(= (distance city5 city1) 607)
	(= (distance city5 city2) 720)
	(= (distance city5 city3) 688)
	(= (distance city5 city4) 738)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 678)
	(= (distance city5 city7) 771)
	(= (distance city5 city8) 616)
	(= (distance city6 city0) 613)
	(= (distance city6 city1) 640)
	(= (distance city6 city2) 863)
	(= (distance city6 city3) 867)
	(= (distance city6 city4) 613)
	(= (distance city6 city5) 678)
	(= (distance city6 city6) 0)
	(= (distance city6 city7) 740)
	(= (distance city6 city8) 729)
	(= (distance city7 city0) 553)
	(= (distance city7 city1) 669)
	(= (distance city7 city2) 845)
	(= (distance city7 city3) 910)
	(= (distance city7 city4) 985)
	(= (distance city7 city5) 771)
	(= (distance city7 city6) 740)
	(= (distance city7 city7) 0)
	(= (distance city7 city8) 543)
	(= (distance city8 city0) 743)
	(= (distance city8 city1) 906)
	(= (distance city8 city2) 584)
	(= (distance city8 city3) 531)
	(= (distance city8 city4) 615)
	(= (distance city8 city5) 616)
	(= (distance city8 city6) 729)
	(= (distance city8 city7) 543)
	(= (distance city8 city8) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane3 city1)
	(at person1 city7)
	(at person2 city3)
	(at person3 city7)
	(at person4 city5)
	(at person5 city5)
	(at person6 city3)
	(at person7 city5)
	))

(:metric minimize (+ (* 1 (total-time))  (* 3 (total-fuel-used))))
)
