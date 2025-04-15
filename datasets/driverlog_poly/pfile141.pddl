(define (problem DLOG-4-8-14)
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
	package10 - obj
	package11 - obj
	package12 - obj
	package13 - obj
	package14 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	p0-3 - location
	p0-4 - location
	p0-5 - location
	p0-7 - location
	p4-1 - location
	p4-6 - location
	p5-1 - location
	p5-3 - location
	p6-0 - location
	p6-1 - location
	p6-2 - location
	p6-4 - location
	p7-0 - location
	p7-2 - location
	p7-5 - location
	)
	(:init
	(at driver1 s3)
	(at driver2 s6)
	(at driver3 s7)
	(at driver4 s4)
	(at truck1 s2)
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
	(at truck4 s0)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s5)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at truck6 s7)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at truck7 s4)
	(empty truck7)
	(= (load truck7) 0)
	(= (fuel-per-minute truck7) 10)
	(at truck8 s1)
	(empty truck8)
	(= (load truck8) 0)
	(= (fuel-per-minute truck8) 10)
	(at package1 s4)
	(at package2 s1)
	(at package3 s7)
	(at package4 s7)
	(at package5 s4)
	(at package6 s1)
	(at package7 s5)
	(at package8 s1)
	(at package9 s4)
	(at package10 s1)
	(at package11 s0)
	(at package12 s5)
	(at package13 s1)
	(at package14 s1)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(path s0 p0-5)
	(path p0-5 s0)
	(path s5 p0-5)
	(path p0-5 s5)
	(path s0 p0-7)
	(path p0-7 s0)
	(path s7 p0-7)
	(path p0-7 s7)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s4 p4-6)
	(path p4-6 s4)
	(path s6 p4-6)
	(path p4-6 s6)
	(path s5 p5-1)
	(path p5-1 s5)
	(path s1 p5-1)
	(path p5-1 s1)
	(path s5 p5-3)
	(path p5-3 s5)
	(path s3 p5-3)
	(path p5-3 s3)
	(path s6 p6-0)
	(path p6-0 s6)
	(path s0 p6-0)
	(path p6-0 s0)
	(path s6 p6-1)
	(path p6-1 s6)
	(path s1 p6-1)
	(path p6-1 s1)
	(path s6 p6-2)
	(path p6-2 s6)
	(path s2 p6-2)
	(path p6-2 s2)
	(path s7 p7-2)
	(path p7-2 s7)
	(path s2 p7-2)
	(path p7-2 s2)
	(path s7 p7-5)
	(path p7-5 s7)
	(path s5 p7-5)
	(path p7-5 s5)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 50)
	(= (time-to-drive s4 s0) 50)
	(link s0 s5)
	(link s5 s0)
	(= (time-to-drive s0 s5) 4)
	(= (time-to-drive s5 s0) 4)
	(link s0 s7)
	(link s7 s0)
	(= (time-to-drive s0 s7) 60)
	(= (time-to-drive s7 s0) 60)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 58)
	(= (time-to-drive s4 s1) 58)
	(link s1 s6)
	(link s6 s1)
	(= (time-to-drive s1 s6) 52)
	(= (time-to-drive s6 s1) 52)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 9)
	(= (time-to-drive s3 s2) 9)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 27)
	(= (time-to-drive s4 s2) 27)
	(link s2 s5)
	(link s5 s2)
	(= (time-to-drive s2 s5) 28)
	(= (time-to-drive s5 s2) 28)
	(link s2 s6)
	(link s6 s2)
	(= (time-to-drive s2 s6) 54)
	(= (time-to-drive s6 s2) 54)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 15)
	(= (time-to-drive s0 s3) 15)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 34)
	(= (time-to-drive s4 s3) 34)
	(link s3 s5)
	(link s5 s3)
	(= (time-to-drive s3 s5) 51)
	(= (time-to-drive s5 s3) 51)
	(link s4 s6)
	(link s6 s4)
	(= (time-to-drive s4 s6) 77)
	(= (time-to-drive s6 s4) 77)
	(link s4 s7)
	(link s7 s4)
	(= (time-to-drive s4 s7) 33)
	(= (time-to-drive s7 s4) 33)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 62)
	(= (time-to-drive s1 s5) 62)
	(link s5 s4)
	(link s4 s5)
	(= (time-to-drive s5 s4) 55)
	(= (time-to-drive s4 s5) 55)
	(link s5 s6)
	(link s6 s5)
	(= (time-to-drive s5 s6) 22)
	(= (time-to-drive s6 s5) 22)
	(link s6 s0)
	(link s0 s6)
	(= (time-to-drive s6 s0) 20)
	(= (time-to-drive s0 s6) 20)
	(link s7 s1)
	(link s1 s7)
	(= (time-to-drive s7 s1) 85)
	(= (time-to-drive s1 s7) 85)
	(link s7 s5)
	(link s5 s7)
	(= (time-to-drive s7 s5) 52)
	(= (time-to-drive s5 s7) 52)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s0)
	(at driver3 s7)
	(at driver4 s6)
	(at truck1 s4)
	(at truck2 s2)
	(at truck3 s5)
	(at truck4 s4)
	(at truck5 s4)
	(at truck6 s2)
	(at truck7 s6)
	(at truck8 s5)
	(at package1 s4)
	(at package2 s1)
	(at package4 s2)
	(at package5 s2)
	(at package6 s2)
	(at package7 s7)
	(at package8 s7)
	(at package9 s3)
	(at package10 s4)
	(at package11 s0)
	(at package12 s2)
	(at package13 s1)
	(at package14 s0)
	))

(:metric minimize (+ (* 1 (total-time)) (* 2 (fuel-used))))

)
