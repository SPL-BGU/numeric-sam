(define (problem DLOG-5-6-6)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-1 - location
	p0-3 - location
	p1-4 - location
	p3-0 - location
	p3-2 - location
	p4-2 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s0)
	(at driver3 s0)
	(at driver4 s4)
	(at driver5 s1)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s3)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s4)
	(empty truck4)
	(at truck5 s4)
	(empty truck5)
	(at truck6 s0)
	(empty truck6)
	(at package1 s1)
	(at package2 s3)
	(at package3 s3)
	(at package4 s4)
	(at package5 s2)
	(at package6 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 65)
	(= (time-to-walk p0-1 s0) 65)
	(= (time-to-walk s1 p0-1) 69)
	(= (time-to-walk p0-1 s1) 69)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 69)
	(= (time-to-walk p0-3 s0) 69)
	(= (time-to-walk s3 p0-3) 58)
	(= (time-to-walk p0-3 s3) 58)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(= (time-to-walk s1 p1-4) 60)
	(= (time-to-walk p1-4 s1) 60)
	(= (time-to-walk s4 p1-4) 25)
	(= (time-to-walk p1-4 s4) 25)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(= (time-to-walk s3 p3-2) 67)
	(= (time-to-walk p3-2 s3) 67)
	(= (time-to-walk s2 p3-2) 48)
	(= (time-to-walk p3-2 s2) 48)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(= (time-to-walk s4 p4-2) 92)
	(= (time-to-walk p4-2 s4) 92)
	(= (time-to-walk s2 p4-2) 52)
	(= (time-to-walk p4-2 s2) 52)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 62)
	(= (time-to-drive s2 s0) 62)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 54)
	(= (time-to-drive s0 s1) 54)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 3)
	(= (time-to-drive s3 s1) 3)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 97)
	(= (time-to-drive s1 s2) 97)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 36)
	(= (time-to-drive s3 s2) 36)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 34)
	(= (time-to-drive s4 s3) 34)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 76)
	(= (time-to-drive s0 s4) 76)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 26)
	(= (time-to-drive s1 s4) 26)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 41)
	(= (time-to-drive s2 s4) 41)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s3)
	(at driver3 s3)
	(at driver5 s3)
	(at truck1 s0)
	(at truck2 s2)
	(at truck3 s1)
	(at truck5 s3)
	(at truck6 s3)
	(at package1 s4)
	(at package2 s4)
	(at package3 s4)
	(at package4 s0)
	(at package5 s1)
	(at package6 s0)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 1  (driven))) (* 3  (walked))))

)
