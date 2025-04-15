(define (problem DLOG-3-3-14)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	p0-5 - location
	p1-0 - location
	p2-3 - location
	p4-0 - location
	p4-2 - location
	p4-6 - location
	p5-4 - location
	p6-1 - location
	p6-2 - location
	p6-5 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s6)
	(at driver3 s0)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s5)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s2)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s2)
	(at package2 s2)
	(at package3 s3)
	(at package4 s6)
	(at package5 s2)
	(at package6 s2)
	(at package7 s1)
	(at package8 s4)
	(at package9 s2)
	(at package10 s2)
	(at package11 s0)
	(at package12 s1)
	(at package13 s1)
	(at package14 s0)
	(path s0 p0-5)
	(path p0-5 s0)
	(path s5 p0-5)
	(path p0-5 s5)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(path s4 p4-6)
	(path p4-6 s4)
	(path s6 p4-6)
	(path p4-6 s6)
	(path s5 p5-4)
	(path p5-4 s5)
	(path s4 p5-4)
	(path p5-4 s4)
	(path s6 p6-1)
	(path p6-1 s6)
	(path s1 p6-1)
	(path p6-1 s1)
	(path s6 p6-2)
	(path p6-2 s6)
	(path s2 p6-2)
	(path p6-2 s2)
	(path s6 p6-5)
	(path p6-5 s6)
	(path s5 p6-5)
	(path p6-5 s5)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 9)
	(= (time-to-drive s3 s0) 9)
	(link s0 s5)
	(link s5 s0)
	(= (time-to-drive s0 s5) 72)
	(= (time-to-drive s5 s0) 72)
	(link s0 s6)
	(link s6 s0)
	(= (time-to-drive s0 s6) 34)
	(= (time-to-drive s6 s0) 34)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 39)
	(= (time-to-drive s0 s1) 39)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 18)
	(= (time-to-drive s3 s1) 18)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 55)
	(= (time-to-drive s4 s1) 55)
	(link s1 s5)
	(link s5 s1)
	(= (time-to-drive s1 s5) 13)
	(= (time-to-drive s5 s1) 13)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 7)
	(= (time-to-drive s1 s2) 7)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 59)
	(= (time-to-drive s4 s2) 59)
	(link s2 s5)
	(link s5 s2)
	(= (time-to-drive s2 s5) 82)
	(= (time-to-drive s5 s2) 82)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 11)
	(= (time-to-drive s2 s3) 11)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 8)
	(= (time-to-drive s0 s4) 8)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 82)
	(= (time-to-drive s3 s4) 82)
	(link s4 s5)
	(link s5 s4)
	(= (time-to-drive s4 s5) 35)
	(= (time-to-drive s5 s4) 35)
	(link s5 s3)
	(link s3 s5)
	(= (time-to-drive s5 s3) 95)
	(= (time-to-drive s3 s5) 95)
	(link s6 s2)
	(link s2 s6)
	(= (time-to-drive s6 s2) 23)
	(= (time-to-drive s2 s6) 23)
	(link s6 s3)
	(link s3 s6)
	(= (time-to-drive s6 s3) 75)
	(= (time-to-drive s3 s6) 75)
	(link s6 s4)
	(link s4 s6)
	(= (time-to-drive s6 s4) 56)
	(= (time-to-drive s4 s6) 56)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s2)
	(at driver3 s2)
	(at truck1 s4)
	(at truck2 s6)
	(at truck3 s1)
	(at package1 s5)
	(at package2 s5)
	(at package3 s2)
	(at package4 s1)
	(at package5 s1)
	(at package6 s1)
	(at package8 s3)
	(at package9 s2)
	(at package10 s4)
	(at package11 s6)
	(at package12 s2)
	(at package13 s5)
	))

(:metric minimize (+ (* 4 (total-time)) (* 2 (fuel-used))))

)
