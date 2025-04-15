(define (problem DLOG-4-5-10)
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
	truck5 - truck
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
	p0-2 - location
	p0-5 - location
	p1-0 - location
	p1-4 - location
	p1-5 - location
	p2-6 - location
	p4-5 - location
	p5-3 - location
	p6-0 - location
	p6-1 - location
	p6-2 - location
	p6-5 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s6)
	(at driver4 s4)
	(at truck1 s3)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s5)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s3)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s1)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s5)
	(at package2 s2)
	(at package3 s4)
	(at package4 s0)
	(at package5 s1)
	(at package6 s3)
	(at package7 s6)
	(at package8 s1)
	(at package9 s1)
	(at package10 s2)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-5)
	(path p0-5 s0)
	(path s5 p0-5)
	(path p0-5 s5)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s2 p2-6)
	(path p2-6 s2)
	(path s6 p2-6)
	(path p2-6 s6)
	(path s4 p4-5)
	(path p4-5 s4)
	(path s5 p4-5)
	(path p4-5 s5)
	(path s5 p5-3)
	(path p5-3 s5)
	(path s3 p5-3)
	(path p5-3 s3)
	(path s6 p6-0)
	(path p6-0 s6)
	(path s0 p6-0)
	(path p6-0 s0)
	(path s6 p6-1)
	(path p6-1 s6)
	(path s1 p6-1)
	(path p6-1 s1)
	(path s6 p6-5)
	(path p6-5 s6)
	(path s5 p6-5)
	(path p6-5 s5)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 57)
	(= (time-to-drive s1 s0) 57)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 76)
	(= (time-to-drive s4 s0) 76)
	(link s0 s6)
	(link s6 s0)
	(= (time-to-drive s0 s6) 1)
	(= (time-to-drive s6 s0) 1)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 76)
	(= (time-to-drive s3 s1) 76)
	(link s1 s5)
	(link s5 s1)
	(= (time-to-drive s1 s5) 19)
	(= (time-to-drive s5 s1) 19)
	(link s1 s6)
	(link s6 s1)
	(= (time-to-drive s1 s6) 96)
	(= (time-to-drive s6 s1) 96)
	(link s2 s6)
	(link s6 s2)
	(= (time-to-drive s2 s6) 12)
	(= (time-to-drive s6 s2) 12)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 89)
	(= (time-to-drive s2 s3) 89)
	(link s3 s5)
	(link s5 s3)
	(= (time-to-drive s3 s5) 24)
	(= (time-to-drive s5 s3) 24)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 10)
	(= (time-to-drive s2 s4) 10)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 37)
	(= (time-to-drive s3 s4) 37)
	(link s4 s5)
	(link s5 s4)
	(= (time-to-drive s4 s5) 45)
	(= (time-to-drive s5 s4) 45)
	(link s6 s3)
	(link s3 s6)
	(= (time-to-drive s6 s3) 88)
	(= (time-to-drive s3 s6) 88)
	(link s6 s5)
	(link s5 s6)
	(= (time-to-drive s6 s5) 26)
	(= (time-to-drive s5 s6) 26)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s0)
	(at truck1 s1)
	(at truck5 s2)
	(at package1 s6)
	(at package2 s0)
	(at package3 s0)
	(at package4 s6)
	(at package5 s3)
	(at package6 s0)
	(at package8 s6)
	(at package9 s2)
	(at package10 s4)
	))

(:metric minimize (+ (* 3 (total-time)) (* 3 (fuel-used))))

)
