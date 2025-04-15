(define (problem ZTRAVEL-5-5)
	(:domain zeno-travel)
(:objects

	person0 - person
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	plane0 - aircraft
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	)
(:init
	(at plane0 city1)
	(= (slow_burn_rate plane0) 2)
	(= (fuel plane0) 229)
	(= (capacity plane0) 414)
	(= (fast_burn_rate plane0) 5)
	(= (refuel_rate plane0) 714)
	(= (zoom_limit plane0) 7)
	(= (onboard plane0) 0)
	(at plane1 city2)
	(= (slow_burn_rate plane1) 3)
	(= (fuel plane1) 26)
	(= (capacity plane1) 0)
	(= (fast_burn_rate plane1) 2)
	(= (refuel_rate plane1) 308)
	(= (zoom_limit plane1) 5)
	(= (onboard plane1) 0)
	(at plane2 city5)
	(= (slow_burn_rate plane2) 4)
	(= (fuel plane2) 40)
	(= (capacity plane2) 424)
	(= (fast_burn_rate plane2) 11)
	(= (refuel_rate plane2) 590)
	(= (zoom_limit plane2) 4)
	(= (onboard plane2) 0)
	(at plane3 city0)
	(= (slow_burn_rate plane3) 3)
	(= (fuel plane3) 20)
	(= (capacity plane3) 25)
	(= (fast_burn_rate plane3) 3)
	(= (refuel_rate plane3) 324)
	(= (zoom_limit plane3) 6)
	(= (onboard plane3) 0)
	(at plane4 city2)
	(= (slow_burn_rate plane4) 3)
	(= (fuel plane4) 179)
	(= (capacity plane4) 165)
	(= (fast_burn_rate plane4) 1)
	(= (refuel_rate plane4) 272)
	(= (zoom_limit plane4) 4)
	(= (onboard plane4) 0)
	(at person0 city5)
	(at person1 city0)
	(at person2 city0)
	(at person3 city1)
	(at person4 city4)
	(= (distance city0 city0) 0.0)
	(= (distance city0 city1) 90.0)
	(= (distance city0 city2) 57.0)
	(= (distance city0 city3) 51.0)
	(= (distance city0 city4) 97.0)
	(= (distance city1 city0) 90.0)
	(= (distance city1 city1) 0.0)
	(= (distance city1 city2) 67.0)
	(= (distance city1 city3) 65.0)
	(= (distance city1 city4) 64.0)
	(= (distance city2 city0) 57.0)
	(= (distance city2 city1) 67.0)
	(= (distance city2 city2) 0.0)
	(= (distance city2 city3) 58.0)
	(= (distance city2 city4) 97.0)
	(= (distance city3 city0) 51.0)
	(= (distance city3 city1) 65.0)
	(= (distance city3 city2) 58.0)
	(= (distance city3 city3) 0.0)
	(= (distance city3 city4) 56.0)
	(= (distance city4 city0) 97.0)
	(= (distance city4 city1) 64.0)
	(= (distance city4 city2) 97.0)
	(= (distance city4 city3) 56.0)
	(= (distance city4 city4) 0.0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person0 city5)
	(at person1 city4)
	(at person2 city0)
	(at person3 city1)
	(at person4 city0)
	))

(:metric minimize (+ (* 4 (total-time))  (* 4 (total-fuel-used))))
)