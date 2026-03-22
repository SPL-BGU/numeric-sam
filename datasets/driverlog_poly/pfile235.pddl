(define (problem DLOG-5-1-7-235)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
	truck1 - truck
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
	p2-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s1)
	(at driver4 s1)
	(at driver5 s0)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at package1 s2)
	(at package2 s1)
	(at package3 s2)
	(at package4 s1)
	(at package5 s0)
	(at package6 s2)
	(at package7 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 1)
	(= (time-to-walk p0-2 s0) 1)
	(= (time-to-walk s2 p0-2) 15)
	(= (time-to-walk p0-2 s2) 15)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 5)
	(= (time-to-walk p2-1 s2) 5)
	(= (time-to-walk s1 p2-1) 5)
	(= (time-to-walk p2-1 s1) 5)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 11)
	(= (time-to-drive s1 s2) 11)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 22)
	(= (time-to-drive s2 s0) 22)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 27)
	(= (time-to-drive s0 s1) 27)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver3 s1)
	(at driver4 s0)
	(at driver5 s0)
	(at truck1 s0)
	(at package1 s1)
	(at package2 s1)
	(at package3 s2)
	(at package4 s0)
	(at package5 s1)
	(at package6 s1)
	(at package7 s1)
	))

(:metric minimize (+ (* 3 (total-time)) (* 1 (fuel-used))))

)
