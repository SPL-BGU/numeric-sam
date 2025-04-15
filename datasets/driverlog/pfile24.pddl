(define (problem DLOG-4-3-9)
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
	package9 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-0 - location
	p1-2 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s2)
	(at driver4 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at package1 s1)
	(at package2 s1)
	(at package3 s2)
	(at package4 s1)
	(at package5 s2)
	(at package6 s1)
	(at package7 s1)
	(at package8 s1)
	(at package9 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 57)
	(= (time-to-walk p0-1 s0) 57)
	(= (time-to-walk s1 p0-1) 85)
	(= (time-to-walk p0-1 s1) 85)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 88)
	(= (time-to-walk p1-2 s1) 88)
	(= (time-to-walk s2 p1-2) 93)
	(= (time-to-walk p1-2 s2) 93)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 22)
	(= (time-to-drive s0 s1) 22)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 21)
	(= (time-to-drive s2 s1) 21)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s2)
	(at driver3 s0)
	(at truck2 s1)
	(at truck3 s2)
	(at package1 s0)
	(at package2 s2)
	(at package3 s2)
	(at package4 s0)
	(at package5 s2)
	(at package6 s1)
	(at package7 s0)
	(at package8 s2)
	(at package9 s0)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 3  (driven))) (* 1  (walked))))

)
