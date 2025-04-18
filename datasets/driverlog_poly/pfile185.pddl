(define (problem DLOG-5-8-15)
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
	package10 - obj
	package11 - obj
	package12 - obj
	package13 - obj
	package14 - obj
	package15 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	p0-1 - location
	p0-6 - location
	p1-2 - location
	p1-3 - location
	p3-1 - location
	p3-2 - location
	p3-4 - location
	p4-0 - location
	p4-2 - location
	p4-3 - location
	p4-5 - location
	p5-0 - location
	p5-1 - location
	p5-4 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s2)
	(at driver4 s0)
	(at driver5 s3)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s5)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s3)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s1)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s5)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at truck6 s1)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at truck7 s5)
	(empty truck7)
	(= (load truck7) 0)
	(= (fuel-per-minute truck7) 10)
	(at truck8 s5)
	(empty truck8)
	(= (load truck8) 0)
	(= (fuel-per-minute truck8) 10)
	(at package1 s4)
	(at package2 s0)
	(at package3 s6)
	(at package4 s2)
	(at package5 s5)
	(at package6 s2)
	(at package7 s5)
	(at package8 s2)
	(at package9 s1)
	(at package10 s3)
	(at package11 s5)
	(at package12 s3)
	(at package13 s2)
	(at package14 s2)
	(at package15 s5)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-6)
	(path p0-6 s0)
	(path s6 p0-6)
	(path p0-6 s6)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(path s4 p4-5)
	(path p4-5 s4)
	(path s5 p4-5)
	(path p4-5 s5)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(path s5 p5-1)
	(path p5-1 s5)
	(path s1 p5-1)
	(path p5-1 s1)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 62)
	(= (time-to-drive s3 s0) 62)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 4)
	(= (time-to-drive s3 s1) 4)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 60)
	(= (time-to-drive s3 s2) 60)
	(link s2 s5)
	(link s5 s2)
	(= (time-to-drive s2 s5) 4)
	(= (time-to-drive s5 s2) 4)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 92)
	(= (time-to-drive s1 s4) 92)
	(link s4 s6)
	(link s6 s4)
	(= (time-to-drive s4 s6) 48)
	(= (time-to-drive s6 s4) 48)
	(link s5 s0)
	(link s0 s5)
	(= (time-to-drive s5 s0) 78)
	(= (time-to-drive s0 s5) 78)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 54)
	(= (time-to-drive s1 s5) 54)
	(link s5 s3)
	(link s3 s5)
	(= (time-to-drive s5 s3) 53)
	(= (time-to-drive s3 s5) 53)
	(link s5 s4)
	(link s4 s5)
	(= (time-to-drive s5 s4) 57)
	(= (time-to-drive s4 s5) 57)
	(link s5 s6)
	(link s6 s5)
	(= (time-to-drive s5 s6) 48)
	(= (time-to-drive s6 s5) 48)
	(link s6 s1)
	(link s1 s6)
	(= (time-to-drive s6 s1) 93)
	(= (time-to-drive s1 s6) 93)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver3 s1)
	(at driver4 s2)
	(at driver5 s0)
	(at truck1 s1)
	(at truck2 s1)
	(at truck3 s5)
	(at truck4 s3)
	(at truck5 s0)
	(at truck6 s1)
	(at truck8 s5)
	(at package1 s6)
	(at package2 s3)
	(at package3 s5)
	(at package4 s4)
	(at package5 s1)
	(at package6 s2)
	(at package7 s1)
	(at package8 s2)
	(at package9 s1)
	(at package11 s4)
	(at package12 s4)
	(at package13 s4)
	(at package14 s6)
	))

(:metric minimize (+ (* 4 (total-time)) (* 2 (fuel-used))))

)
