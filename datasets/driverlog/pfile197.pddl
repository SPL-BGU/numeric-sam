(define (problem DLOG-4-6-7)
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
	truck6 - truck
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
	p0-1 - location
	p0-3 - location
	p2-3 - location
	p3-4 - location
	p4-2 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s4)
	(at driver3 s3)
	(at driver4 s2)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s4)
	(empty truck2)
	(at truck3 s3)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at truck5 s3)
	(empty truck5)
	(at truck6 s4)
	(empty truck6)
	(at package1 s1)
	(at package2 s4)
	(at package3 s0)
	(at package4 s2)
	(at package5 s4)
	(at package6 s1)
	(at package7 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 30)
	(= (time-to-walk p0-1 s0) 30)
	(= (time-to-walk s1 p0-1) 88)
	(= (time-to-walk p0-1 s1) 88)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 58)
	(= (time-to-walk p0-3 s0) 58)
	(= (time-to-walk s3 p0-3) 60)
	(= (time-to-walk p0-3 s3) 60)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 59)
	(= (time-to-walk p2-3 s2) 59)
	(= (time-to-walk s3 p2-3) 2)
	(= (time-to-walk p2-3 s3) 2)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(= (time-to-walk s3 p3-4) 1)
	(= (time-to-walk p3-4 s3) 1)
	(= (time-to-walk s4 p3-4) 41)
	(= (time-to-walk p3-4 s4) 41)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(= (time-to-walk s4 p4-2) 23)
	(= (time-to-walk p4-2 s4) 23)
	(= (time-to-walk s2 p4-2) 45)
	(= (time-to-walk p4-2 s2) 45)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 66)
	(= (time-to-drive s3 s0) 66)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 53)
	(= (time-to-drive s4 s0) 53)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 16)
	(= (time-to-drive s0 s2) 16)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 63)
	(= (time-to-drive s1 s2) 63)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 78)
	(= (time-to-drive s4 s2) 78)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 66)
	(= (time-to-drive s2 s3) 66)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 81)
	(= (time-to-drive s4 s3) 81)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 78)
	(= (time-to-drive s1 s4) 78)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver3 s2)
	(at truck1 s0)
	(at truck3 s0)
	(at truck5 s2)
	(at truck6 s1)
	(at package1 s1)
	(at package2 s1)
	(at package4 s2)
	(at package5 s4)
	(at package6 s3)
	(at package7 s2)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 2  (driven))) (* 1  (walked))))

)
