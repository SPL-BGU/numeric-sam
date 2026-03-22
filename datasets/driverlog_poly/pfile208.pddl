(define (problem DLOG-5-2-7-208)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-2 - location
	p1-2 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s1)
	(at driver4 s0)
	(at driver5 s1)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s2)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s1)
	(at package2 s1)
	(at package3 s0)
	(at package4 s1)
	(at package5 s2)
	(at package6 s2)
	(at package7 s2)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 1)
	(= (time-to-walk p0-2 s0) 1)
	(= (time-to-walk s2 p0-2) 3)
	(= (time-to-walk p0-2 s2) 3)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 2)
	(= (time-to-walk p1-2 s1) 2)
	(= (time-to-walk s2 p1-2) 4)
	(= (time-to-walk p1-2 s2) 4)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 6)
	(= (time-to-drive s2 s1) 6)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 4)
	(= (time-to-drive s1 s0) 4)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 7)
	(= (time-to-drive s0 s2) 7)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s1)
	(at driver4 s1)
	(at truck2 s0)
	(at package1 s0)
	(at package2 s0)
	(at package3 s2)
	(at package4 s1)
	(at package5 s0)
	(at package6 s0)
	(at package7 s2)
	))

(:metric minimize (+ (* 4 (total-time)) (* 2 (fuel-used))))

)
