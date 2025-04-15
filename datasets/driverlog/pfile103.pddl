(define (problem DLOG-4-5-7)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-2 - location
	p0-4 - location
	p1-0 - location
	p1-3 - location
	p2-4 - location
	p3-4 - location
	p4-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s2)
	(at driver3 s3)
	(at driver4 s1)
	(at truck1 s3)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s3)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s2)
	(empty truck5)
	(at package1 s4)
	(at package2 s3)
	(at package3 s0)
	(at package4 s2)
	(at package5 s4)
	(at package6 s2)
	(at package7 s4)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 68)
	(= (time-to-walk p0-2 s0) 68)
	(= (time-to-walk s2 p0-2) 96)
	(= (time-to-walk p0-2 s2) 96)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(= (time-to-walk s0 p0-4) 49)
	(= (time-to-walk p0-4 s0) 49)
	(= (time-to-walk s4 p0-4) 28)
	(= (time-to-walk p0-4 s4) 28)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 11)
	(= (time-to-walk p1-0 s1) 11)
	(= (time-to-walk s0 p1-0) 59)
	(= (time-to-walk p1-0 s0) 59)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 91)
	(= (time-to-walk p1-3 s1) 91)
	(= (time-to-walk s3 p1-3) 71)
	(= (time-to-walk p1-3 s3) 71)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(= (time-to-walk s2 p2-4) 89)
	(= (time-to-walk p2-4 s2) 89)
	(= (time-to-walk s4 p2-4) 72)
	(= (time-to-walk p2-4 s4) 72)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(= (time-to-walk s3 p3-4) 66)
	(= (time-to-walk p3-4 s3) 66)
	(= (time-to-walk s4 p3-4) 45)
	(= (time-to-walk p3-4 s4) 45)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(= (time-to-walk s4 p4-1) 76)
	(= (time-to-walk p4-1 s4) 76)
	(= (time-to-walk s1 p4-1) 45)
	(= (time-to-walk p4-1 s1) 45)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 26)
	(= (time-to-drive s1 s0) 26)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 98)
	(= (time-to-drive s4 s0) 98)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 46)
	(= (time-to-drive s3 s1) 46)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 53)
	(= (time-to-drive s0 s2) 53)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 11)
	(= (time-to-drive s1 s2) 11)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 2)
	(= (time-to-drive s4 s2) 2)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 46)
	(= (time-to-drive s0 s3) 46)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 16)
	(= (time-to-drive s4 s3) 16)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 95)
	(= (time-to-drive s1 s4) 95)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s4)
	(at driver3 s4)
	(at driver4 s0)
	(at truck1 s0)
	(at truck2 s1)
	(at truck3 s4)
	(at truck4 s0)
	(at truck5 s1)
	(at package2 s4)
	(at package3 s1)
	(at package5 s1)
	(at package6 s4)
	(at package7 s0)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 2  (driven))) (* 2  (walked))))

)
