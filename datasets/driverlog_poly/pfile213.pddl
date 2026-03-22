(define (problem DLOG-4-3-2-213)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	s0 - location
	s1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s1)
	(at driver4 s0)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s1)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s1)
	(at package2 s0)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 1)
	(= (time-to-drive s0 s1) 1)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s0)
	(at driver4 s0)
	(at truck1 s0)
	(at truck2 s1)
	(at truck3 s1)
	(at package1 s1)
	(at package2 s1)
	))

(:metric minimize (+ (* 3 (total-time)) (* 2 (fuel-used))))

)
