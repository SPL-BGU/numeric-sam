(define (problem DLOG-4-3-8)
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
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	package8 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s1)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s2)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s0)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s1)
	(at package2 s2)
	(at package3 s1)
	(at package4 s0)
	(at package5 s0)
	(at package6 s2)
	(at package7 s2)
	(at package8 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 98)
	(= (time-to-drive s1 s0) 98)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 38)
	(= (time-to-drive s2 s0) 38)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 74)
	(= (time-to-drive s1 s2) 74)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at driver4 s0)
	(at truck2 s2)
	(at truck3 s2)
	(at package2 s2)
	(at package3 s0)
	(at package4 s0)
	(at package5 s2)
	(at package7 s2)
	(at package8 s2)
	))

(:metric minimize (+ (* 1 (total-time)) (* 2 (fuel-used))))

)
