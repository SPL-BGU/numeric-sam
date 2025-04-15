(define (problem DLOG-3-3-15)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
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
	s6 - location
	s7 - location
	p0-1 - location
	p1-2 - location
	p1-4 - location
	p2-0 - location
	p2-5 - location
	p3-1 - location
	p3-7 - location
	p4-3 - location
	p4-5 - location
	p4-7 - location
	p5-6 - location
	p7-1 - location
	p7-2 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s4)
	(at driver3 s1)
	(at truck1 s4)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s3)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s2)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s0)
	(at package2 s6)
	(at package3 s2)
	(at package4 s2)
	(at package5 s6)
	(at package6 s5)
	(at package7 s6)
	(at package8 s0)
	(at package9 s1)
	(at package10 s4)
	(at package11 s5)
	(at package12 s2)
	(at package13 s2)
	(at package14 s6)
	(at package15 s5)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s2 p2-5)
	(path p2-5 s2)
	(path s5 p2-5)
	(path p2-5 s5)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s3 p3-7)
	(path p3-7 s3)
	(path s7 p3-7)
	(path p3-7 s7)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(path s4 p4-5)
	(path p4-5 s4)
	(path s5 p4-5)
	(path p4-5 s5)
	(path s4 p4-7)
	(path p4-7 s4)
	(path s7 p4-7)
	(path p4-7 s7)
	(path s5 p5-6)
	(path p5-6 s5)
	(path s6 p5-6)
	(path p5-6 s6)
	(path s7 p7-1)
	(path p7-1 s7)
	(path s1 p7-1)
	(path p7-1 s1)
	(path s7 p7-2)
	(path p7-2 s7)
	(path s2 p7-2)
	(path p7-2 s2)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 90)
	(= (time-to-drive s2 s0) 90)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 80)
	(= (time-to-drive s2 s1) 80)
	(link s2 s5)
	(link s5 s2)
	(= (time-to-drive s2 s5) 77)
	(= (time-to-drive s5 s2) 77)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 65)
	(= (time-to-drive s0 s3) 65)
	(link s3 s5)
	(link s5 s3)
	(= (time-to-drive s3 s5) 47)
	(= (time-to-drive s5 s3) 47)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 6)
	(= (time-to-drive s0 s4) 6)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 3)
	(= (time-to-drive s1 s4) 3)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 3)
	(= (time-to-drive s2 s4) 3)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 46)
	(= (time-to-drive s3 s4) 46)
	(link s5 s0)
	(link s0 s5)
	(= (time-to-drive s5 s0) 16)
	(= (time-to-drive s0 s5) 16)
	(link s5 s6)
	(link s6 s5)
	(= (time-to-drive s5 s6) 66)
	(= (time-to-drive s6 s5) 66)
	(link s5 s7)
	(link s7 s5)
	(= (time-to-drive s5 s7) 93)
	(= (time-to-drive s7 s5) 93)
	(link s6 s0)
	(link s0 s6)
	(= (time-to-drive s6 s0) 40)
	(= (time-to-drive s0 s6) 40)
	(link s6 s1)
	(link s1 s6)
	(= (time-to-drive s6 s1) 89)
	(= (time-to-drive s1 s6) 89)
	(link s6 s2)
	(link s2 s6)
	(= (time-to-drive s6 s2) 97)
	(= (time-to-drive s2 s6) 97)
	(link s6 s4)
	(link s4 s6)
	(= (time-to-drive s6 s4) 80)
	(= (time-to-drive s4 s6) 80)
	(link s7 s2)
	(link s2 s7)
	(= (time-to-drive s7 s2) 19)
	(= (time-to-drive s2 s7) 19)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s6)
	(at driver3 s7)
	(at truck2 s6)
	(at package1 s4)
	(at package2 s0)
	(at package3 s3)
	(at package4 s5)
	(at package5 s2)
	(at package6 s7)
	(at package7 s0)
	(at package8 s4)
	(at package9 s0)
	(at package10 s3)
	(at package11 s3)
	(at package12 s2)
	(at package13 s4)
	(at package14 s6)
	(at package15 s5)
	))

(:metric minimize (+ (* 2 (total-time)) (* 4 (fuel-used))))

)
