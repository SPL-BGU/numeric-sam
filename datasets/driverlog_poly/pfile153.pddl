(define (problem DLOG-3-4-10)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	p0-1 - location
	p0-6 - location
	p1-0 - location
	p1-2 - location
	p1-3 - location
	p1-6 - location
	p1-7 - location
	p2-1 - location
	p2-4 - location
	p2-5 - location
	p3-0 - location
	p4-1 - location
	p5-7 - location
	p6-3 - location
	p7-3 - location
	p7-4 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s4)
	(at driver3 s1)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s5)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s3)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s3)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s2)
	(at package2 s2)
	(at package3 s7)
	(at package4 s6)
	(at package5 s7)
	(at package6 s3)
	(at package7 s1)
	(at package8 s1)
	(at package9 s2)
	(at package10 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-6)
	(path p0-6 s0)
	(path s6 p0-6)
	(path p0-6 s6)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s1 p1-6)
	(path p1-6 s1)
	(path s6 p1-6)
	(path p1-6 s6)
	(path s1 p1-7)
	(path p1-7 s1)
	(path s7 p1-7)
	(path p1-7 s7)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(path s2 p2-5)
	(path p2-5 s2)
	(path s5 p2-5)
	(path p2-5 s5)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s5 p5-7)
	(path p5-7 s5)
	(path s7 p5-7)
	(path p5-7 s7)
	(path s6 p6-3)
	(path p6-3 s6)
	(path s3 p6-3)
	(path p6-3 s3)
	(path s7 p7-3)
	(path p7-3 s7)
	(path s3 p7-3)
	(path p7-3 s3)
	(path s7 p7-4)
	(path p7-4 s7)
	(path s4 p7-4)
	(path p7-4 s4)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 77)
	(= (time-to-drive s3 s0) 77)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 69)
	(= (time-to-drive s0 s1) 69)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 54)
	(= (time-to-drive s2 s1) 54)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 66)
	(= (time-to-drive s4 s1) 66)
	(link s1 s6)
	(link s6 s1)
	(= (time-to-drive s1 s6) 10)
	(= (time-to-drive s6 s1) 10)
	(link s1 s7)
	(link s7 s1)
	(= (time-to-drive s1 s7) 67)
	(= (time-to-drive s7 s1) 67)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 19)
	(= (time-to-drive s3 s2) 19)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 80)
	(= (time-to-drive s1 s3) 80)
	(link s3 s7)
	(link s7 s3)
	(= (time-to-drive s3 s7) 75)
	(= (time-to-drive s7 s3) 75)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 30)
	(= (time-to-drive s0 s4) 30)
	(link s4 s5)
	(link s5 s4)
	(= (time-to-drive s4 s5) 42)
	(= (time-to-drive s5 s4) 42)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 99)
	(= (time-to-drive s1 s5) 99)
	(link s6 s2)
	(link s2 s6)
	(= (time-to-drive s6 s2) 49)
	(= (time-to-drive s2 s6) 49)
	(link s6 s4)
	(link s4 s6)
	(= (time-to-drive s6 s4) 79)
	(= (time-to-drive s4 s6) 79)
	(link s6 s7)
	(link s7 s6)
	(= (time-to-drive s6 s7) 74)
	(= (time-to-drive s7 s6) 74)
	(link s7 s0)
	(link s0 s7)
	(= (time-to-drive s7 s0) 67)
	(= (time-to-drive s0 s7) 67)
	(link s7 s5)
	(link s5 s7)
	(= (time-to-drive s7 s5) 11)
	(= (time-to-drive s5 s7) 11)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s1)
	(at driver3 s3)
	(at truck3 s7)
	(at truck4 s3)
	(at package1 s5)
	(at package2 s7)
	(at package3 s1)
	(at package4 s4)
	(at package5 s0)
	(at package6 s1)
	(at package7 s4)
	(at package10 s1)
	))

(:metric minimize (+ (* 3 (total-time)) (* 1 (fuel-used))))

)
