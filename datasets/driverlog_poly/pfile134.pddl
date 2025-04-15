(define (problem DLOG-3-7-11)
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
	truck7 - truck
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	p1-2 - location
	p1-3 - location
	p2-0 - location
	p2-1 - location
	p2-6 - location
	p2-7 - location
	p3-4 - location
	p4-0 - location
	p4-2 - location
	p4-5 - location
	p5-3 - location
	p5-6 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s2)
	(at driver3 s2)
	(at truck1 s7)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s6)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s7)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s2)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s7)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at truck6 s1)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at truck7 s2)
	(empty truck7)
	(= (load truck7) 0)
	(= (fuel-per-minute truck7) 10)
	(at package1 s4)
	(at package2 s0)
	(at package3 s0)
	(at package4 s2)
	(at package5 s5)
	(at package6 s1)
	(at package7 s3)
	(at package8 s2)
	(at package9 s2)
	(at package10 s7)
	(at package11 s7)
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
	(path s2 p2-6)
	(path p2-6 s2)
	(path s6 p2-6)
	(path p2-6 s6)
	(path s2 p2-7)
	(path p2-7 s2)
	(path s7 p2-7)
	(path p2-7 s7)
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
	(path s5 p5-3)
	(path p5-3 s5)
	(path s3 p5-3)
	(path p5-3 s3)
	(path s5 p5-6)
	(path p5-6 s5)
	(path s6 p5-6)
	(path p5-6 s6)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 49)
	(= (time-to-drive s2 s0) 49)
	(link s0 s5)
	(link s5 s0)
	(= (time-to-drive s0 s5) 86)
	(= (time-to-drive s5 s0) 86)
	(link s0 s6)
	(link s6 s0)
	(= (time-to-drive s0 s6) 49)
	(= (time-to-drive s6 s0) 49)
	(link s0 s7)
	(link s7 s0)
	(= (time-to-drive s0 s7) 42)
	(= (time-to-drive s7 s0) 42)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 37)
	(= (time-to-drive s0 s1) 37)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 11)
	(= (time-to-drive s3 s1) 11)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 32)
	(= (time-to-drive s4 s1) 32)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 45)
	(= (time-to-drive s2 s3) 45)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 26)
	(= (time-to-drive s0 s4) 26)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 23)
	(= (time-to-drive s1 s5) 23)
	(link s5 s2)
	(link s2 s5)
	(= (time-to-drive s5 s2) 57)
	(= (time-to-drive s2 s5) 57)
	(link s5 s3)
	(link s3 s5)
	(= (time-to-drive s5 s3) 24)
	(= (time-to-drive s3 s5) 24)
	(link s5 s4)
	(link s4 s5)
	(= (time-to-drive s5 s4) 28)
	(= (time-to-drive s4 s5) 28)
	(link s6 s2)
	(link s2 s6)
	(= (time-to-drive s6 s2) 75)
	(= (time-to-drive s2 s6) 75)
	(link s6 s3)
	(link s3 s6)
	(= (time-to-drive s6 s3) 38)
	(= (time-to-drive s3 s6) 38)
	(link s7 s1)
	(link s1 s7)
	(= (time-to-drive s7 s1) 77)
	(= (time-to-drive s1 s7) 77)
	(link s7 s2)
	(link s2 s7)
	(= (time-to-drive s7 s2) 28)
	(= (time-to-drive s2 s7) 28)
	(link s7 s6)
	(link s6 s7)
	(= (time-to-drive s7 s6) 56)
	(= (time-to-drive s6 s7) 56)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at truck1 s3)
	(at truck2 s1)
	(at truck4 s4)
	(at truck5 s1)
	(at truck6 s3)
	(at truck7 s4)
	(at package2 s6)
	(at package3 s1)
	(at package4 s0)
	(at package5 s6)
	(at package6 s5)
	(at package7 s7)
	(at package8 s7)
	(at package9 s1)
	(at package10 s4)
	(at package11 s0)
	))

(:metric minimize (+ (* 1 (total-time)) (* 2 (fuel-used))))

)
