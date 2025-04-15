(define (problem DLOG-3-3-13)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	p0-1 - location
	p0-3 - location
	p1-5 - location
	p1-6 - location
	p3-4 - location
	p4-1 - location
	p5-2 - location
	p6-0 - location
	p6-3 - location
	p6-4 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s4)
	(at driver3 s6)
	(at truck1 s3)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s3)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s1)
	(at package2 s0)
	(at package3 s0)
	(at package4 s4)
	(at package5 s5)
	(at package6 s6)
	(at package7 s1)
	(at package8 s5)
	(at package9 s6)
	(at package10 s3)
	(at package11 s2)
	(at package12 s3)
	(at package13 s6)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s1 p1-6)
	(path p1-6 s1)
	(path s6 p1-6)
	(path p1-6 s6)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s5 p5-2)
	(path p5-2 s5)
	(path s2 p5-2)
	(path p5-2 s2)
	(path s6 p6-0)
	(path p6-0 s6)
	(path s0 p6-0)
	(path p6-0 s0)
	(path s6 p6-3)
	(path p6-3 s6)
	(path s3 p6-3)
	(path p6-3 s3)
	(path s6 p6-4)
	(path p6-4 s6)
	(path s4 p6-4)
	(path p6-4 s4)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 38)
	(= (time-to-drive s4 s0) 38)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 70)
	(= (time-to-drive s2 s1) 70)
	(link s1 s6)
	(link s6 s1)
	(= (time-to-drive s1 s6) 28)
	(= (time-to-drive s6 s1) 28)
	(link s2 s6)
	(link s6 s2)
	(= (time-to-drive s2 s6) 27)
	(= (time-to-drive s6 s2) 27)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 69)
	(= (time-to-drive s1 s3) 69)
	(link s3 s5)
	(link s5 s3)
	(= (time-to-drive s3 s5) 85)
	(= (time-to-drive s5 s3) 85)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 29)
	(= (time-to-drive s1 s4) 29)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 85)
	(= (time-to-drive s2 s4) 85)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 73)
	(= (time-to-drive s3 s4) 73)
	(link s5 s6)
	(link s6 s5)
	(= (time-to-drive s5 s6) 35)
	(= (time-to-drive s6 s5) 35)
	(link s6 s0)
	(link s0 s6)
	(= (time-to-drive s6 s0) 55)
	(= (time-to-drive s0 s6) 55)
	(link s6 s4)
	(link s4 s6)
	(= (time-to-drive s6 s4) 93)
	(= (time-to-drive s4 s6) 93)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver3 s5)
	(at truck2 s4)
	(at truck3 s6)
	(at package1 s0)
	(at package2 s1)
	(at package3 s3)
	(at package4 s4)
	(at package5 s6)
	(at package6 s4)
	(at package7 s3)
	(at package8 s0)
	(at package9 s1)
	(at package10 s4)
	(at package11 s6)
	(at package12 s0)
	(at package13 s0)
	))

(:metric minimize (+ (* 1 (total-time)) (* 4 (fuel-used))))

)
