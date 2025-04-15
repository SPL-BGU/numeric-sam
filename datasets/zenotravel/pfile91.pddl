(define (problem ZTRAVEL-5-4)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	)
(:init
	(at plane1 city3)
	(= (capacity plane1) 11150)
	(= (fuel plane1) 1288)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 9)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 8)
	(at plane2 city3)
	(= (capacity plane2) 9927)
	(= (fuel plane2) 2450)
	(= (slow-burn plane2) 4)
	(= (fast-burn plane2) 14)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 5)
	(at plane3 city1)
	(= (capacity plane3) 7651)
	(= (fuel plane3) 1509)
	(= (slow-burn plane3) 3)
	(= (fast-burn plane3) 11)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 4)
	(at plane4 city3)
	(= (capacity plane4) 11490)
	(= (fuel plane4) 1860)
	(= (slow-burn plane4) 4)
	(= (fast-burn plane4) 9)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 7)
	(at plane5 city1)
	(= (capacity plane5) 13886)
	(= (fuel plane5) 1637)
	(= (slow-burn plane5) 5)
	(= (fast-burn plane5) 18)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 7)
	(at person1 city1)
	(at person2 city3)
	(at person3 city3)
	(at person4 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 794)
	(= (distance city0 city2) 783)
	(= (distance city0 city3) 506)
	(= (distance city1 city0) 794)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 801)
	(= (distance city1 city3) 734)
	(= (distance city2 city0) 783)
	(= (distance city2 city1) 801)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 781)
	(= (distance city3 city0) 506)
	(= (distance city3 city1) 734)
	(= (distance city3 city2) 781)
	(= (distance city3 city3) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane1 city1)
	(at plane5 city2)
	(at person1 city2)
	(at person2 city0)
	(at person3 city1)
	(at person4 city1)
	))

(:metric minimize (+ (* 5 (total-time))  (* 1 (total-fuel-used))))
)
