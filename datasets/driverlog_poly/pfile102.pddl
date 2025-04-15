(define (problem DLOG-5-5-13)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-1 - location
	p0-2 - location
	p1-0 - location
	p2-0 - location
	p2-3 - location
	p2-4 - location
	p3-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s0)
	(at driver3 s2)
	(at driver4 s4)
	(at driver5 s4)
	(at truck1 s3)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s4)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s2)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s1)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s1)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s4)
	(at package2 s2)
	(at package3 s2)
	(at package4 s1)
	(at package5 s0)
	(at package6 s1)
	(at package7 s0)
	(at package8 s4)
	(at package9 s1)
	(at package10 s3)
	(at package11 s3)
	(at package12 s4)
	(at package13 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 2)
	(= (time-to-drive s2 s0) 2)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 9)
	(= (time-to-drive s0 s1) 9)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 90)
	(= (time-to-drive s3 s1) 90)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 100)
	(= (time-to-drive s1 s2) 100)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 100)
	(= (time-to-drive s0 s3) 100)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 27)
	(= (time-to-drive s2 s3) 27)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 20)
	(= (time-to-drive s4 s3) 20)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 15)
	(= (time-to-drive s0 s4) 15)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 31)
	(= (time-to-drive s1 s4) 31)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s3)
	(at driver4 s0)
	(at truck1 s2)
	(at truck2 s1)
	(at truck4 s3)
	(at truck5 s4)
	(at package1 s1)
	(at package2 s2)
	(at package3 s4)
	(at package4 s4)
	(at package5 s3)
	(at package6 s2)
	(at package7 s2)
	(at package8 s4)
	(at package10 s2)
	(at package11 s1)
	(at package12 s3)
	(at package13 s1)
	))

(:metric minimize (+ (* 4 (total-time)) (* 3 (fuel-used))))

)
