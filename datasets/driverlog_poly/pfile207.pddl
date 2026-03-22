(define (problem DLOG-5-2-7-207)
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
	package7 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p3-0 - location
	p2-0 - location
	p2-3 - location
	p1-0 - location
	p1-3 - location
	p4-0 - location
	p4-1 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s0)
	(at driver3 s1)
	(at driver4 s3)
	(at driver5 s4)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s1)
	(at package2 s1)
	(at package3 s1)
	(at package4 s4)
	(at package5 s4)
	(at package6 s1)
	(at package7 s0)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(= (time-to-walk s3 p3-0) 11)
	(= (time-to-walk p3-0 s3) 11)
	(= (time-to-walk s0 p3-0) 5)
	(= (time-to-walk p3-0 s0) 5)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 10)
	(= (time-to-walk p2-0 s2) 10)
	(= (time-to-walk s0 p2-0) 83)
	(= (time-to-walk p2-0 s0) 83)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 86)
	(= (time-to-walk p2-3 s2) 86)
	(= (time-to-walk s3 p2-3) 94)
	(= (time-to-walk p2-3 s3) 94)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 84)
	(= (time-to-walk p1-0 s1) 84)
	(= (time-to-walk s0 p1-0) 81)
	(= (time-to-walk p1-0 s0) 81)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 34)
	(= (time-to-walk p1-3 s1) 34)
	(= (time-to-walk s3 p1-3) 73)
	(= (time-to-walk p1-3 s3) 73)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(= (time-to-walk s4 p4-0) 62)
	(= (time-to-walk p4-0 s4) 62)
	(= (time-to-walk s0 p4-0) 24)
	(= (time-to-walk p4-0 s0) 24)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(= (time-to-walk s4 p4-1) 94)
	(= (time-to-walk p4-1 s4) 94)
	(= (time-to-walk s1 p4-1) 68)
	(= (time-to-walk p4-1 s1) 68)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 47)
	(= (time-to-drive s3 s0) 47)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 10)
	(= (time-to-drive s0 s1) 10)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 66)
	(= (time-to-drive s2 s1) 66)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 77)
	(= (time-to-drive s3 s1) 77)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 54)
	(= (time-to-drive s4 s1) 54)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 42)
	(= (time-to-drive s0 s4) 42)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 94)
	(= (time-to-drive s2 s4) 94)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 42)
	(= (time-to-drive s3 s2) 42)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver3 s1)
	(at truck1 s2)
	(at truck2 s4)
	(at package1 s1)
	(at package2 s4)
	(at package4 s0)
	(at package5 s2)
	(at package7 s0)
	))

(:metric minimize (+ (* 4 (total-time)) (* 3 (fuel-used))))

)
