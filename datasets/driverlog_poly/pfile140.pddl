(define (problem DLOG-3-4-15)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
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
	p1-0 - location
	p1-5 - location
	p2-0 - location
	p2-3 - location
	p2-4 - location
	p2-5 - location
	p2-6 - location
	p3-1 - location
	p4-1 - location
	p4-2 - location
	p5-0 - location
	p5-3 - location
	p6-4 - location
	)
	(:init
	(at driver1 s3)
	(at driver2 s3)
	(at driver3 s1)
	(at truck1 s0)
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
	(at package1 s0)
	(at package2 s6)
	(at package3 s1)
	(at package4 s2)
	(at package5 s5)
	(at package6 s3)
	(at package7 s4)
	(at package8 s3)
	(at package9 s5)
	(at package10 s5)
	(at package11 s3)
	(at package12 s1)
	(at package13 s5)
	(at package14 s1)
	(at package15 s3)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
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
	(path s2 p2-6)
	(path p2-6 s2)
	(path s6 p2-6)
	(path p2-6 s6)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(path s5 p5-3)
	(path p5-3 s5)
	(path s3 p5-3)
	(path p5-3 s3)
	(path s6 p6-4)
	(path p6-4 s6)
	(path s4 p6-4)
	(path p6-4 s4)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 40)
	(= (time-to-drive s1 s0) 40)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 23)
	(= (time-to-drive s2 s0) 23)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 52)
	(= (time-to-drive s4 s0) 52)
	(link s0 s5)
	(link s5 s0)
	(= (time-to-drive s0 s5) 47)
	(= (time-to-drive s5 s0) 47)
	(link s0 s6)
	(link s6 s0)
	(= (time-to-drive s0 s6) 77)
	(= (time-to-drive s6 s0) 77)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 70)
	(= (time-to-drive s2 s1) 70)
	(link s1 s5)
	(link s5 s1)
	(= (time-to-drive s1 s5) 88)
	(= (time-to-drive s5 s1) 88)
	(link s4 s6)
	(link s6 s4)
	(= (time-to-drive s4 s6) 1)
	(= (time-to-drive s6 s4) 1)
	(link s5 s2)
	(link s2 s5)
	(= (time-to-drive s5 s2) 40)
	(= (time-to-drive s2 s5) 40)
	(link s5 s3)
	(link s3 s5)
	(= (time-to-drive s5 s3) 84)
	(= (time-to-drive s3 s5) 84)
	(link s6 s1)
	(link s1 s6)
	(= (time-to-drive s6 s1) 85)
	(= (time-to-drive s1 s6) 85)
	(link s6 s2)
	(link s2 s6)
	(= (time-to-drive s6 s2) 77)
	(= (time-to-drive s2 s6) 77)
	(link s6 s5)
	(link s5 s6)
	(= (time-to-drive s6 s5) 41)
	(= (time-to-drive s5 s6) 41)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s2)
	(at truck1 s3)
	(at truck2 s1)
	(at truck3 s2)
	(at truck4 s0)
	(at package1 s5)
	(at package2 s1)
	(at package3 s2)
	(at package4 s6)
	(at package5 s2)
	(at package6 s3)
	(at package7 s4)
	(at package8 s2)
	(at package9 s3)
	(at package10 s6)
	(at package11 s6)
	(at package12 s6)
	(at package13 s0)
	(at package14 s2)
	(at package15 s1)
	))

(:metric minimize (+ (* 4 (total-time)) (* 3 (fuel-used))))

)
