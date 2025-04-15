(define (problem DLOG-4-5-15)
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
	package11 - obj
	package12 - obj
	package13 - obj
	package14 - obj
	package15 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-2 - location
	p0-3 - location
	p0-4 - location
	p2-0 - location
	p3-0 - location
	p3-2 - location
	p4-1 - location
	p4-2 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s0)
	(at driver3 s2)
	(at driver4 s3)
	(at truck1 s3)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s4)
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
	(at package2 s0)
	(at package3 s3)
	(at package4 s2)
	(at package5 s4)
	(at package6 s4)
	(at package7 s3)
	(at package8 s1)
	(at package9 s4)
	(at package10 s4)
	(at package11 s0)
	(at package12 s3)
	(at package13 s4)
	(at package14 s2)
	(at package15 s0)
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
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 62)
	(= (time-to-drive s1 s0) 62)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 29)
	(= (time-to-drive s2 s0) 29)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 96)
	(= (time-to-drive s2 s1) 96)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 19)
	(= (time-to-drive s3 s2) 19)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 30)
	(= (time-to-drive s4 s2) 30)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 52)
	(= (time-to-drive s0 s3) 52)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 74)
	(= (time-to-drive s4 s3) 74)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 94)
	(= (time-to-drive s0 s4) 94)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s3)
	(at driver2 s1)
	(at driver3 s0)
	(at truck1 s1)
	(at truck2 s0)
	(at truck3 s0)
	(at package1 s4)
	(at package2 s4)
	(at package3 s4)
	(at package4 s1)
	(at package5 s0)
	(at package6 s4)
	(at package7 s3)
	(at package8 s2)
	(at package9 s1)
	(at package10 s3)
	(at package11 s2)
	(at package12 s3)
	(at package13 s1)
	(at package14 s4)
	(at package15 s3)
	))

(:metric minimize (+ (* 1 (total-time)) (* 1 (fuel-used))))

)
