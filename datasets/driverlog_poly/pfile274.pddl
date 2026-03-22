(define (problem DLOG-4-4-3-274)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	s1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s1)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s1)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s1)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s1)
	(at package2 s0)
	(at package3 s1)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 4)
	(= (time-to-drive s0 s1) 4)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s1)
	(at driver4 s1)
	(at truck1 s1)
	(at truck2 s0)
	(at truck4 s1)
	(at package1 s1)
	(at package2 s1)
	(at package3 s1)
	))

(:metric minimize (+ (* 1 (total-time)) (* 1 (fuel-used))))

)
