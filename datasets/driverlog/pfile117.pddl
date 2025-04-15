(define (problem DLOG-5-6-11)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	truck6 - truck
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
	package11 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-2 - location
	p0-4 - location
	p1-3 - location
	p1-4 - location
	p2-1 - location
	p4-3 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s3)
	(at driver3 s0)
	(at driver4 s3)
	(at driver5 s1)
	(at truck1 s4)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at truck5 s0)
	(empty truck5)
	(at truck6 s3)
	(empty truck6)
	(at package1 s4)
	(at package2 s1)
	(at package3 s1)
	(at package4 s2)
	(at package5 s2)
	(at package6 s2)
	(at package7 s3)
	(at package8 s0)
	(at package9 s0)
	(at package10 s1)
	(at package11 s3)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 55)
	(= (time-to-walk p0-2 s0) 55)
	(= (time-to-walk s2 p0-2) 77)
	(= (time-to-walk p0-2 s2) 77)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(= (time-to-walk s0 p0-4) 30)
	(= (time-to-walk p0-4 s0) 30)
	(= (time-to-walk s4 p0-4) 63)
	(= (time-to-walk p0-4 s4) 63)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 12)
	(= (time-to-walk p1-3 s1) 12)
	(= (time-to-walk s3 p1-3) 66)
	(= (time-to-walk p1-3 s3) 66)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(= (time-to-walk s1 p1-4) 53)
	(= (time-to-walk p1-4 s1) 53)
	(= (time-to-walk s4 p1-4) 55)
	(= (time-to-walk p1-4 s4) 55)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 40)
	(= (time-to-walk p2-1 s2) 40)
	(= (time-to-walk s1 p2-1) 78)
	(= (time-to-walk p2-1 s1) 78)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(= (time-to-walk s4 p4-3) 13)
	(= (time-to-walk p4-3 s4) 13)
	(= (time-to-walk s3 p4-3) 4)
	(= (time-to-walk p4-3 s3) 4)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 46)
	(= (time-to-drive s1 s0) 46)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 59)
	(= (time-to-drive s2 s0) 59)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 18)
	(= (time-to-drive s3 s0) 18)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 15)
	(= (time-to-drive s4 s0) 15)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 22)
	(= (time-to-drive s4 s1) 22)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 58)
	(= (time-to-drive s2 s3) 58)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s1)
	(at truck1 s2)
	(at truck3 s3)
	(at truck6 s3)
	(at package1 s2)
	(at package2 s2)
	(at package3 s1)
	(at package4 s3)
	(at package5 s3)
	(at package6 s0)
	(at package7 s1)
	(at package8 s3)
	(at package9 s4)
	(at package10 s2)
	(at package11 s2)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 1  (driven))) (* 2  (walked))))

)
