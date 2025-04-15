(define (problem DLOG-5-3-10)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-1 - location
	p0-2 - location
	p1-4 - location
	p3-2 - location
	p4-0 - location
	p4-3 - location
	)
	(:init
	(at driver1 s3)
	(at driver2 s1)
	(at driver3 s0)
	(at driver4 s4)
	(at driver5 s3)
	(at truck1 s2)
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
	(at package1 s2)
	(at package2 s0)
	(at package3 s3)
	(at package4 s2)
	(at package5 s0)
	(at package6 s0)
	(at package7 s2)
	(at package8 s4)
	(at package9 s2)
	(at package10 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 95)
	(= (time-to-drive s2 s0) 95)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 87)
	(= (time-to-drive s4 s0) 87)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 85)
	(= (time-to-drive s3 s1) 85)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 98)
	(= (time-to-drive s1 s2) 98)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 100)
	(= (time-to-drive s4 s2) 100)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 85)
	(= (time-to-drive s0 s3) 85)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 80)
	(= (time-to-drive s2 s3) 80)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 40)
	(= (time-to-drive s1 s4) 40)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s4)
	(at driver2 s1)
	(at driver5 s1)
	(at truck1 s1)
	(at truck2 s1)
	(at package1 s4)
	(at package2 s4)
	(at package3 s3)
	(at package4 s0)
	(at package6 s0)
	(at package8 s0)
	(at package9 s2)
	(at package10 s1)
	))

(:metric minimize (+ (* 2 (total-time)) (* 4 (fuel-used))))

)
