(define (problem DLOG-4-6-15)
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
	s5 - location
	p0-3 - location
	p1-0 - location
	p1-2 - location
	p1-4 - location
	p2-5 - location
	p3-4 - location
	p5-1 - location
	p5-2 - location
	p5-3 - location
	p5-4 - location
	)
	(:init
	(at driver1 s5)
	(at driver2 s5)
	(at driver3 s3)
	(at driver4 s5)
	(at truck1 s3)
	(empty truck1)
	(at truck2 s4)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s4)
	(empty truck4)
	(at truck5 s2)
	(empty truck5)
	(at truck6 s4)
	(empty truck6)
	(at package1 s0)
	(at package2 s2)
	(at package3 s4)
	(at package4 s3)
	(at package5 s1)
	(at package6 s2)
	(at package7 s2)
	(at package8 s4)
	(at package9 s5)
	(at package10 s0)
	(at package11 s2)
	(at package12 s1)
	(at package13 s2)
	(at package14 s4)
	(at package15 s5)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 80)
	(= (time-to-walk p0-3 s0) 80)
	(= (time-to-walk s3 p0-3) 17)
	(= (time-to-walk p0-3 s3) 17)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 80)
	(= (time-to-walk p1-0 s1) 80)
	(= (time-to-walk s0 p1-0) 97)
	(= (time-to-walk p1-0 s0) 97)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 56)
	(= (time-to-walk p1-2 s1) 56)
	(= (time-to-walk s2 p1-2) 79)
	(= (time-to-walk p1-2 s2) 79)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(= (time-to-walk s1 p1-4) 6)
	(= (time-to-walk p1-4 s1) 6)
	(= (time-to-walk s4 p1-4) 37)
	(= (time-to-walk p1-4 s4) 37)
	(path s2 p2-5)
	(path p2-5 s2)
	(path s5 p2-5)
	(path p2-5 s5)
	(= (time-to-walk s2 p2-5) 58)
	(= (time-to-walk p2-5 s2) 58)
	(= (time-to-walk s5 p2-5) 59)
	(= (time-to-walk p2-5 s5) 59)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(= (time-to-walk s3 p3-4) 32)
	(= (time-to-walk p3-4 s3) 32)
	(= (time-to-walk s4 p3-4) 72)
	(= (time-to-walk p3-4 s4) 72)
	(path s5 p5-1)
	(path p5-1 s5)
	(path s1 p5-1)
	(path p5-1 s1)
	(= (time-to-walk s5 p5-1) 66)
	(= (time-to-walk p5-1 s5) 66)
	(= (time-to-walk s1 p5-1) 38)
	(= (time-to-walk p5-1 s1) 38)
	(path s5 p5-3)
	(path p5-3 s5)
	(path s3 p5-3)
	(path p5-3 s3)
	(= (time-to-walk s5 p5-3) 53)
	(= (time-to-walk p5-3 s5) 53)
	(= (time-to-walk s3 p5-3) 68)
	(= (time-to-walk p5-3 s3) 68)
	(path s5 p5-4)
	(path p5-4 s5)
	(path s4 p5-4)
	(path p5-4 s4)
	(= (time-to-walk s5 p5-4) 79)
	(= (time-to-walk p5-4 s5) 79)
	(= (time-to-walk s4 p5-4) 36)
	(= (time-to-walk p5-4 s4) 36)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 57)
	(= (time-to-drive s3 s0) 57)
	(link s0 s5)
	(link s5 s0)
	(= (time-to-drive s0 s5) 12)
	(= (time-to-drive s5 s0) 12)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 56)
	(= (time-to-drive s2 s1) 56)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 19)
	(= (time-to-drive s4 s1) 19)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 60)
	(= (time-to-drive s0 s2) 60)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 44)
	(= (time-to-drive s4 s3) 44)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 14)
	(= (time-to-drive s0 s4) 14)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 36)
	(= (time-to-drive s1 s5) 36)
	(link s5 s3)
	(link s3 s5)
	(= (time-to-drive s5 s3) 89)
	(= (time-to-drive s3 s5) 89)
	(link s5 s4)
	(link s4 s5)
	(= (time-to-drive s5 s4) 38)
	(= (time-to-drive s4 s5) 38)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s3)
	(at driver2 s1)
	(at driver3 s0)
	(at driver4 s5)
	(at truck2 s2)
	(at truck3 s5)
	(at truck6 s5)
	(at package1 s5)
	(at package2 s4)
	(at package3 s2)
	(at package4 s1)
	(at package5 s5)
	(at package6 s3)
	(at package7 s5)
	(at package8 s4)
	(at package9 s0)
	(at package11 s5)
	(at package12 s1)
	(at package13 s5)
	(at package14 s2)
	(at package15 s4)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 3  (driven))) (* 3  (walked))))

)
