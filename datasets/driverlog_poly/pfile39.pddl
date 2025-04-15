(define (problem DLOG-2-2-10)
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
	package6 - obj
	package7 - obj
	package8 - obj
	package9 - obj
	package10 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s2)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s1)
	(at package2 s2)
	(at package3 s2)
	(at package4 s2)
	(at package5 s2)
	(at package6 s1)
	(at package7 s0)
	(at package8 s1)
	(at package9 s0)
	(at package10 s2)
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
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 13)
	(= (time-to-drive s2 s0) 13)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 13)
	(= (time-to-drive s0 s1) 13)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 73)
	(= (time-to-drive s2 s1) 73)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at truck1 s2)
	(at package1 s1)
	(at package2 s0)
	(at package3 s0)
	(at package4 s0)
	(at package5 s0)
	(at package6 s0)
	(at package7 s1)
	(at package8 s2)
	(at package9 s0)
	(at package10 s2)
	))

(:metric minimize (+ (* 3 (total-time)) (* 1 (fuel-used))))

)
