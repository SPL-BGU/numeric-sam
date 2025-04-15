(define (problem DLOG-3-8-9)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	p0-1 - location
	p0-5 - location
	p1-0 - location
	p1-2 - location
	p1-4 - location
	p2-3 - location
	p3-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s3)
	(at truck1 s5)
	(empty truck1)
	(at truck2 s3)
	(empty truck2)
	(at truck3 s3)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at truck5 s3)
	(empty truck5)
	(at truck6 s5)
	(empty truck6)
	(at truck7 s2)
	(empty truck7)
	(at truck8 s3)
	(empty truck8)
	(at package1 s2)
	(at package2 s0)
	(at package3 s4)
	(at package4 s0)
	(at package5 s3)
	(at package6 s0)
	(at package7 s4)
	(at package8 s5)
	(at package9 s5)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 86)
	(= (time-to-walk p0-1 s0) 86)
	(= (time-to-walk s1 p0-1) 60)
	(= (time-to-walk p0-1 s1) 60)
	(path s0 p0-5)
	(path p0-5 s0)
	(path s5 p0-5)
	(path p0-5 s5)
	(= (time-to-walk s0 p0-5) 75)
	(= (time-to-walk p0-5 s0) 75)
	(= (time-to-walk s5 p0-5) 68)
	(= (time-to-walk p0-5 s5) 68)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 99)
	(= (time-to-walk p1-2 s1) 99)
	(= (time-to-walk s2 p1-2) 98)
	(= (time-to-walk p1-2 s2) 98)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(= (time-to-walk s1 p1-4) 26)
	(= (time-to-walk p1-4 s1) 26)
	(= (time-to-walk s4 p1-4) 5)
	(= (time-to-walk p1-4 s4) 5)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 73)
	(= (time-to-walk p2-3 s2) 73)
	(= (time-to-walk s3 p2-3) 92)
	(= (time-to-walk p2-3 s3) 92)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 83)
	(= (time-to-walk p3-1 s3) 83)
	(= (time-to-walk s1 p3-1) 43)
	(= (time-to-walk p3-1 s1) 43)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 7)
	(= (time-to-drive s2 s0) 7)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 94)
	(= (time-to-drive s3 s0) 94)
	(link s0 s5)
	(link s5 s0)
	(= (time-to-drive s0 s5) 65)
	(= (time-to-drive s5 s0) 65)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 95)
	(= (time-to-drive s0 s1) 95)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 53)
	(= (time-to-drive s2 s1) 53)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 49)
	(= (time-to-drive s4 s1) 49)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 5)
	(= (time-to-drive s1 s3) 5)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 66)
	(= (time-to-drive s2 s3) 66)
	(link s3 s5)
	(link s5 s3)
	(= (time-to-drive s3 s5) 80)
	(= (time-to-drive s5 s3) 80)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 60)
	(= (time-to-drive s1 s5) 60)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s5)
	(at driver2 s4)
	(at driver3 s0)
	(at truck1 s2)
	(at truck2 s4)
	(at truck3 s1)
	(at truck4 s2)
	(at truck6 s0)
	(at truck7 s2)
	(at truck8 s4)
	(at package1 s1)
	(at package2 s4)
	(at package3 s4)
	(at package4 s1)
	(at package5 s5)
	(at package6 s1)
	(at package7 s4)
	(at package8 s3)
	(at package9 s0)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 3  (driven))) (* 1  (walked))))

)
