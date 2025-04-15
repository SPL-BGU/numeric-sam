(define (problem DLOG-5-7-15)
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
	p1-4 - location
	p2-0 - location
	p2-1 - location
	p3-2 - location
	p4-3 - location
	p4-5 - location
	p5-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s5)
	(at driver4 s1)
	(at driver5 s0)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s0)
	(empty truck5)
	(at truck6 s0)
	(empty truck6)
	(at truck7 s5)
	(empty truck7)
	(at package1 s3)
	(at package2 s2)
	(at package3 s0)
	(at package4 s1)
	(at package5 s1)
	(at package6 s4)
	(at package7 s2)
	(at package8 s2)
	(at package9 s3)
	(at package10 s4)
	(at package11 s5)
	(at package12 s1)
	(at package13 s5)
	(at package14 s1)
	(at package15 s2)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 20)
	(= (time-to-walk p0-3 s0) 20)
	(= (time-to-walk s3 p0-3) 8)
	(= (time-to-walk p0-3 s3) 8)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 29)
	(= (time-to-walk p1-0 s1) 29)
	(= (time-to-walk s0 p1-0) 19)
	(= (time-to-walk p1-0 s0) 19)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(= (time-to-walk s1 p1-4) 56)
	(= (time-to-walk p1-4 s1) 56)
	(= (time-to-walk s4 p1-4) 82)
	(= (time-to-walk p1-4 s4) 82)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 29)
	(= (time-to-walk p2-0 s2) 29)
	(= (time-to-walk s0 p2-0) 89)
	(= (time-to-walk p2-0 s0) 89)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 36)
	(= (time-to-walk p2-1 s2) 36)
	(= (time-to-walk s1 p2-1) 46)
	(= (time-to-walk p2-1 s1) 46)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(= (time-to-walk s3 p3-2) 55)
	(= (time-to-walk p3-2 s3) 55)
	(= (time-to-walk s2 p3-2) 96)
	(= (time-to-walk p3-2 s2) 96)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(= (time-to-walk s4 p4-3) 87)
	(= (time-to-walk p4-3 s4) 87)
	(= (time-to-walk s3 p4-3) 34)
	(= (time-to-walk p4-3 s3) 34)
	(path s4 p4-5)
	(path p4-5 s4)
	(path s5 p4-5)
	(path p4-5 s5)
	(= (time-to-walk s4 p4-5) 52)
	(= (time-to-walk p4-5 s4) 52)
	(= (time-to-walk s5 p4-5) 81)
	(= (time-to-walk p4-5 s5) 81)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(= (time-to-walk s5 p5-0) 27)
	(= (time-to-walk p5-0 s5) 27)
	(= (time-to-walk s0 p5-0) 74)
	(= (time-to-walk p5-0 s0) 74)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 11)
	(= (time-to-drive s1 s0) 11)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 49)
	(= (time-to-drive s4 s0) 49)
	(link s0 s5)
	(link s5 s0)
	(= (time-to-drive s0 s5) 44)
	(= (time-to-drive s5 s0) 44)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 4)
	(= (time-to-drive s2 s1) 4)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 40)
	(= (time-to-drive s0 s2) 40)
	(link s2 s5)
	(link s5 s2)
	(= (time-to-drive s2 s5) 26)
	(= (time-to-drive s5 s2) 26)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 65)
	(= (time-to-drive s2 s3) 65)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 73)
	(= (time-to-drive s2 s4) 73)
	(link s4 s5)
	(link s5 s4)
	(= (time-to-drive s4 s5) 31)
	(= (time-to-drive s5 s4) 31)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 21)
	(= (time-to-drive s1 s5) 21)
	(link s5 s3)
	(link s3 s5)
	(= (time-to-drive s5 s3) 12)
	(= (time-to-drive s3 s5) 12)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s4)
	(at driver2 s5)
	(at driver3 s1)
	(at driver4 s2)
	(at truck1 s3)
	(at truck2 s4)
	(at truck3 s1)
	(at truck4 s0)
	(at truck5 s0)
	(at package1 s2)
	(at package2 s3)
	(at package3 s4)
	(at package4 s5)
	(at package5 s1)
	(at package6 s2)
	(at package7 s3)
	(at package8 s3)
	(at package9 s3)
	(at package10 s3)
	(at package11 s1)
	(at package12 s4)
	(at package13 s4)
	(at package14 s0)
	(at package15 s1)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 1  (driven))) (* 2  (walked))))

)
