(define (problem DLOG-3-6-9)
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
	p1-0 - location
	p1-2 - location
	p1-4 - location
	p2-1 - location
	p2-3 - location
	p2-4 - location
	p3-0 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s0)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at truck5 s3)
	(empty truck5)
	(at truck6 s2)
	(empty truck6)
	(at package1 s4)
	(at package2 s1)
	(at package3 s0)
	(at package4 s0)
	(at package5 s0)
	(at package6 s0)
	(at package7 s4)
	(at package8 s0)
	(at package9 s3)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 40)
	(= (time-to-walk p1-0 s1) 40)
	(= (time-to-walk s0 p1-0) 93)
	(= (time-to-walk p1-0 s0) 93)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 59)
	(= (time-to-walk p1-2 s1) 59)
	(= (time-to-walk s2 p1-2) 77)
	(= (time-to-walk p1-2 s2) 77)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(= (time-to-walk s1 p1-4) 84)
	(= (time-to-walk p1-4 s1) 84)
	(= (time-to-walk s4 p1-4) 99)
	(= (time-to-walk p1-4 s4) 99)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 67)
	(= (time-to-walk p2-3 s2) 67)
	(= (time-to-walk s3 p2-3) 11)
	(= (time-to-walk p2-3 s3) 11)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(= (time-to-walk s2 p2-4) 90)
	(= (time-to-walk p2-4 s2) 90)
	(= (time-to-walk s4 p2-4) 24)
	(= (time-to-walk p2-4 s4) 24)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(= (time-to-walk s3 p3-0) 13)
	(= (time-to-walk p3-0 s3) 13)
	(= (time-to-walk s0 p3-0) 33)
	(= (time-to-walk p3-0 s0) 33)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 74)
	(= (time-to-drive s1 s0) 74)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 24)
	(= (time-to-drive s2 s0) 24)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 82)
	(= (time-to-drive s4 s0) 82)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 60)
	(= (time-to-drive s4 s1) 60)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 39)
	(= (time-to-drive s1 s2) 39)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 48)
	(= (time-to-drive s3 s2) 48)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 11)
	(= (time-to-drive s4 s2) 11)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 47)
	(= (time-to-drive s1 s3) 47)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s3)
	(at truck1 s3)
	(at truck2 s0)
	(at truck4 s2)
	(at truck5 s4)
	(at truck6 s0)
	(at package1 s2)
	(at package2 s4)
	(at package3 s2)
	(at package4 s2)
	(at package5 s3)
	(at package6 s3)
	(at package8 s3)
	(at package9 s2)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 4  (driven))) (* 2  (walked))))

)
