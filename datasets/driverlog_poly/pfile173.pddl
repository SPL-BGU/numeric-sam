(define (problem DLOG-3-3-5)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p1-0 - location
	p1-2 - location
	p1-3 - location
	p1-4 - location
	p2-0 - location
	p3-0 - location
	p3-2 - location
	p4-3 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s3)
	(at driver3 s3)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s4)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s3)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s2)
	(at package2 s0)
	(at package3 s2)
	(at package4 s2)
	(at package5 s0)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 24)
	(= (time-to-drive s1 s0) 24)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 59)
	(= (time-to-drive s3 s0) 59)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 18)
	(= (time-to-drive s4 s3) 18)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 37)
	(= (time-to-drive s1 s4) 37)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 30)
	(= (time-to-drive s2 s4) 30)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s3)
	(at driver3 s2)
	(at truck1 s3)
	(at truck2 s3)
	(at truck3 s0)
	(at package1 s4)
	(at package2 s3)
	(at package3 s0)
	(at package4 s1)
	(at package5 s4)
	))

(:metric minimize (+ (* 2 (total-time)) (* 4 (fuel-used))))

)
