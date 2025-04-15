(define (problem DLOG-5-8-5)
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
	truck7 - truck
	truck8 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-3 - location
	p1-0 - location
	p2-3 - location
	p2-4 - location
	p3-1 - location
	p4-2 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s3)
	(at driver4 s2)
	(at driver5 s2)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s4)
	(empty truck4)
	(at truck5 s1)
	(empty truck5)
	(at truck6 s2)
	(empty truck6)
	(at truck7 s4)
	(empty truck7)
	(at truck8 s0)
	(empty truck8)
	(at package1 s4)
	(at package2 s1)
	(at package3 s3)
	(at package4 s4)
	(at package5 s1)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 49)
	(= (time-to-walk p0-3 s0) 49)
	(= (time-to-walk s3 p0-3) 99)
	(= (time-to-walk p0-3 s3) 99)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 58)
	(= (time-to-walk p1-0 s1) 58)
	(= (time-to-walk s0 p1-0) 22)
	(= (time-to-walk p1-0 s0) 22)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 34)
	(= (time-to-walk p2-3 s2) 34)
	(= (time-to-walk s3 p2-3) 17)
	(= (time-to-walk p2-3 s3) 17)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(= (time-to-walk s2 p2-4) 43)
	(= (time-to-walk p2-4 s2) 43)
	(= (time-to-walk s4 p2-4) 78)
	(= (time-to-walk p2-4 s4) 78)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 83)
	(= (time-to-walk p3-1 s3) 83)
	(= (time-to-walk s1 p3-1) 75)
	(= (time-to-walk p3-1 s1) 75)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 61)
	(= (time-to-drive s1 s0) 61)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 60)
	(= (time-to-drive s2 s0) 60)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 70)
	(= (time-to-drive s3 s1) 70)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 64)
	(= (time-to-drive s0 s3) 64)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 5)
	(= (time-to-drive s2 s3) 5)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 70)
	(= (time-to-drive s4 s3) 70)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 45)
	(= (time-to-drive s1 s4) 45)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 92)
	(= (time-to-drive s2 s4) 92)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver3 s0)
	(at driver4 s3)
	(at driver5 s2)
	(at truck2 s1)
	(at truck4 s4)
	(at truck6 s3)
	(at truck7 s3)
	(at package1 s4)
	(at package2 s1)
	(at package3 s2)
	(at package4 s2)
	(at package5 s0)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 3  (driven))) (* 2  (walked))))

)
