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
	s7 - location
	s8 - location
	p0-2 - location
	p0-4 - location
	p2-6 - location
	p3-4 - location
	p3-6 - location
	p4-7 - location
	p5-0 - location
	p5-1 - location
	p5-4 - location
	p5-6 - location
	p6-3 - location
	p6-7 - location
	p6-8 - location
	p7-5 - location
	p8-0 - location
	p8-1 - location
	)
	(:init
	(at driver1 s7)
	(at driver2 s8)
	(at driver3 s5)
	(at driver4 s2)
	(at driver5 s7)
	(at truck1 s4)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s5)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s4)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s0)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at truck6 s8)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at truck7 s7)
	(empty truck7)
	(= (load truck7) 0)
	(= (fuel-per-minute truck7) 10)
	(at truck8 s3)
	(empty truck8)
	(= (load truck8) 0)
	(= (fuel-per-minute truck8) 10)
	(at package1 s1)
	(at package2 s1)
	(at package3 s1)
	(at package4 s6)
	(at package5 s1)
	(at package6 s3)
	(at package7 s0)
	(at package8 s4)
	(at package9 s3)
	(at package10 s1)
	(at package11 s6)
	(at package12 s3)
	(at package13 s8)
	(at package14 s4)
	(at package15 s5)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(path s2 p2-6)
	(path p2-6 s2)
	(path s6 p2-6)
	(path p2-6 s6)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(path s3 p3-6)
	(path p3-6 s3)
	(path s6 p3-6)
	(path p3-6 s6)
	(path s4 p4-7)
	(path p4-7 s4)
	(path s7 p4-7)
	(path p4-7 s7)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(path s5 p5-1)
	(path p5-1 s5)
	(path s1 p5-1)
	(path p5-1 s1)
	(path s5 p5-4)
	(path p5-4 s5)
	(path s4 p5-4)
	(path p5-4 s4)
	(path s5 p5-6)
	(path p5-6 s5)
	(path s6 p5-6)
	(path p5-6 s6)
	(path s6 p6-7)
	(path p6-7 s6)
	(path s7 p6-7)
	(path p6-7 s7)
	(path s6 p6-8)
	(path p6-8 s6)
	(path s8 p6-8)
	(path p6-8 s8)
	(path s7 p7-5)
	(path p7-5 s7)
	(path s5 p7-5)
	(path p7-5 s5)
	(path s8 p8-0)
	(path p8-0 s8)
	(path s0 p8-0)
	(path p8-0 s0)
	(path s8 p8-1)
	(path p8-1 s8)
	(path s1 p8-1)
	(path p8-1 s1)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 44)
	(= (time-to-drive s4 s0) 44)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 1)
	(= (time-to-drive s2 s1) 1)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 57)
	(= (time-to-drive s4 s1) 57)
	(link s1 s7)
	(link s7 s1)
	(= (time-to-drive s1 s7) 19)
	(= (time-to-drive s7 s1) 19)
	(link s1 s8)
	(link s8 s1)
	(= (time-to-drive s1 s8) 73)
	(= (time-to-drive s8 s1) 73)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 7)
	(= (time-to-drive s3 s2) 7)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 39)
	(= (time-to-drive s4 s2) 39)
	(link s2 s7)
	(link s7 s2)
	(= (time-to-drive s2 s7) 90)
	(= (time-to-drive s7 s2) 90)
	(link s2 s8)
	(link s8 s2)
	(= (time-to-drive s2 s8) 4)
	(= (time-to-drive s8 s2) 4)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 2)
	(= (time-to-drive s0 s3) 2)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 62)
	(= (time-to-drive s4 s3) 62)
	(link s3 s5)
	(link s5 s3)
	(= (time-to-drive s3 s5) 34)
	(= (time-to-drive s5 s3) 34)
	(link s5 s0)
	(link s0 s5)
	(= (time-to-drive s5 s0) 89)
	(= (time-to-drive s0 s5) 89)
	(link s5 s2)
	(link s2 s5)
	(= (time-to-drive s5 s2) 93)
	(= (time-to-drive s2 s5) 93)
	(link s5 s8)
	(link s8 s5)
	(= (time-to-drive s5 s8) 76)
	(= (time-to-drive s8 s5) 76)
	(link s6 s4)
	(link s4 s6)
	(= (time-to-drive s6 s4) 42)
	(= (time-to-drive s4 s6) 42)
	(link s7 s0)
	(link s0 s7)
	(= (time-to-drive s7 s0) 45)
	(= (time-to-drive s0 s7) 45)
	(link s7 s4)
	(link s4 s7)
	(= (time-to-drive s7 s4) 88)
	(= (time-to-drive s4 s7) 88)
	(link s7 s8)
	(link s8 s7)
	(= (time-to-drive s7 s8) 75)
	(= (time-to-drive s8 s7) 75)
	(link s8 s0)
	(link s0 s8)
	(= (time-to-drive s8 s0) 7)
	(= (time-to-drive s0 s8) 7)
	(link s8 s4)
	(link s4 s8)
	(= (time-to-drive s8 s4) 37)
	(= (time-to-drive s4 s8) 37)
	(link s8 s6)
	(link s6 s8)
	(= (time-to-drive s8 s6) 99)
	(= (time-to-drive s6 s8) 99)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s4)
	(at driver2 s7)
	(at driver3 s7)
	(at driver4 s0)
	(at truck1 s8)
	(at truck2 s5)
	(at truck4 s2)
	(at truck5 s2)
	(at truck6 s0)
	(at truck7 s0)
	(at truck8 s5)
	(at package1 s7)
	(at package2 s6)
	(at package3 s2)
	(at package4 s3)
	(at package5 s8)
	(at package6 s3)
	(at package7 s3)
	(at package8 s3)
	(at package9 s2)
	(at package10 s6)
	(at package11 s7)
	(at package12 s8)
	(at package13 s0)
	(at package14 s7)
	(at package15 s0)
	))

(:metric minimize (+ (* 3 (total-time)) (* 4 (fuel-used))))

)
