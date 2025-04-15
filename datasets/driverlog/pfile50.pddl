(define (problem DLOG-4-5-10)
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
	package9 - obj
	package10 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-0 - location
	p1-2 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s1)
	(at driver4 s2)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s1)
	(empty truck5)
	(at package1 s1)
	(at package2 s1)
	(at package3 s0)
	(at package4 s1)
	(at package5 s0)
	(at package6 s0)
	(at package7 s0)
	(at package8 s1)
	(at package9 s2)
	(at package10 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 92)
	(= (time-to-walk p0-1 s0) 92)
	(= (time-to-walk s1 p0-1) 61)
	(= (time-to-walk p0-1 s1) 61)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 92)
	(= (time-to-walk p1-2 s1) 92)
	(= (time-to-walk s2 p1-2) 31)
	(= (time-to-walk p1-2 s2) 31)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 6)
	(= (time-to-drive s1 s0) 6)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 10)
	(= (time-to-drive s2 s0) 10)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 53)
	(= (time-to-drive s2 s1) 53)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s0)
	(at driver3 s1)
	(at truck1 s1)
	(at truck3 s0)
	(at truck4 s1)
	(at package1 s1)
	(at package2 s0)
	(at package3 s0)
	(at package4 s1)
	(at package5 s1)
	(at package6 s2)
	(at package7 s0)
	(at package8 s1)
	(at package9 s1)
	(at package10 s2)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 2  (driven))) (* 4  (walked))))

)
