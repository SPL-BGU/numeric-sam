(define (problem DLOG-2-2-8)
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
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p1-2 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at package1 s2)
	(at package2 s2)
	(at package3 s0)
	(at package4 s1)
	(at package5 s2)
	(at package6 s2)
	(at package7 s0)
	(at package8 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 1)
	(= (time-to-walk p0-1 s0) 1)
	(= (time-to-walk s1 p0-1) 1)
	(= (time-to-walk p0-1 s1) 1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 88)
	(= (time-to-walk p0-2 s0) 88)
	(= (time-to-walk s2 p0-2) 78)
	(= (time-to-walk p0-2 s2) 78)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 67)
	(= (time-to-walk p1-2 s1) 67)
	(= (time-to-walk s2 p1-2) 82)
	(= (time-to-walk p1-2 s2) 82)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 86)
	(= (time-to-drive s2 s0) 86)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 51)
	(= (time-to-drive s0 s1) 51)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 13)
	(= (time-to-drive s1 s2) 13)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s2)
	(at truck1 s2)
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	(at package4 s2)
	(at package5 s1)
	(at package6 s1)
	(at package7 s2)
	(at package8 s1)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 2  (driven))) (* 2  (walked))))

)
