(define (problem DLOG-5-3-11)
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
	p0-4 - location
	p0-5 - location
	p0-6 - location
	p1-3 - location
	p2-0 - location
	p2-1 - location
	p4-2 - location
	p4-7 - location
	p5-0 - location
	p5-7 - location
	p6-1 - location
	p7-1 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s7)
	(at driver3 s3)
	(at driver4 s7)
	(at driver5 s5)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s7)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s5)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s6)
	(at package2 s7)
	(at package3 s0)
	(at package4 s1)
	(at package5 s2)
	(at package6 s3)
	(at package7 s0)
	(at package8 s4)
	(at package9 s0)
	(at package10 s7)
	(at package11 s3)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(path s0 p0-5)
	(path p0-5 s0)
	(path s5 p0-5)
	(path p0-5 s5)
	(path s0 p0-6)
	(path p0-6 s0)
	(path s6 p0-6)
	(path p0-6 s6)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(path s4 p4-7)
	(path p4-7 s4)
	(path s7 p4-7)
	(path p4-7 s7)
	(path s5 p5-7)
	(path p5-7 s5)
	(path s7 p5-7)
	(path p5-7 s7)
	(path s6 p6-1)
	(path p6-1 s6)
	(path s1 p6-1)
	(path p6-1 s1)
	(path s7 p7-1)
	(path p7-1 s7)
	(path s1 p7-1)
	(path p7-1 s1)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 32)
	(= (time-to-drive s3 s0) 32)
	(link s0 s7)
	(link s7 s0)
	(= (time-to-drive s0 s7) 52)
	(= (time-to-drive s7 s0) 52)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 13)
	(= (time-to-drive s0 s1) 13)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 30)
	(= (time-to-drive s2 s1) 30)
	(link s1 s5)
	(link s5 s1)
	(= (time-to-drive s1 s5) 47)
	(= (time-to-drive s5 s1) 47)
	(link s1 s6)
	(link s6 s1)
	(= (time-to-drive s1 s6) 39)
	(= (time-to-drive s6 s1) 39)
	(link s2 s5)
	(link s5 s2)
	(= (time-to-drive s2 s5) 73)
	(= (time-to-drive s5 s2) 73)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 18)
	(= (time-to-drive s1 s3) 18)
	(link s3 s7)
	(link s7 s3)
	(= (time-to-drive s3 s7) 9)
	(= (time-to-drive s7 s3) 9)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 41)
	(= (time-to-drive s0 s4) 41)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 87)
	(= (time-to-drive s1 s4) 87)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 25)
	(= (time-to-drive s2 s4) 25)
	(link s5 s7)
	(link s7 s5)
	(= (time-to-drive s5 s7) 62)
	(= (time-to-drive s7 s5) 62)
	(link s6 s7)
	(link s7 s6)
	(= (time-to-drive s6 s7) 65)
	(= (time-to-drive s7 s6) 65)
	(link s7 s2)
	(link s2 s7)
	(= (time-to-drive s7 s2) 42)
	(= (time-to-drive s2 s7) 42)
	(link s7 s4)
	(link s4 s7)
	(= (time-to-drive s7 s4) 28)
	(= (time-to-drive s4 s7) 28)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver4 s1)
	(at driver5 s7)
	(at truck1 s0)
	(at truck2 s5)
	(at truck3 s5)
	(at package1 s3)
	(at package2 s3)
	(at package3 s0)
	(at package4 s7)
	(at package5 s3)
	(at package6 s3)
	(at package7 s0)
	(at package8 s2)
	(at package9 s1)
	(at package10 s7)
	(at package11 s5)
	))

(:metric minimize (+ (* 3 (total-time)) (* 3 (fuel-used))))

)
