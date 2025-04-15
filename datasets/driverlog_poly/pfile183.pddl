(define (problem DLOG-4-6-9)
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
	truck6 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	package8 - obj
	package9 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-2 - location
	p0-3 - location
	p2-0 - location
	p2-3 - location
	p2-4 - location
	p3-1 - location
	p4-2 - location
	p4-3 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s3)
	(at driver3 s1)
	(at driver4 s1)
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
	(at truck4 s4)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s4)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at truck6 s2)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at package1 s4)
	(at package2 s1)
	(at package3 s4)
	(at package4 s0)
	(at package5 s1)
	(at package6 s2)
	(at package7 s0)
	(at package8 s1)
	(at package9 s0)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
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
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 40)
	(= (time-to-drive s1 s0) 40)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 12)
	(= (time-to-drive s2 s0) 12)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 35)
	(= (time-to-drive s3 s0) 35)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 97)
	(= (time-to-drive s4 s0) 97)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 44)
	(= (time-to-drive s4 s1) 44)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 73)
	(= (time-to-drive s1 s2) 73)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 49)
	(= (time-to-drive s3 s2) 49)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 87)
	(= (time-to-drive s1 s3) 87)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 48)
	(= (time-to-drive s4 s3) 48)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 37)
	(= (time-to-drive s2 s4) 37)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s2)
	(at truck2 s1)
	(at truck4 s3)
	(at truck5 s0)
	(at truck6 s4)
	(at package1 s1)
	(at package2 s0)
	(at package3 s1)
	(at package4 s3)
	(at package5 s1)
	(at package6 s3)
	(at package7 s3)
	(at package8 s3)
	))

(:metric minimize (+ (* 4 (total-time)) (* 1 (fuel-used))))

)
