(define (problem DLOG-5-7-6)
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
	truck6 - truck
	truck7 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-1 - location
	p0-3 - location
	p0-4 - location
	p1-0 - location
	p1-2 - location
	p1-3 - location
	p2-0 - location
	p2-4 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s2)
	(at driver3 s2)
	(at driver4 s0)
	(at driver5 s3)
	(at truck1 s4)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s0)
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
	(at truck6 s3)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at truck7 s4)
	(empty truck7)
	(= (load truck7) 0)
	(= (fuel-per-minute truck7) 10)
	(at package1 s2)
	(at package2 s4)
	(at package3 s2)
	(at package4 s0)
	(at package5 s1)
	(at package6 s0)
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
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 93)
	(= (time-to-drive s1 s0) 93)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 70)
	(= (time-to-drive s2 s0) 70)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 20)
	(= (time-to-drive s3 s0) 20)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 26)
	(= (time-to-drive s1 s2) 26)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 9)
	(= (time-to-drive s1 s3) 9)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 67)
	(= (time-to-drive s2 s3) 67)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 32)
	(= (time-to-drive s4 s3) 32)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 59)
	(= (time-to-drive s1 s4) 59)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 78)
	(= (time-to-drive s2 s4) 78)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s0)
	(at driver3 s1)
	(at driver4 s4)
	(at driver5 s0)
	(at truck2 s2)
	(at truck3 s1)
	(at truck4 s4)
	(at package1 s1)
	(at package2 s1)
	(at package3 s0)
	(at package4 s4)
	(at package5 s0)
	(at package6 s1)
	))

(:metric minimize (+ (* 2 (total-time)) (* 1 (fuel-used))))

)
