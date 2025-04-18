(define (problem DLOG-5-7-12)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	p0-1 - location
	p0-3 - location
	p0-6 - location
	p1-2 - location
	p1-4 - location
	p2-4 - location
	p2-6 - location
	p3-2 - location
	p3-4 - location
	p3-5 - location
	p4-0 - location
	p6-1 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s4)
	(at driver3 s3)
	(at driver4 s3)
	(at driver5 s0)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s4)
	(empty truck3)
	(at truck4 s3)
	(empty truck4)
	(at truck5 s5)
	(empty truck5)
	(at truck6 s0)
	(empty truck6)
	(at truck7 s2)
	(empty truck7)
	(at package1 s0)
	(at package2 s0)
	(at package3 s1)
	(at package4 s5)
	(at package5 s3)
	(at package6 s5)
	(at package7 s6)
	(at package8 s3)
	(at package9 s1)
	(at package10 s6)
	(at package11 s2)
	(at package12 s6)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 83)
	(= (time-to-walk p0-1 s0) 83)
	(= (time-to-walk s1 p0-1) 60)
	(= (time-to-walk p0-1 s1) 60)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 82)
	(= (time-to-walk p0-3 s0) 82)
	(= (time-to-walk s3 p0-3) 81)
	(= (time-to-walk p0-3 s3) 81)
	(path s0 p0-6)
	(path p0-6 s0)
	(path s6 p0-6)
	(path p0-6 s6)
	(= (time-to-walk s0 p0-6) 44)
	(= (time-to-walk p0-6 s0) 44)
	(= (time-to-walk s6 p0-6) 56)
	(= (time-to-walk p0-6 s6) 56)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 62)
	(= (time-to-walk p1-2 s1) 62)
	(= (time-to-walk s2 p1-2) 100)
	(= (time-to-walk p1-2 s2) 100)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(= (time-to-walk s1 p1-4) 61)
	(= (time-to-walk p1-4 s1) 61)
	(= (time-to-walk s4 p1-4) 82)
	(= (time-to-walk p1-4 s4) 82)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(= (time-to-walk s2 p2-4) 76)
	(= (time-to-walk p2-4 s2) 76)
	(= (time-to-walk s4 p2-4) 30)
	(= (time-to-walk p2-4 s4) 30)
	(path s2 p2-6)
	(path p2-6 s2)
	(path s6 p2-6)
	(path p2-6 s6)
	(= (time-to-walk s2 p2-6) 85)
	(= (time-to-walk p2-6 s2) 85)
	(= (time-to-walk s6 p2-6) 71)
	(= (time-to-walk p2-6 s6) 71)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(= (time-to-walk s3 p3-2) 45)
	(= (time-to-walk p3-2 s3) 45)
	(= (time-to-walk s2 p3-2) 80)
	(= (time-to-walk p3-2 s2) 80)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(= (time-to-walk s3 p3-4) 27)
	(= (time-to-walk p3-4 s3) 27)
	(= (time-to-walk s4 p3-4) 42)
	(= (time-to-walk p3-4 s4) 42)
	(path s3 p3-5)
	(path p3-5 s3)
	(path s5 p3-5)
	(path p3-5 s5)
	(= (time-to-walk s3 p3-5) 4)
	(= (time-to-walk p3-5 s3) 4)
	(= (time-to-walk s5 p3-5) 52)
	(= (time-to-walk p3-5 s5) 52)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(= (time-to-walk s4 p4-0) 40)
	(= (time-to-walk p4-0 s4) 40)
	(= (time-to-walk s0 p4-0) 20)
	(= (time-to-walk p4-0 s0) 20)
	(path s6 p6-1)
	(path p6-1 s6)
	(path s1 p6-1)
	(path p6-1 s1)
	(= (time-to-walk s6 p6-1) 48)
	(= (time-to-walk p6-1 s6) 48)
	(= (time-to-walk s1 p6-1) 72)
	(= (time-to-walk p6-1 s1) 72)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 88)
	(= (time-to-drive s2 s0) 88)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 81)
	(= (time-to-drive s4 s0) 81)
	(link s0 s6)
	(link s6 s0)
	(= (time-to-drive s0 s6) 10)
	(= (time-to-drive s6 s0) 10)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 55)
	(= (time-to-drive s0 s1) 55)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 80)
	(= (time-to-drive s3 s2) 80)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 53)
	(= (time-to-drive s4 s2) 53)
	(link s2 s5)
	(link s5 s2)
	(= (time-to-drive s2 s5) 72)
	(= (time-to-drive s5 s2) 72)
	(link s4 s6)
	(link s6 s4)
	(= (time-to-drive s4 s6) 63)
	(= (time-to-drive s6 s4) 63)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 13)
	(= (time-to-drive s1 s5) 13)
	(link s5 s3)
	(link s3 s5)
	(= (time-to-drive s5 s3) 53)
	(= (time-to-drive s3 s5) 53)
	(link s5 s4)
	(link s4 s5)
	(= (time-to-drive s5 s4) 43)
	(= (time-to-drive s4 s5) 43)
	(link s6 s3)
	(link s3 s6)
	(= (time-to-drive s6 s3) 57)
	(= (time-to-drive s3 s6) 57)
	(link s6 s5)
	(link s5 s6)
	(= (time-to-drive s6 s5) 9)
	(= (time-to-drive s5 s6) 9)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s4)
	(at driver5 s0)
	(at truck1 s5)
	(at truck4 s6)
	(at truck5 s1)
	(at truck6 s6)
	(at truck7 s3)
	(at package1 s6)
	(at package2 s3)
	(at package3 s4)
	(at package4 s5)
	(at package5 s0)
	(at package7 s1)
	(at package8 s6)
	(at package9 s6)
	(at package10 s2)
	(at package11 s2)
	(at package12 s3)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 3  (driven))) (* 3  (walked))))

)
