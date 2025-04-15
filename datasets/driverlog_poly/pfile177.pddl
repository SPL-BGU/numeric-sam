(define (problem DLOG-4-4-11)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	p1-3 - location
	p1-5 - location
	p1-6 - location
	p2-0 - location
	p3-2 - location
	p3-4 - location
	p4-0 - location
	p4-6 - location
	p5-2 - location
	p5-4 - location
	p6-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s4)
	(at driver3 s6)
	(at driver4 s5)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s6)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s3)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s0)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s3)
	(at package2 s3)
	(at package3 s2)
	(at package4 s5)
	(at package5 s5)
	(at package6 s5)
	(at package7 s1)
	(at package8 s2)
	(at package9 s3)
	(at package10 s2)
	(at package11 s5)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s1 p1-6)
	(path p1-6 s1)
	(path s6 p1-6)
	(path p1-6 s6)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(path s4 p4-6)
	(path p4-6 s4)
	(path s6 p4-6)
	(path p4-6 s6)
	(path s5 p5-2)
	(path p5-2 s5)
	(path s2 p5-2)
	(path p5-2 s2)
	(path s5 p5-4)
	(path p5-4 s5)
	(path s4 p5-4)
	(path p5-4 s4)
	(path s6 p6-0)
	(path p6-0 s6)
	(path s0 p6-0)
	(path p6-0 s0)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 34)
	(= (time-to-drive s3 s0) 34)
	(link s0 s5)
	(link s5 s0)
	(= (time-to-drive s0 s5) 76)
	(= (time-to-drive s5 s0) 76)
	(link s0 s6)
	(link s6 s0)
	(= (time-to-drive s0 s6) 71)
	(= (time-to-drive s6 s0) 71)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 69)
	(= (time-to-drive s2 s1) 69)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 58)
	(= (time-to-drive s3 s2) 58)
	(link s2 s5)
	(link s5 s2)
	(= (time-to-drive s2 s5) 22)
	(= (time-to-drive s5 s2) 22)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 48)
	(= (time-to-drive s4 s3) 48)
	(link s3 s5)
	(link s5 s3)
	(= (time-to-drive s3 s5) 88)
	(= (time-to-drive s5 s3) 88)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 93)
	(= (time-to-drive s0 s4) 93)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 45)
	(= (time-to-drive s1 s4) 45)
	(link s4 s6)
	(link s6 s4)
	(= (time-to-drive s4 s6) 65)
	(= (time-to-drive s6 s4) 65)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 30)
	(= (time-to-drive s1 s5) 30)
	(link s6 s2)
	(link s2 s6)
	(= (time-to-drive s6 s2) 79)
	(= (time-to-drive s2 s6) 79)
	(link s6 s3)
	(link s3 s6)
	(= (time-to-drive s6 s3) 71)
	(= (time-to-drive s3 s6) 71)
	(link s6 s5)
	(link s5 s6)
	(= (time-to-drive s6 s5) 55)
	(= (time-to-drive s5 s6) 55)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s3)
	(at driver2 s2)
	(at driver4 s0)
	(at truck3 s2)
	(at truck4 s0)
	(at package1 s1)
	(at package2 s4)
	(at package3 s6)
	(at package4 s3)
	(at package5 s2)
	(at package6 s0)
	(at package7 s3)
	(at package8 s2)
	(at package9 s5)
	(at package10 s5)
	(at package11 s2)
	))

(:metric minimize (+ (* 4 (total-time)) (* 3 (fuel-used))))

)
