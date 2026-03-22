(define (problem DLOG-3-5-4-290)
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
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p2-0 - location
	p2-1 - location
	p3-0 - location
	p4-3 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s2)
	(at driver3 s0)
	(at truck1 s0)
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
	(at truck4 s4)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s1)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s2)
	(at package2 s1)
	(at package3 s2)
	(at package4 s1)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(link s2 s3)
	(link s3 s2)
	(link s1 s0)
	(link s0 s1)
	(link s1 s2)
	(link s2 s1)
	(link s1 s4)
	(link s4 s1)
	(link s0 s2)
	(link s2 s0)
	(link s0 s3)
	(link s3 s0)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s3)
	(at driver3 s4)
	(at truck2 s3)
	(at truck3 s2)
	(at truck4 s2)
	(at package1 s2)
	(at package2 s1)
	(at package3 s4)
	(at package4 s2)
	))

(:metric minimize (+ (* 1 (total-time)) (* 4 (fuel-used))))

)
