(define (problem DLOG-4-3-7)
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
	s0 - location
	s1 - location
	s2 - location
	p0-2 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s0)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at package1 s0)
	(at package2 s1)
	(at package3 s2)
	(at package4 s0)
	(at package5 s2)
	(at package6 s1)
	(at package7 s2)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 51)
	(= (time-to-walk p0-2 s0) 51)
	(= (time-to-walk s2 p0-2) 2)
	(= (time-to-walk p0-2 s2) 2)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 16)
	(= (time-to-walk p2-1 s2) 16)
	(= (time-to-walk s1 p2-1) 26)
	(= (time-to-walk p2-1 s1) 26)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 66)
	(= (time-to-drive s1 s0) 66)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 40)
	(= (time-to-drive s2 s0) 40)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 39)
	(= (time-to-drive s1 s2) 39)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s0)
	(at driver4 s2)
	(at truck1 s0)
	(at truck3 s1)
	(at package1 s0)
	(at package2 s1)
	(at package3 s0)
	(at package5 s2)
	(at package6 s1)
	(at package7 s1)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 1  (driven))) (* 1  (walked))))

)
