(define (problem DLOG-5-2-6-299)
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
	s0 - location
	s1 - location
	s2 - location
	p1-2 - location
	p0-2 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s2)
	(at driver3 s2)
	(at driver4 s2)
	(at driver5 s2)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s2)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s2)
	(at package2 s1)
	(at package3 s0)
	(at package4 s2)
	(at package5 s1)
	(at package6 s1)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 1)
	(= (time-to-walk p1-2 s1) 1)
	(= (time-to-walk s2 p1-2) 1)
	(= (time-to-walk p1-2 s2) 1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 1)
	(= (time-to-walk p0-2 s0) 1)
	(= (time-to-walk s2 p0-2) 1)
	(= (time-to-walk p0-2 s2) 1)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 1)
	(= (time-to-drive s2 s1) 1)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 1)
	(= (time-to-drive s2 s0) 1)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver3 s1)
	(at truck1 s0)
	(at truck2 s0)
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	(at package4 s1)
	(at package5 s2)
	(at package6 s2)
	))

(:metric minimize (+ (* 4 (total-time)) (* 2 (fuel-used))))

)
