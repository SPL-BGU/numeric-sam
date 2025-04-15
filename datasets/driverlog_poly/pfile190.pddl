(define (problem DLOG-4-8-9)
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
	truck7 - truck
	truck8 - truck
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
	s5 - location
	p1-2 - location
	p1-5 - location
	p3-0 - location
	p3-1 - location
	p3-2 - location
	p3-4 - location
	p4-2 - location
	p5-3 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s5)
	(at driver3 s2)
	(at driver4 s3)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s5)
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
	(at truck5 s3)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at truck6 s1)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at truck7 s4)
	(empty truck7)
	(= (load truck7) 0)
	(= (fuel-per-minute truck7) 10)
	(at truck8 s0)
	(empty truck8)
	(= (load truck8) 0)
	(= (fuel-per-minute truck8) 10)
	(at package1 s5)
	(at package2 s4)
	(at package3 s2)
	(at package4 s3)
	(at package5 s2)
	(at package6 s4)
	(at package7 s4)
	(at package8 s4)
	(at package9 s3)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(path s5 p5-3)
	(path p5-3 s5)
	(path s3 p5-3)
	(path p5-3 s3)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 81)
	(= (time-to-drive s3 s0) 81)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 34)
	(= (time-to-drive s4 s0) 34)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 8)
	(= (time-to-drive s2 s1) 8)
	(link s1 s5)
	(link s5 s1)
	(= (time-to-drive s1 s5) 62)
	(= (time-to-drive s5 s1) 62)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 14)
	(= (time-to-drive s0 s2) 14)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 78)
	(= (time-to-drive s3 s2) 78)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 31)
	(= (time-to-drive s1 s3) 31)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 53)
	(= (time-to-drive s1 s4) 53)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 53)
	(= (time-to-drive s2 s4) 53)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 12)
	(= (time-to-drive s3 s4) 12)
	(link s4 s5)
	(link s5 s4)
	(= (time-to-drive s4 s5) 26)
	(= (time-to-drive s5 s4) 26)
	(link s5 s2)
	(link s2 s5)
	(= (time-to-drive s5 s2) 83)
	(= (time-to-drive s2 s5) 83)
	(link s5 s3)
	(link s3 s5)
	(= (time-to-drive s5 s3) 65)
	(= (time-to-drive s3 s5) 65)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s5)
	(at driver3 s5)
	(at driver4 s4)
	(at truck2 s0)
	(at truck3 s4)
	(at truck4 s1)
	(at truck6 s3)
	(at package1 s1)
	(at package2 s5)
	(at package3 s1)
	(at package4 s0)
	(at package5 s3)
	(at package6 s4)
	(at package7 s2)
	(at package8 s4)
	(at package9 s2)
	))

(:metric minimize (+ (* 3 (total-time)) (* 1 (fuel-used))))

)
