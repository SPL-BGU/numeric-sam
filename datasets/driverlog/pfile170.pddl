(define (problem DLOG-3-3-9)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
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
	s3 - location
	s4 - location
	p0-1 - location
	p0-2 - location
	p0-4 - location
	p1-0 - location
	p1-4 - location
	p2-0 - location
	p2-3 - location
	p3-2 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s4)
	(at driver3 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s3)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at package1 s4)
	(at package2 s1)
	(at package3 s4)
	(at package4 s4)
	(at package5 s3)
	(at package6 s0)
	(at package7 s3)
	(at package8 s3)
	(at package9 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 62)
	(= (time-to-walk p0-1 s0) 62)
	(= (time-to-walk s1 p0-1) 48)
	(= (time-to-walk p0-1 s1) 48)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 64)
	(= (time-to-walk p0-2 s0) 64)
	(= (time-to-walk s2 p0-2) 58)
	(= (time-to-walk p0-2 s2) 58)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(= (time-to-walk s0 p0-4) 45)
	(= (time-to-walk p0-4 s0) 45)
	(= (time-to-walk s4 p0-4) 25)
	(= (time-to-walk p0-4 s4) 25)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(= (time-to-walk s1 p1-4) 63)
	(= (time-to-walk p1-4 s1) 63)
	(= (time-to-walk s4 p1-4) 65)
	(= (time-to-walk p1-4 s4) 65)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 56)
	(= (time-to-walk p2-3 s2) 56)
	(= (time-to-walk s3 p2-3) 99)
	(= (time-to-walk p2-3 s3) 99)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 53)
	(= (time-to-drive s4 s0) 53)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 71)
	(= (time-to-drive s0 s1) 71)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 86)
	(= (time-to-drive s2 s1) 86)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 52)
	(= (time-to-drive s3 s1) 52)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 69)
	(= (time-to-drive s0 s2) 69)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 96)
	(= (time-to-drive s4 s2) 96)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 15)
	(= (time-to-drive s0 s3) 15)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 64)
	(= (time-to-drive s2 s3) 64)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 94)
	(= (time-to-drive s3 s4) 94)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s4)
	(at driver2 s3)
	(at truck1 s0)
	(at truck3 s2)
	(at package2 s1)
	(at package3 s0)
	(at package4 s4)
	(at package5 s4)
	(at package6 s4)
	(at package7 s1)
	(at package8 s3)
	(at package9 s1)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 3  (driven))) (* 3  (walked))))

)
