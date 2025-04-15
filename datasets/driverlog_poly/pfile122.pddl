(define (problem DLOG-5-3-12)
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
	p0-5 - location
	p0-6 - location
	p1-2 - location
	p2-4 - location
	p3-1 - location
	p4-0 - location
	p4-5 - location
	p4-6 - location
	p6-5 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s4)
	(at driver3 s5)
	(at driver4 s2)
	(at driver5 s0)
	(at truck1 s2)
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
	(at package1 s6)
	(at package2 s0)
	(at package3 s5)
	(at package4 s5)
	(at package5 s2)
	(at package6 s3)
	(at package7 s3)
	(at package8 s5)
	(at package9 s1)
	(at package10 s2)
	(at package11 s5)
	(at package12 s5)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s0 p0-5)
	(path p0-5 s0)
	(path s5 p0-5)
	(path p0-5 s5)
	(path s0 p0-6)
	(path p0-6 s0)
	(path s6 p0-6)
	(path p0-6 s6)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(path s4 p4-5)
	(path p4-5 s4)
	(path s5 p4-5)
	(path p4-5 s5)
	(path s4 p4-6)
	(path p4-6 s4)
	(path s6 p4-6)
	(path p4-6 s6)
	(path s6 p6-5)
	(path p6-5 s6)
	(path s5 p6-5)
	(path p6-5 s5)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 38)
	(= (time-to-drive s2 s0) 38)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 23)
	(= (time-to-drive s4 s0) 23)
	(link s2 s6)
	(link s6 s2)
	(= (time-to-drive s2 s6) 86)
	(= (time-to-drive s6 s2) 86)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 18)
	(= (time-to-drive s0 s3) 18)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 48)
	(= (time-to-drive s1 s4) 48)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 81)
	(= (time-to-drive s2 s4) 81)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 1)
	(= (time-to-drive s3 s4) 1)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 74)
	(= (time-to-drive s1 s5) 74)
	(link s5 s3)
	(link s3 s5)
	(= (time-to-drive s5 s3) 23)
	(= (time-to-drive s3 s5) 23)
	(link s6 s0)
	(link s0 s6)
	(= (time-to-drive s6 s0) 56)
	(= (time-to-drive s0 s6) 56)
	(link s6 s1)
	(link s1 s6)
	(= (time-to-drive s6 s1) 71)
	(= (time-to-drive s1 s6) 71)
	(link s6 s5)
	(link s5 s6)
	(= (time-to-drive s6 s5) 84)
	(= (time-to-drive s5 s6) 84)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s3)
	(at truck1 s3)
	(at truck3 s5)
	(at package2 s3)
	(at package3 s1)
	(at package4 s5)
	(at package5 s3)
	(at package6 s5)
	(at package7 s6)
	(at package8 s2)
	(at package9 s6)
	(at package10 s1)
	(at package11 s1)
	(at package12 s1)
	))

(:metric minimize (+ (* 3 (total-time)) (* 2 (fuel-used))))

)
