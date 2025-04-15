(define (problem DLOG-5-6-4)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-1 - location
	p1-2 - location
	p1-3 - location
	p1-4 - location
	p2-0 - location
	p4-3 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s3)
	(at driver3 s3)
	(at driver4 s0)
	(at driver5 s1)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s4)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at truck5 s3)
	(empty truck5)
	(at truck6 s0)
	(empty truck6)
	(at package1 s3)
	(at package2 s2)
	(at package3 s2)
	(at package4 s3)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 83)
	(= (time-to-walk p0-1 s0) 83)
	(= (time-to-walk s1 p0-1) 16)
	(= (time-to-walk p0-1 s1) 16)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 65)
	(= (time-to-walk p1-2 s1) 65)
	(= (time-to-walk s2 p1-2) 68)
	(= (time-to-walk p1-2 s2) 68)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 3)
	(= (time-to-walk p1-3 s1) 3)
	(= (time-to-walk s3 p1-3) 68)
	(= (time-to-walk p1-3 s3) 68)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(= (time-to-walk s1 p1-4) 59)
	(= (time-to-walk p1-4 s1) 59)
	(= (time-to-walk s4 p1-4) 48)
	(= (time-to-walk p1-4 s4) 48)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 62)
	(= (time-to-walk p2-0 s2) 62)
	(= (time-to-walk s0 p2-0) 49)
	(= (time-to-walk p2-0 s0) 49)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(= (time-to-walk s4 p4-3) 82)
	(= (time-to-walk p4-3 s4) 82)
	(= (time-to-walk s3 p4-3) 28)
	(= (time-to-walk p4-3 s3) 28)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 63)
	(= (time-to-drive s1 s0) 63)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 51)
	(= (time-to-drive s4 s0) 51)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 54)
	(= (time-to-drive s4 s1) 54)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 32)
	(= (time-to-drive s1 s2) 32)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 70)
	(= (time-to-drive s0 s3) 70)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 60)
	(= (time-to-drive s1 s3) 60)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 67)
	(= (time-to-drive s2 s4) 67)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 34)
	(= (time-to-drive s3 s4) 34)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s3)
	(at driver2 s0)
	(at truck1 s4)
	(at truck2 s0)
	(at truck3 s4)
	(at truck5 s1)
	(at truck6 s0)
	(at package1 s4)
	(at package2 s2)
	(at package3 s3)
	(at package4 s0)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 1  (driven))) (* 4  (walked))))

)
