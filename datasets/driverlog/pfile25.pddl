(define (problem DLOG-4-4-7)
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
	p1-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s2)
	(at driver4 s0)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at package1 s0)
	(at package2 s1)
	(at package3 s2)
	(at package4 s1)
	(at package5 s0)
	(at package6 s1)
	(at package7 s0)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 67)
	(= (time-to-walk p0-2 s0) 67)
	(= (time-to-walk s2 p0-2) 77)
	(= (time-to-walk p0-2 s2) 77)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 74)
	(= (time-to-walk p1-0 s1) 74)
	(= (time-to-walk s0 p1-0) 59)
	(= (time-to-walk p1-0 s0) 59)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 92)
	(= (time-to-walk p2-1 s2) 92)
	(= (time-to-walk s1 p2-1) 75)
	(= (time-to-walk p2-1 s1) 75)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 92)
	(= (time-to-drive s1 s0) 92)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 24)
	(= (time-to-drive s2 s1) 24)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 50)
	(= (time-to-drive s0 s2) 50)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s0)
	(at driver4 s1)
	(at truck1 s2)
	(at truck2 s0)
	(at truck3 s0)
	(at truck4 s2)
	(at package1 s1)
	(at package2 s0)
	(at package3 s2)
	(at package4 s0)
	(at package5 s0)
	(at package6 s0)
	(at package7 s2)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 2  (driven))) (* 4  (walked))))

)
