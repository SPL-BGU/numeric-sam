(define (problem DLOG-4-3-11)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
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
	s7 - location
	p0-3 - location
	p0-7 - location
	p1-4 - location
	p2-0 - location
	p3-1 - location
	p3-4 - location
	p4-5 - location
	p5-2 - location
	p5-3 - location
	p5-6 - location
	p6-0 - location
	p7-0 - location
	p7-3 - location
	p7-5 - location
	)
	(:init
	(at driver1 s6)
	(at driver2 s3)
	(at driver3 s5)
	(at driver4 s2)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s6)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s0)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s1)
	(at package2 s7)
	(at package3 s2)
	(at package4 s1)
	(at package5 s6)
	(at package6 s0)
	(at package7 s7)
	(at package8 s0)
	(at package9 s2)
	(at package10 s7)
	(at package11 s4)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s0 p0-7)
	(path p0-7 s0)
	(path s7 p0-7)
	(path p0-7 s7)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(path s4 p4-5)
	(path p4-5 s4)
	(path s5 p4-5)
	(path p4-5 s5)
	(path s5 p5-2)
	(path p5-2 s5)
	(path s2 p5-2)
	(path p5-2 s2)
	(path s5 p5-3)
	(path p5-3 s5)
	(path s3 p5-3)
	(path p5-3 s3)
	(path s5 p5-6)
	(path p5-6 s5)
	(path s6 p5-6)
	(path p5-6 s6)
	(path s6 p6-0)
	(path p6-0 s6)
	(path s0 p6-0)
	(path p6-0 s0)
	(path s7 p7-3)
	(path p7-3 s7)
	(path s3 p7-3)
	(path p7-3 s3)
	(path s7 p7-5)
	(path p7-5 s7)
	(path s5 p7-5)
	(path p7-5 s5)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 8)
	(= (time-to-drive s3 s0) 8)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 97)
	(= (time-to-drive s4 s0) 97)
	(link s1 s7)
	(link s7 s1)
	(= (time-to-drive s1 s7) 33)
	(= (time-to-drive s7 s1) 33)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 48)
	(= (time-to-drive s1 s2) 48)
	(link s2 s6)
	(link s6 s2)
	(= (time-to-drive s2 s6) 58)
	(= (time-to-drive s6 s2) 58)
	(link s2 s7)
	(link s7 s2)
	(= (time-to-drive s2 s7) 27)
	(= (time-to-drive s7 s2) 27)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 76)
	(= (time-to-drive s1 s3) 76)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 24)
	(= (time-to-drive s2 s3) 24)
	(link s3 s5)
	(link s5 s3)
	(= (time-to-drive s3 s5) 84)
	(= (time-to-drive s5 s3) 84)
	(link s3 s6)
	(link s6 s3)
	(= (time-to-drive s3 s6) 39)
	(= (time-to-drive s6 s3) 39)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 68)
	(= (time-to-drive s2 s4) 68)
	(link s4 s6)
	(link s6 s4)
	(= (time-to-drive s4 s6) 89)
	(= (time-to-drive s6 s4) 89)
	(link s5 s2)
	(link s2 s5)
	(= (time-to-drive s5 s2) 17)
	(= (time-to-drive s2 s5) 17)
	(link s5 s6)
	(link s6 s5)
	(= (time-to-drive s5 s6) 78)
	(= (time-to-drive s6 s5) 78)
	(link s6 s0)
	(link s0 s6)
	(= (time-to-drive s6 s0) 16)
	(= (time-to-drive s0 s6) 16)
	(link s7 s4)
	(link s4 s7)
	(= (time-to-drive s7 s4) 71)
	(= (time-to-drive s4 s7) 71)
	(link s7 s5)
	(link s5 s7)
	(= (time-to-drive s7 s5) 97)
	(= (time-to-drive s5 s7) 97)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s5)
	(at driver3 s6)
	(at truck2 s4)
	(at truck3 s3)
	(at package1 s3)
	(at package2 s0)
	(at package3 s6)
	(at package4 s5)
	(at package5 s0)
	(at package6 s6)
	(at package7 s1)
	(at package8 s3)
	(at package9 s2)
	(at package10 s2)
	(at package11 s3)
	))

(:metric minimize (+ (* 1 (total-time)) (* 2 (fuel-used))))

)
