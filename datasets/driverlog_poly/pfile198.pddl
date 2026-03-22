(define (problem DLOG-5-4-6-198)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	s0 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s0)
	(at driver4 s0)
	(at driver5 s0)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s0)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s0)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	(at package4 s0)
	(at package5 s0)
	(at package6 s0)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at driver5 s0)
	(at truck1 s0)
	(at truck3 s0)
	(at truck4 s0)
	(at package1 s0)
	(at package2 s0)
	(at package4 s0)
	(at package5 s0)
	(at package6 s0)
	))

(:metric minimize (+ (* 3 (total-time)) (* 1 (fuel-used))))

)
