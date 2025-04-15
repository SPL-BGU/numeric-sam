(define (problem DLOG-3-6-9)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	truck6 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	package8 - obj
	package9 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	p0-1 - location
	p0-4 - location
	p0-5 - location
	p1-2 - location
	p1-3 - location
	p1-5 - location
	p1-7 - location
	p3-6 - location
	p4-0 - location
	p4-5 - location
	p4-6 - location
	p6-2 - location
	p6-5 - location
	p7-2 - location
	p7-4 - location
	)
	(:init
	(at driver1 s3)
	(at driver2 s0)
	(at driver3 s7)
	(at truck1 s7)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s2)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s0)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s5)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at truck6 s4)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at package1 s1)
	(at package2 s7)
	(at package3 s4)
	(at package4 s6)
	(at package5 s7)
	(at package6 s1)
	(at package7 s2)
	(at package8 s0)
	(at package9 s6)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(path s0 p0-5)
	(path p0-5 s0)
	(path s5 p0-5)
	(path p0-5 s5)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s1 p1-7)
	(path p1-7 s1)
	(path s7 p1-7)
	(path p1-7 s7)
	(path s3 p3-6)
	(path p3-6 s3)
	(path s6 p3-6)
	(path p3-6 s6)
	(path s4 p4-5)
	(path p4-5 s4)
	(path s5 p4-5)
	(path p4-5 s5)
	(path s4 p4-6)
	(path p4-6 s4)
	(path s6 p4-6)
	(path p4-6 s6)
	(path s6 p6-2)
	(path p6-2 s6)
	(path s2 p6-2)
	(path p6-2 s2)
	(path s6 p6-5)
	(path p6-5 s6)
	(path s5 p6-5)
	(path p6-5 s5)
	(path s7 p7-2)
	(path p7-2 s7)
	(path s2 p7-2)
	(path p7-2 s2)
	(path s7 p7-4)
	(path p7-4 s7)
	(path s4 p7-4)
	(path p7-4 s4)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 32)
	(= (time-to-drive s1 s0) 32)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 39)
	(= (time-to-drive s2 s0) 39)
	(link s0 s5)
	(link s5 s0)
	(= (time-to-drive s0 s5) 79)
	(= (time-to-drive s5 s0) 79)
	(link s0 s7)
	(link s7 s0)
	(= (time-to-drive s0 s7) 67)
	(= (time-to-drive s7 s0) 67)
	(link s1 s6)
	(link s6 s1)
	(= (time-to-drive s1 s6) 4)
	(= (time-to-drive s6 s1) 4)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 15)
	(= (time-to-drive s1 s2) 15)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 53)
	(= (time-to-drive s3 s2) 53)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 83)
	(= (time-to-drive s4 s2) 83)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 18)
	(= (time-to-drive s0 s3) 18)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 49)
	(= (time-to-drive s1 s3) 49)
	(link s3 s7)
	(link s7 s3)
	(= (time-to-drive s3 s7) 51)
	(= (time-to-drive s7 s3) 51)
	(link s4 s5)
	(link s5 s4)
	(= (time-to-drive s4 s5) 28)
	(= (time-to-drive s5 s4) 28)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 6)
	(= (time-to-drive s1 s5) 6)
	(link s6 s0)
	(link s0 s6)
	(= (time-to-drive s6 s0) 73)
	(= (time-to-drive s0 s6) 73)
	(link s6 s5)
	(link s5 s6)
	(= (time-to-drive s6 s5) 54)
	(= (time-to-drive s5 s6) 54)
	(link s6 s7)
	(link s7 s6)
	(= (time-to-drive s6 s7) 49)
	(= (time-to-drive s7 s6) 49)
	(link s7 s1)
	(link s1 s7)
	(= (time-to-drive s7 s1) 78)
	(= (time-to-drive s1 s7) 78)
	(link s7 s5)
	(link s5 s7)
	(= (time-to-drive s7 s5) 90)
	(= (time-to-drive s5 s7) 90)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s4)
	(at truck3 s7)
	(at truck4 s3)
	(at truck5 s7)
	(at truck6 s3)
	(at package1 s5)
	(at package2 s0)
	(at package3 s1)
	(at package4 s0)
	(at package5 s0)
	(at package6 s0)
	(at package7 s3)
	(at package8 s3)
	(at package9 s0)
	))

(:metric minimize (+ (* 3 (total-time)) (* 4 (fuel-used))))

)
