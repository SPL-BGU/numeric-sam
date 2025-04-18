(define (problem DLOG-5-5-10)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	s8 - location
	s9 - location
	s10 - location
	p0-8 - location
	p1-2 - location
	p1-3 - location
	p2-0 - location
	p3-8 - location
	p3-10 - location
	p4-7 - location
	p4-9 - location
	p4-10 - location
	p5-10 - location
	p7-1 - location
	p7-3 - location
	p7-5 - location
	p7-6 - location
	p9-1 - location
	p9-4 - location
	p9-5 - location
	p10-1 - location
	p10-6 - location
	)
	(:init
	(at driver1 s5)
	(at driver2 s5)
	(at driver3 s7)
	(at driver4 s2)
	(at driver5 s3)
	(at truck1 s7)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s9)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s6)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s0)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s4)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s10)
	(at package2 s10)
	(at package3 s1)
	(at package4 s1)
	(at package5 s9)
	(at package6 s0)
	(at package7 s10)
	(at package8 s5)
	(at package9 s2)
	(at package10 s6)
	(path s0 p0-8)
	(path p0-8 s0)
	(path s8 p0-8)
	(path p0-8 s8)
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
	(path s3 p3-8)
	(path p3-8 s3)
	(path s8 p3-8)
	(path p3-8 s8)
	(path s3 p3-10)
	(path p3-10 s3)
	(path s10 p3-10)
	(path p3-10 s10)
	(path s4 p4-7)
	(path p4-7 s4)
	(path s7 p4-7)
	(path p4-7 s7)
	(path s4 p4-9)
	(path p4-9 s4)
	(path s9 p4-9)
	(path p4-9 s9)
	(path s4 p4-10)
	(path p4-10 s4)
	(path s10 p4-10)
	(path p4-10 s10)
	(path s5 p5-10)
	(path p5-10 s5)
	(path s10 p5-10)
	(path p5-10 s10)
	(path s7 p7-1)
	(path p7-1 s7)
	(path s1 p7-1)
	(path p7-1 s1)
	(path s7 p7-3)
	(path p7-3 s7)
	(path s3 p7-3)
	(path p7-3 s3)
	(path s7 p7-5)
	(path p7-5 s7)
	(path s5 p7-5)
	(path p7-5 s5)
	(path s7 p7-6)
	(path p7-6 s7)
	(path s6 p7-6)
	(path p7-6 s6)
	(path s9 p9-1)
	(path p9-1 s9)
	(path s1 p9-1)
	(path p9-1 s1)
	(path s9 p9-5)
	(path p9-5 s9)
	(path s5 p9-5)
	(path p9-5 s5)
	(path s10 p10-1)
	(path p10-1 s10)
	(path s1 p10-1)
	(path p10-1 s1)
	(path s10 p10-6)
	(path p10-6 s10)
	(path s6 p10-6)
	(path p10-6 s6)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 59)
	(= (time-to-drive s3 s0) 59)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 99)
	(= (time-to-drive s4 s0) 99)
	(link s0 s10)
	(link s10 s0)
	(= (time-to-drive s0 s10) 13)
	(= (time-to-drive s10 s0) 13)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 65)
	(= (time-to-drive s0 s2) 65)
	(link s2 s5)
	(link s5 s2)
	(= (time-to-drive s2 s5) 35)
	(= (time-to-drive s5 s2) 35)
	(link s2 s7)
	(link s7 s2)
	(= (time-to-drive s2 s7) 20)
	(= (time-to-drive s7 s2) 20)
	(link s2 s8)
	(link s8 s2)
	(= (time-to-drive s2 s8) 63)
	(= (time-to-drive s8 s2) 63)
	(link s2 s9)
	(link s9 s2)
	(= (time-to-drive s2 s9) 88)
	(= (time-to-drive s9 s2) 88)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 15)
	(= (time-to-drive s4 s3) 15)
	(link s3 s8)
	(link s8 s3)
	(= (time-to-drive s3 s8) 86)
	(= (time-to-drive s8 s3) 86)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 38)
	(= (time-to-drive s2 s4) 38)
	(link s4 s8)
	(link s8 s4)
	(= (time-to-drive s4 s8) 17)
	(= (time-to-drive s8 s4) 17)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 7)
	(= (time-to-drive s1 s5) 7)
	(link s5 s8)
	(link s8 s5)
	(= (time-to-drive s5 s8) 21)
	(= (time-to-drive s8 s5) 21)
	(link s6 s0)
	(link s0 s6)
	(= (time-to-drive s6 s0) 18)
	(= (time-to-drive s0 s6) 18)
	(link s6 s4)
	(link s4 s6)
	(= (time-to-drive s6 s4) 10)
	(= (time-to-drive s4 s6) 10)
	(link s6 s9)
	(link s9 s6)
	(= (time-to-drive s6 s9) 67)
	(= (time-to-drive s9 s6) 67)
	(link s6 s10)
	(link s10 s6)
	(= (time-to-drive s6 s10) 66)
	(= (time-to-drive s10 s6) 66)
	(link s7 s3)
	(link s3 s7)
	(= (time-to-drive s7 s3) 53)
	(= (time-to-drive s3 s7) 53)
	(link s7 s5)
	(link s5 s7)
	(= (time-to-drive s7 s5) 49)
	(= (time-to-drive s5 s7) 49)
	(link s7 s10)
	(link s10 s7)
	(= (time-to-drive s7 s10) 38)
	(= (time-to-drive s10 s7) 38)
	(link s8 s0)
	(link s0 s8)
	(= (time-to-drive s8 s0) 39)
	(= (time-to-drive s0 s8) 39)
	(link s8 s1)
	(link s1 s8)
	(= (time-to-drive s8 s1) 26)
	(= (time-to-drive s1 s8) 26)
	(link s8 s7)
	(link s7 s8)
	(= (time-to-drive s8 s7) 72)
	(= (time-to-drive s7 s8) 72)
	(link s9 s1)
	(link s1 s9)
	(= (time-to-drive s9 s1) 6)
	(= (time-to-drive s1 s9) 6)
	(link s10 s3)
	(link s3 s10)
	(= (time-to-drive s10 s3) 100)
	(= (time-to-drive s3 s10) 100)
	(link s10 s4)
	(link s4 s10)
	(= (time-to-drive s10 s4) 92)
	(= (time-to-drive s4 s10) 92)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver3 s10)
	(at driver4 s9)
	(at truck1 s4)
	(at truck2 s3)
	(at truck3 s7)
	(at truck4 s6)
	(at package1 s5)
	(at package2 s10)
	(at package3 s7)
	(at package4 s10)
	(at package5 s2)
	(at package6 s10)
	(at package7 s9)
	(at package8 s4)
	(at package9 s4)
	(at package10 s8)
	))

(:metric minimize (+ (* 3 (total-time)) (* 1 (fuel-used))))

)
