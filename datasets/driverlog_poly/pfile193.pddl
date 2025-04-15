(define (problem DLOG-4-4-14)
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
	package12 - obj
	package13 - obj
	package14 - obj
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
	p1-2 - location
	p2-0 - location
	p2-6 - location
	p2-7 - location
	p4-3 - location
	p4-7 - location
	p5-2 - location
	p5-4 - location
	p6-1 - location
	p6-4 - location
	p7-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s5)
	(at driver4 s7)
	(at truck1 s3)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s7)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s7)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s4)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s7)
	(at package2 s3)
	(at package3 s7)
	(at package4 s3)
	(at package5 s3)
	(at package6 s3)
	(at package7 s5)
	(at package8 s2)
	(at package9 s2)
	(at package10 s5)
	(at package11 s6)
	(at package12 s4)
	(at package13 s0)
	(at package14 s3)
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
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s2 p2-6)
	(path p2-6 s2)
	(path s6 p2-6)
	(path p2-6 s6)
	(path s2 p2-7)
	(path p2-7 s2)
	(path s7 p2-7)
	(path p2-7 s7)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(path s4 p4-7)
	(path p4-7 s4)
	(path s7 p4-7)
	(path p4-7 s7)
	(path s5 p5-2)
	(path p5-2 s5)
	(path s2 p5-2)
	(path p5-2 s2)
	(path s5 p5-4)
	(path p5-4 s5)
	(path s4 p5-4)
	(path p5-4 s4)
	(path s6 p6-1)
	(path p6-1 s6)
	(path s1 p6-1)
	(path p6-1 s1)
	(path s6 p6-4)
	(path p6-4 s6)
	(path s4 p6-4)
	(path p6-4 s4)
	(path s7 p7-1)
	(path p7-1 s7)
	(path s1 p7-1)
	(path p7-1 s1)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 96)
	(= (time-to-drive s2 s0) 96)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 62)
	(= (time-to-drive s3 s0) 62)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 82)
	(= (time-to-drive s0 s1) 82)
	(link s1 s5)
	(link s5 s1)
	(= (time-to-drive s1 s5) 98)
	(= (time-to-drive s5 s1) 98)
	(link s1 s6)
	(link s6 s1)
	(= (time-to-drive s1 s6) 87)
	(= (time-to-drive s6 s1) 87)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 78)
	(= (time-to-drive s3 s2) 78)
	(link s2 s6)
	(link s6 s2)
	(= (time-to-drive s2 s6) 45)
	(= (time-to-drive s6 s2) 45)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 71)
	(= (time-to-drive s1 s3) 71)
	(link s3 s5)
	(link s5 s3)
	(= (time-to-drive s3 s5) 77)
	(= (time-to-drive s5 s3) 77)
	(link s3 s6)
	(link s6 s3)
	(= (time-to-drive s3 s6) 40)
	(= (time-to-drive s6 s3) 40)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 8)
	(= (time-to-drive s0 s4) 8)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 92)
	(= (time-to-drive s3 s4) 92)
	(link s4 s7)
	(link s7 s4)
	(= (time-to-drive s4 s7) 7)
	(= (time-to-drive s7 s4) 7)
	(link s5 s2)
	(link s2 s5)
	(= (time-to-drive s5 s2) 37)
	(= (time-to-drive s2 s5) 37)
	(link s5 s4)
	(link s4 s5)
	(= (time-to-drive s5 s4) 7)
	(= (time-to-drive s4 s5) 7)
	(link s5 s7)
	(link s7 s5)
	(= (time-to-drive s5 s7) 99)
	(= (time-to-drive s7 s5) 99)
	(link s6 s0)
	(link s0 s6)
	(= (time-to-drive s6 s0) 54)
	(= (time-to-drive s0 s6) 54)
	(link s6 s5)
	(link s5 s6)
	(= (time-to-drive s6 s5) 96)
	(= (time-to-drive s5 s6) 96)
	(link s7 s1)
	(link s1 s7)
	(= (time-to-drive s7 s1) 24)
	(= (time-to-drive s1 s7) 24)
	(link s7 s2)
	(link s2 s7)
	(= (time-to-drive s7 s2) 50)
	(= (time-to-drive s2 s7) 50)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s7)
	(at truck1 s6)
	(at truck3 s3)
	(at package1 s4)
	(at package2 s2)
	(at package3 s4)
	(at package4 s6)
	(at package6 s4)
	(at package7 s7)
	(at package8 s7)
	(at package9 s6)
	(at package10 s2)
	(at package11 s2)
	(at package12 s5)
	(at package13 s4)
	(at package14 s0)
	))

(:metric minimize (+ (* 1 (total-time)) (* 1 (fuel-used))))

)
