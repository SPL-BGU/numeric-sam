(define (problem DLOG-4-3-5)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	p0-1 - location
	p0-2 - location
	p0-6 - location
	p1-0 - location
	p2-0 - location
	p2-4 - location
	p3-0 - location
	p4-0 - location
	p4-5 - location
	p4-6 - location
	p5-4 - location
	p6-1 - location
	p6-3 - location
	)
	(:init
	(at driver1 s5)
	(at driver2 s5)
	(at driver3 s2)
	(at driver4 s1)
	(at truck1 s4)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s6)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s1)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s6)
	(at package2 s1)
	(at package3 s4)
	(at package4 s1)
	(at package5 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-6)
	(path p0-6 s0)
	(path s6 p0-6)
	(path p0-6 s6)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
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
	(path s6 p6-1)
	(path p6-1 s6)
	(path s1 p6-1)
	(path p6-1 s1)
	(path s6 p6-3)
	(path p6-3 s6)
	(path s3 p6-3)
	(path p6-3 s3)
	(link s0 s6)
	(link s6 s0)
	(= (time-to-drive s0 s6) 66)
	(= (time-to-drive s6 s0) 66)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 57)
	(= (time-to-drive s3 s1) 57)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 56)
	(= (time-to-drive s4 s1) 56)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 40)
	(= (time-to-drive s0 s2) 40)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 1)
	(= (time-to-drive s1 s2) 1)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 76)
	(= (time-to-drive s3 s2) 76)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 93)
	(= (time-to-drive s0 s3) 93)
	(link s3 s6)
	(link s6 s3)
	(= (time-to-drive s3 s6) 37)
	(= (time-to-drive s6 s3) 37)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 1)
	(= (time-to-drive s2 s4) 1)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 23)
	(= (time-to-drive s3 s4) 23)
	(link s4 s5)
	(link s5 s4)
	(= (time-to-drive s4 s5) 93)
	(= (time-to-drive s5 s4) 93)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 14)
	(= (time-to-drive s1 s5) 14)
	(link s6 s2)
	(link s2 s6)
	(= (time-to-drive s6 s2) 86)
	(= (time-to-drive s2 s6) 86)
	(link s6 s5)
	(link s5 s6)
	(= (time-to-drive s6 s5) 31)
	(= (time-to-drive s5 s6) 31)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s1)
	(at driver3 s5)
	(at driver4 s4)
	(at truck2 s3)
	(at package1 s1)
	(at package2 s6)
	(at package3 s5)
	(at package4 s3)
	(at package5 s2)
	))

(:metric minimize (+ (* 4 (total-time)) (* 3 (fuel-used))))

)
