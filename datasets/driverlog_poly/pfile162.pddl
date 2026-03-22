(define (problem DLOG-2-2-5-162)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	s0 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	(at package4 s0)
	(at package5 s0)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at truck1 s0)
	(at truck2 s0)
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	(at package4 s0)
	(at package5 s0)
	))

(:metric minimize (+ (* 3 (total-time)) (* 3 (fuel-used))))

)
