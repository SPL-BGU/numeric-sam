(define (problem DLOG-4-4-7)
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
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-1 - location
	p1-2 - location
	p2-3 - location
	p3-0 - location
	p3-1 - location
	p4-0 - location
	)
	(:init
	(at driver1 s3)
	(at driver2 s2)
	(at driver3 s4)
	(at driver4 s2)
	(at truck1 s2)
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
	(at truck4 s2)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s1)
	(at package2 s4)
	(at package3 s2)
	(at package4 s1)
	(at package5 s2)
	(at package6 s1)
	(at package7 s3)
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
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 54)
	(= (time-to-drive s1 s0) 54)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 13)
	(= (time-to-drive s2 s0) 13)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 71)
	(= (time-to-drive s3 s0) 71)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 50)
	(= (time-to-drive s4 s0) 50)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 59)
	(= (time-to-drive s2 s1) 59)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 50)
	(= (time-to-drive s1 s3) 50)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 81)
	(= (time-to-drive s2 s3) 81)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 80)
	(= (time-to-drive s4 s3) 80)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 71)
	(= (time-to-drive s1 s4) 71)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 70)
	(= (time-to-drive s2 s4) 70)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s2)
	(at driver3 s1)
	(at driver4 s3)
	(at truck1 s1)
	(at truck2 s4)
	(at truck3 s4)
	(at truck4 s3)
	(at package1 s4)
	(at package2 s0)
	(at package3 s3)
	(at package4 s1)
	(at package5 s0)
	(at package6 s2)
	(at package7 s0)
	))

(:metric minimize (+ (* 2 (total-time)) (* 3 (fuel-used))))

)
