(define (problem DLOG-5-5-9)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-1 - location
	p0-2 - location
	p0-3 - location
	p1-3 - location
	p2-4 - location
	p3-0 - location
	p4-0 - location
	p4-2 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s0)
	(at driver3 s1)
	(at driver4 s1)
	(at driver5 s1)
	(at truck1 s3)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s3)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s4)
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
	(at package1 s4)
	(at package2 s3)
	(at package3 s1)
	(at package4 s1)
	(at package5 s3)
	(at package6 s4)
	(at package7 s1)
	(at package8 s4)
	(at package9 s4)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 42)
	(= (time-to-drive s1 s0) 42)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 88)
	(= (time-to-drive s2 s0) 88)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 57)
	(= (time-to-drive s4 s0) 57)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 46)
	(= (time-to-drive s2 s1) 46)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 60)
	(= (time-to-drive s4 s1) 60)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 4)
	(= (time-to-drive s0 s3) 4)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 49)
	(= (time-to-drive s2 s3) 49)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 53)
	(= (time-to-drive s4 s3) 53)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s4)
	(at driver3 s0)
	(at driver4 s2)
	(at truck1 s0)
	(at truck2 s1)
	(at truck3 s2)
	(at truck4 s1)
	(at truck5 s3)
	(at package1 s3)
	(at package2 s3)
	(at package3 s4)
	(at package6 s0)
	(at package7 s4)
	(at package8 s3)
	(at package9 s2)
	))

(:metric minimize (+ (* 1 (total-time)) (* 3 (fuel-used))))

)
