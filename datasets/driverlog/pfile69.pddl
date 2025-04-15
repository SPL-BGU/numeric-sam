(define (problem DLOG-4-5-8)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
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
	p0-2 - location
	p1-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s2)
	(at driver4 s2)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at truck5 s2)
	(empty truck5)
	(at package1 s1)
	(at package2 s0)
	(at package3 s2)
	(at package4 s1)
	(at package5 s0)
	(at package6 s2)
	(at package7 s0)
	(at package8 s2)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 68)
	(= (time-to-walk p0-2 s0) 68)
	(= (time-to-walk s2 p0-2) 2)
	(= (time-to-walk p0-2 s2) 2)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 86)
	(= (time-to-walk p1-0 s1) 86)
	(= (time-to-walk s0 p1-0) 82)
	(= (time-to-walk p1-0 s0) 82)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 72)
	(= (time-to-drive s1 s0) 72)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 17)
	(= (time-to-drive s2 s0) 17)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 71)
	(= (time-to-drive s1 s2) 71)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s0)
	(at truck1 s1)
	(at truck2 s1)
	(at truck3 s2)
	(at truck5 s0)
	(at package1 s0)
	(at package2 s2)
	(at package3 s2)
	(at package4 s2)
	(at package5 s1)
	(at package6 s2)
	(at package7 s2)
	(at package8 s1)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 2  (driven))) (* 1  (walked))))

)
