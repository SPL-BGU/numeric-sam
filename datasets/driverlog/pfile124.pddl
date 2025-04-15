(define (problem DLOG-3-8-15)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	truck6 - truck
	truck7 - truck
	truck8 - truck
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
	package12 - obj
	package13 - obj
	package14 - obj
	package15 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-3 - location
	p1-0 - location
	p1-3 - location
	p3-4 - location
	p4-1 - location
	p4-2 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s0)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s4)
	(empty truck2)
	(at truck3 s4)
	(empty truck3)
	(at truck4 s3)
	(empty truck4)
	(at truck5 s4)
	(empty truck5)
	(at truck6 s3)
	(empty truck6)
	(at truck7 s3)
	(empty truck7)
	(at truck8 s1)
	(empty truck8)
	(at package1 s3)
	(at package2 s1)
	(at package3 s3)
	(at package4 s0)
	(at package5 s1)
	(at package6 s3)
	(at package7 s2)
	(at package8 s1)
	(at package9 s2)
	(at package10 s1)
	(at package11 s4)
	(at package12 s4)
	(at package13 s0)
	(at package14 s2)
	(at package15 s1)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 48)
	(= (time-to-walk p0-3 s0) 48)
	(= (time-to-walk s3 p0-3) 88)
	(= (time-to-walk p0-3 s3) 88)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 96)
	(= (time-to-walk p1-0 s1) 96)
	(= (time-to-walk s0 p1-0) 77)
	(= (time-to-walk p1-0 s0) 77)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 46)
	(= (time-to-walk p1-3 s1) 46)
	(= (time-to-walk s3 p1-3) 24)
	(= (time-to-walk p1-3 s3) 24)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(= (time-to-walk s3 p3-4) 99)
	(= (time-to-walk p3-4 s3) 99)
	(= (time-to-walk s4 p3-4) 68)
	(= (time-to-walk p3-4 s4) 68)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(= (time-to-walk s4 p4-1) 17)
	(= (time-to-walk p4-1 s4) 17)
	(= (time-to-walk s1 p4-1) 80)
	(= (time-to-walk p4-1 s1) 80)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(= (time-to-walk s4 p4-2) 17)
	(= (time-to-walk p4-2 s4) 17)
	(= (time-to-walk s2 p4-2) 80)
	(= (time-to-walk p4-2 s2) 80)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 97)
	(= (time-to-drive s2 s0) 97)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 56)
	(= (time-to-drive s2 s1) 56)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 79)
	(= (time-to-drive s3 s1) 79)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 6)
	(= (time-to-drive s3 s2) 6)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 37)
	(= (time-to-drive s0 s3) 37)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 58)
	(= (time-to-drive s4 s3) 58)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 59)
	(= (time-to-drive s0 s4) 59)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 32)
	(= (time-to-drive s1 s4) 32)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s3)
	(at driver3 s4)
	(at truck1 s1)
	(at truck2 s2)
	(at truck3 s1)
	(at truck4 s0)
	(at truck5 s4)
	(at truck7 s1)
	(at truck8 s4)
	(at package1 s2)
	(at package2 s2)
	(at package3 s4)
	(at package4 s4)
	(at package5 s3)
	(at package6 s1)
	(at package7 s1)
	(at package8 s4)
	(at package9 s3)
	(at package10 s4)
	(at package11 s3)
	(at package12 s0)
	(at package14 s4)
	(at package15 s0)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 3  (driven))) (* 2  (walked))))

)
