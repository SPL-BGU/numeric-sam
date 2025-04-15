(define (problem DLOG-3-3-6)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	p0-2 - location
	p0-3 - location
	p2-1 - location
	p2-4 - location
	p3-2 - location
	p3-5 - location
	p4-1 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s2)
	(at driver3 s4)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s4)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s4)
	(at package2 s3)
	(at package3 s2)
	(at package4 s1)
	(at package5 s4)
	(at package6 s2)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(path s3 p3-5)
	(path p3-5 s3)
	(path s5 p3-5)
	(path p3-5 s5)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 74)
	(= (time-to-drive s0 s1) 74)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 91)
	(= (time-to-drive s2 s1) 91)
	(link s2 s5)
	(link s5 s2)
	(= (time-to-drive s2 s5) 84)
	(= (time-to-drive s5 s2) 84)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 66)
	(= (time-to-drive s1 s3) 66)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 58)
	(= (time-to-drive s2 s3) 58)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 32)
	(= (time-to-drive s4 s3) 32)
	(link s3 s5)
	(link s5 s3)
	(= (time-to-drive s3 s5) 54)
	(= (time-to-drive s5 s3) 54)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 95)
	(= (time-to-drive s1 s4) 95)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 52)
	(= (time-to-drive s2 s4) 52)
	(link s5 s0)
	(link s0 s5)
	(= (time-to-drive s5 s0) 83)
	(= (time-to-drive s0 s5) 83)
	(link s5 s4)
	(link s4 s5)
	(= (time-to-drive s5 s4) 38)
	(= (time-to-drive s4 s5) 38)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s2)
	(at truck1 s0)
	(at truck2 s0)
	(at truck3 s3)
	(at package1 s4)
	(at package2 s5)
	(at package3 s5)
	(at package4 s1)
	(at package5 s0)
	(at package6 s3)
	))

(:metric minimize (+ (* 1 (total-time)) (* 4 (fuel-used))))

)
