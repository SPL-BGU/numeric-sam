(define (problem DLOG-3-6-7)
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
	truck6 - truck
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
	p0-2 - location
	p0-3 - location
	p1-2 - location
	p1-4 - location
	p3-0 - location
	p3-4 - location
	p4-0 - location
	)
	(:init
	(at driver1 s3)
	(at driver2 s1)
	(at driver3 s2)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s3)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s3)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s3)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s4)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at truck6 s3)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at package1 s2)
	(at package2 s0)
	(at package3 s1)
	(at package4 s3)
	(at package5 s4)
	(at package6 s4)
	(at package7 s4)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 91)
	(= (time-to-drive s1 s0) 91)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 30)
	(= (time-to-drive s2 s0) 30)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 46)
	(= (time-to-drive s4 s0) 46)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 6)
	(= (time-to-drive s3 s1) 6)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 47)
	(= (time-to-drive s0 s3) 47)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 26)
	(= (time-to-drive s2 s3) 26)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 80)
	(= (time-to-drive s1 s4) 80)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 40)
	(= (time-to-drive s2 s4) 40)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s3)
	(at truck1 s2)
	(at truck3 s2)
	(at truck4 s0)
	(at truck5 s4)
	(at package2 s3)
	(at package3 s0)
	(at package4 s3)
	(at package5 s4)
	(at package6 s2)
	(at package7 s1)
	))

(:metric minimize (+ (* 1 (total-time)) (* 3 (fuel-used))))

)
