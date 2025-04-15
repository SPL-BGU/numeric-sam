(define (problem DLOG-3-2-9)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
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
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p2-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s0)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at package1 s0)
	(at package2 s2)
	(at package3 s1)
	(at package4 s2)
	(at package5 s2)
	(at package6 s1)
	(at package7 s1)
	(at package8 s1)
	(at package9 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 78)
	(= (time-to-walk p0-1 s0) 78)
	(= (time-to-walk s1 p0-1) 16)
	(= (time-to-walk p0-1 s1) 16)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 40)
	(= (time-to-walk p0-2 s0) 40)
	(= (time-to-walk s2 p0-2) 98)
	(= (time-to-walk p0-2 s2) 98)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 38)
	(= (time-to-walk p2-1 s2) 38)
	(= (time-to-walk s1 p2-1) 49)
	(= (time-to-walk p2-1 s1) 49)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 92)
	(= (time-to-drive s2 s0) 92)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 31)
	(= (time-to-drive s0 s1) 31)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 19)
	(= (time-to-drive s1 s2) 19)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s0)
	(at driver3 s0)
	(at truck1 s2)
	(at package1 s0)
	(at package2 s2)
	(at package3 s2)
	(at package4 s0)
	(at package5 s2)
	(at package6 s1)
	(at package8 s0)
	(at package9 s2)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 3  (driven))) (* 4  (walked))))

)
