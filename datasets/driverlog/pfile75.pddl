(define (problem DLOG-4-2-5)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-2 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s2)
	(at driver3 s1)
	(at driver4 s2)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at package1 s1)
	(at package2 s1)
	(at package3 s2)
	(at package4 s0)
	(at package5 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 7)
	(= (time-to-walk p0-1 s0) 7)
	(= (time-to-walk s1 p0-1) 3)
	(= (time-to-walk p0-1 s1) 3)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 64)
	(= (time-to-walk p1-2 s1) 64)
	(= (time-to-walk s2 p1-2) 41)
	(= (time-to-walk p1-2 s2) 41)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 68)
	(= (time-to-drive s2 s0) 68)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 38)
	(= (time-to-drive s0 s1) 38)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 94)
	(= (time-to-drive s1 s2) 94)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s2)
	(at package2 s0)
	(at package3 s2)
	(at package4 s2)
	(at package5 s0)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 4  (driven))) (* 1  (walked))))

)
