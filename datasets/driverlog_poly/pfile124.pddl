(define (problem DLOG-3-3-8)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	p0-2 - location
	p0-3 - location
	p0-4 - location
	p2-3 - location
	p2-5 - location
	p3-0 - location
	p3-1 - location
	p4-1 - location
	p5-0 - location
	p5-1 - location
	p5-4 - location
	p5-6 - location
	p6-2 - location
	p6-4 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s5)
	(at driver3 s1)
	(at truck1 s3)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s4)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s1)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s5)
	(at package2 s5)
	(at package3 s0)
	(at package4 s3)
	(at package5 s6)
	(at package6 s3)
	(at package7 s2)
	(at package8 s2)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s2 p2-5)
	(path p2-5 s2)
	(path s5 p2-5)
	(path p2-5 s5)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(path s5 p5-1)
	(path p5-1 s5)
	(path s1 p5-1)
	(path p5-1 s1)
	(path s5 p5-4)
	(path p5-4 s5)
	(path s4 p5-4)
	(path p5-4 s4)
	(path s5 p5-6)
	(path p5-6 s5)
	(path s6 p5-6)
	(path p5-6 s6)
	(path s6 p6-2)
	(path p6-2 s6)
	(path s2 p6-2)
	(path p6-2 s2)
	(path s6 p6-4)
	(path p6-4 s6)
	(path s4 p6-4)
	(path p6-4 s4)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 6)
	(= (time-to-drive s1 s0) 6)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 73)
	(= (time-to-drive s2 s0) 73)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 73)
	(= (time-to-drive s3 s0) 73)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 84)
	(= (time-to-drive s1 s2) 84)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 50)
	(= (time-to-drive s4 s2) 50)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 19)
	(= (time-to-drive s1 s3) 19)
	(link s3 s5)
	(link s5 s3)
	(= (time-to-drive s3 s5) 27)
	(= (time-to-drive s5 s3) 27)
	(link s3 s6)
	(link s6 s3)
	(= (time-to-drive s3 s6) 53)
	(= (time-to-drive s6 s3) 53)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 76)
	(= (time-to-drive s1 s4) 76)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 92)
	(= (time-to-drive s1 s5) 92)
	(link s6 s0)
	(link s0 s6)
	(= (time-to-drive s6 s0) 69)
	(= (time-to-drive s0 s6) 69)
	(link s6 s1)
	(link s1 s6)
	(= (time-to-drive s6 s1) 68)
	(= (time-to-drive s1 s6) 68)
	(link s6 s2)
	(link s2 s6)
	(= (time-to-drive s6 s2) 33)
	(= (time-to-drive s2 s6) 33)
	(link s6 s5)
	(link s5 s6)
	(= (time-to-drive s6 s5) 80)
	(= (time-to-drive s5 s6) 80)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s1)
	(at truck3 s0)
	(at package1 s6)
	(at package2 s6)
	(at package3 s3)
	(at package4 s6)
	(at package5 s1)
	(at package6 s0)
	(at package7 s2)
	(at package8 s5)
	))

(:metric minimize (+ (* 1 (total-time)) (* 3 (fuel-used))))

)
