(define (problem DLOG-3-3-6)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s2)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s2)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s2)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s0)
	(at package2 s1)
	(at package3 s2)
	(at package4 s2)
	(at package5 s2)
	(at package6 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 77)
	(= (time-to-drive s1 s0) 77)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 80)
	(= (time-to-drive s2 s0) 80)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 33)
	(= (time-to-drive s1 s2) 33)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s0)
	(at truck2 s0)
	(at truck3 s0)
	(at package2 s1)
	(at package3 s0)
	(at package4 s0)
	(at package6 s1)
	))

(:metric minimize (+ (* 3 (total-time)) (* 1 (fuel-used))))

)
