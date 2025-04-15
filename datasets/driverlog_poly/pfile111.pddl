(define (problem DLOG-4-7-7)
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
	s5 - location
	p0-1 - location
	p0-2 - location
	p1-0 - location
	p1-3 - location
	p2-3 - location
	p2-4 - location
	p2-5 - location
	p4-0 - location
	p4-1 - location
	p4-5 - location
	p5-3 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s5)
	(at driver3 s3)
	(at driver4 s2)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s5)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s0)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s2)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s2)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at truck6 s4)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at truck7 s3)
	(empty truck7)
	(= (load truck7) 0)
	(= (fuel-per-minute truck7) 10)
	(at package1 s3)
	(at package2 s3)
	(at package3 s3)
	(at package4 s2)
	(at package5 s5)
	(at package6 s5)
	(at package7 s3)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(path s2 p2-5)
	(path p2-5 s2)
	(path s5 p2-5)
	(path p2-5 s5)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s4 p4-5)
	(path p4-5 s4)
	(path s5 p4-5)
	(path p4-5 s5)
	(path s5 p5-3)
	(path p5-3 s5)
	(path s3 p5-3)
	(path p5-3 s3)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 68)
	(= (time-to-drive s1 s0) 68)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 62)
	(= (time-to-drive s2 s0) 62)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 71)
	(= (time-to-drive s4 s0) 71)
	(link s0 s5)
	(link s5 s0)
	(= (time-to-drive s0 s5) 5)
	(= (time-to-drive s5 s0) 5)
	(link s1 s5)
	(link s5 s1)
	(= (time-to-drive s1 s5) 28)
	(= (time-to-drive s5 s1) 28)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 68)
	(= (time-to-drive s1 s2) 68)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 48)
	(= (time-to-drive s3 s2) 48)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 90)
	(= (time-to-drive s1 s3) 90)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 27)
	(= (time-to-drive s1 s4) 27)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 26)
	(= (time-to-drive s2 s4) 26)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 59)
	(= (time-to-drive s3 s4) 59)
	(link s5 s2)
	(link s2 s5)
	(= (time-to-drive s5 s2) 53)
	(= (time-to-drive s2 s5) 53)
	(link s5 s4)
	(link s4 s5)
	(= (time-to-drive s5 s4) 53)
	(= (time-to-drive s4 s5) 53)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s3)
	(at driver3 s1)
	(at driver4 s5)
	(at truck1 s5)
	(at truck3 s5)
	(at truck4 s0)
	(at package1 s5)
	(at package4 s2)
	(at package5 s2)
	(at package6 s2)
	(at package7 s4)
	))

(:metric minimize (+ (* 2 (total-time)) (* 4 (fuel-used))))

)
