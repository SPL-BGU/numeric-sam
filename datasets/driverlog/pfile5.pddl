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
	p0-2 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s0)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at package1 s0)
	(at package2 s0)
	(at package3 s2)
	(at package4 s0)
	(at package5 s0)
	(at package6 s2)
	(at package7 s2)
	(at package8 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 76)
	(= (time-to-walk p0-1 s0) 76)
	(= (time-to-walk s1 p0-1) 68)
	(= (time-to-walk p0-1 s1) 68)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 22)
	(= (time-to-walk p0-2 s0) 22)
	(= (time-to-walk s2 p0-2) 46)
	(= (time-to-walk p0-2 s2) 46)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 18)
	(= (time-to-walk p1-2 s1) 18)
	(= (time-to-walk s2 p1-2) 24)
	(= (time-to-walk p1-2 s2) 24)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 90)
	(= (time-to-drive s1 s0) 90)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 34)
	(= (time-to-drive s2 s0) 34)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 64)
	(= (time-to-drive s1 s2) 64)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s2)
	(at driver4 s1)
	(at truck2 s0)
	(at truck3 s0)
	(at package1 s1)
	(at package2 s0)
	(at package3 s0)
	(at package4 s2)
	(at package5 s1)
	(at package6 s2)
	(at package7 s0)
	(at package8 s2)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 3  (driven))) (* 4  (walked))))

)
