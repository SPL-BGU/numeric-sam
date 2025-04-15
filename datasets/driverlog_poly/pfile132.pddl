(define (problem DLOG-5-4-3)
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
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-1 - location
	p0-3 - location
	p0-4 - location
	p1-2 - location
	p1-4 - location
	p2-0 - location
	p2-4 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s1)
	(at driver3 s4)
	(at driver4 s2)
	(at driver5 s2)
	(at truck1 s3)
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
	(at truck4 s3)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s3)
	(at package2 s1)
	(at package3 s3)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 72)
	(= (time-to-drive s3 s0) 72)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 85)
	(= (time-to-drive s4 s0) 85)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 38)
	(= (time-to-drive s0 s1) 38)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 5)
	(= (time-to-drive s4 s1) 5)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 56)
	(= (time-to-drive s0 s2) 56)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 12)
	(= (time-to-drive s1 s2) 12)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 96)
	(= (time-to-drive s4 s2) 96)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 43)
	(= (time-to-drive s2 s3) 43)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 92)
	(= (time-to-drive s4 s3) 92)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s4)
	(at driver3 s1)
	(at driver4 s0)
	(at driver5 s3)
	(at truck1 s3)
	(at truck2 s1)
	(at truck3 s1)
	(at truck4 s4)
	(at package1 s1)
	(at package2 s1)
	(at package3 s3)
	))

(:metric minimize (+ (* 2 (total-time)) (* 2 (fuel-used))))

)
