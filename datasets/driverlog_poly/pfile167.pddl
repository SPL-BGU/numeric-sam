(define (problem DLOG-5-5-14)
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
	p0-1 - location
	p1-0 - location
	p1-2 - location
	p2-3 - location
	p2-4 - location
	p3-0 - location
	p3-1 - location
	p4-3 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s4)
	(at driver3 s2)
	(at driver4 s2)
	(at driver5 s1)
	(at truck1 s4)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s3)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s1)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s3)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s3)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s2)
	(at package2 s3)
	(at package3 s2)
	(at package4 s0)
	(at package5 s3)
	(at package6 s2)
	(at package7 s1)
	(at package8 s1)
	(at package9 s1)
	(at package10 s4)
	(at package11 s2)
	(at package12 s4)
	(at package13 s2)
	(at package14 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 48)
	(= (time-to-drive s2 s0) 48)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 32)
	(= (time-to-drive s3 s0) 32)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 39)
	(= (time-to-drive s4 s0) 39)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 36)
	(= (time-to-drive s0 s1) 36)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 59)
	(= (time-to-drive s2 s1) 59)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 92)
	(= (time-to-drive s3 s2) 92)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 76)
	(= (time-to-drive s4 s2) 76)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 92)
	(= (time-to-drive s1 s3) 92)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 76)
	(= (time-to-drive s1 s4) 76)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s2)
	(at driver3 s0)
	(at driver4 s1)
	(at driver5 s3)
	(at truck1 s1)
	(at truck2 s2)
	(at truck4 s3)
	(at truck5 s0)
	(at package1 s0)
	(at package2 s0)
	(at package3 s3)
	(at package4 s0)
	(at package5 s2)
	(at package6 s1)
	(at package7 s0)
	(at package8 s1)
	(at package9 s0)
	(at package10 s4)
	(at package11 s2)
	(at package12 s0)
	(at package13 s2)
	(at package14 s3)
	))

(:metric minimize (+ (* 4 (total-time)) (* 2 (fuel-used))))

)
