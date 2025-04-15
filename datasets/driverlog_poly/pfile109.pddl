(define (problem DLOG-4-3-4)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p1-2 - location
	p2-1 - location
	p2-4 - location
	p3-0 - location
	p3-1 - location
	p4-1 - location
	p4-3 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s0)
	(at driver4 s0)
	(at truck1 s3)
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
	(at package1 s4)
	(at package2 s2)
	(at package3 s0)
	(at package4 s0)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
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
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 98)
	(= (time-to-drive s1 s0) 98)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 18)
	(= (time-to-drive s2 s0) 18)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 82)
	(= (time-to-drive s3 s0) 82)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 50)
	(= (time-to-drive s4 s0) 50)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 49)
	(= (time-to-drive s3 s2) 49)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 33)
	(= (time-to-drive s4 s2) 33)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 72)
	(= (time-to-drive s4 s3) 72)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s3)
	(at driver2 s4)
	(at driver3 s3)
	(at driver4 s4)
	(at truck2 s3)
	(at package2 s4)
	(at package3 s4)
	(at package4 s0)
	))

(:metric minimize (+ (* 2 (total-time)) (* 4 (fuel-used))))

)
