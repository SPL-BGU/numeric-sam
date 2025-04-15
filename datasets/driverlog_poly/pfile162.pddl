(define (problem DLOG-3-6-13)
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
	s5 - location
	s6 - location
	s7 - location
	p0-2 - location
	p0-4 - location
	p1-0 - location
	p1-5 - location
	p2-1 - location
	p3-0 - location
	p4-2 - location
	p4-3 - location
	p4-5 - location
	p4-6 - location
	p6-0 - location
	p6-2 - location
	p6-5 - location
	p6-7 - location
	p7-6 - location
	)
	(:init
	(at driver1 s7)
	(at driver2 s4)
	(at driver3 s2)
	(at truck1 s4)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s1)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s3)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s0)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at truck6 s4)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at package1 s0)
	(at package2 s7)
	(at package3 s4)
	(at package4 s0)
	(at package5 s6)
	(at package6 s7)
	(at package7 s6)
	(at package8 s2)
	(at package9 s3)
	(at package10 s4)
	(at package11 s1)
	(at package12 s1)
	(at package13 s3)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(path s4 p4-5)
	(path p4-5 s4)
	(path s5 p4-5)
	(path p4-5 s5)
	(path s4 p4-6)
	(path p4-6 s4)
	(path s6 p4-6)
	(path p4-6 s6)
	(path s6 p6-0)
	(path p6-0 s6)
	(path s0 p6-0)
	(path p6-0 s0)
	(path s6 p6-2)
	(path p6-2 s6)
	(path s2 p6-2)
	(path p6-2 s2)
	(path s6 p6-5)
	(path p6-5 s6)
	(path s5 p6-5)
	(path p6-5 s5)
	(path s6 p6-7)
	(path p6-7 s6)
	(path s7 p6-7)
	(path p6-7 s7)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 23)
	(= (time-to-drive s3 s0) 23)
	(link s0 s7)
	(link s7 s0)
	(= (time-to-drive s0 s7) 74)
	(= (time-to-drive s7 s0) 74)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 97)
	(= (time-to-drive s4 s1) 97)
	(link s1 s5)
	(link s5 s1)
	(= (time-to-drive s1 s5) 68)
	(= (time-to-drive s5 s1) 68)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 37)
	(= (time-to-drive s0 s2) 37)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 63)
	(= (time-to-drive s3 s2) 63)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 67)
	(= (time-to-drive s1 s3) 67)
	(link s3 s6)
	(link s6 s3)
	(= (time-to-drive s3 s6) 81)
	(= (time-to-drive s6 s3) 81)
	(link s3 s7)
	(link s7 s3)
	(= (time-to-drive s3 s7) 92)
	(= (time-to-drive s7 s3) 92)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 27)
	(= (time-to-drive s2 s4) 27)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 21)
	(= (time-to-drive s3 s4) 21)
	(link s4 s7)
	(link s7 s4)
	(= (time-to-drive s4 s7) 6)
	(= (time-to-drive s7 s4) 6)
	(link s5 s2)
	(link s2 s5)
	(= (time-to-drive s5 s2) 85)
	(= (time-to-drive s2 s5) 85)
	(link s5 s6)
	(link s6 s5)
	(= (time-to-drive s5 s6) 44)
	(= (time-to-drive s6 s5) 44)
	(link s5 s7)
	(link s7 s5)
	(= (time-to-drive s5 s7) 20)
	(= (time-to-drive s7 s5) 20)
	(link s6 s0)
	(link s0 s6)
	(= (time-to-drive s6 s0) 54)
	(= (time-to-drive s0 s6) 54)
	(link s7 s1)
	(link s1 s7)
	(= (time-to-drive s7 s1) 93)
	(= (time-to-drive s1 s7) 93)
	(link s7 s2)
	(link s2 s7)
	(= (time-to-drive s7 s2) 80)
	(= (time-to-drive s2 s7) 80)
	(link s7 s6)
	(link s6 s7)
	(= (time-to-drive s7 s6) 61)
	(= (time-to-drive s6 s7) 61)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s5)
	(at driver3 s4)
	(at truck2 s2)
	(at truck3 s1)
	(at truck6 s2)
	(at package1 s1)
	(at package2 s1)
	(at package4 s0)
	(at package5 s4)
	(at package6 s6)
	(at package7 s7)
	(at package8 s3)
	(at package9 s3)
	(at package10 s7)
	(at package11 s0)
	(at package12 s0)
	(at package13 s4)
	))

(:metric minimize (+ (* 4 (total-time)) (* 4 (fuel-used))))

)
