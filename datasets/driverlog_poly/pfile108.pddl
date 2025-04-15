(define (problem DLOG-3-8-8)
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
	truck8 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	package8 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	p0-1 - location
	p0-4 - location
	p1-2 - location
	p1-4 - location
	p2-3 - location
	p3-0 - location
	p3-1 - location
	p3-5 - location
	p5-0 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s0)
	(at driver3 s4)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s4)
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
	(at truck6 s1)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at truck7 s3)
	(empty truck7)
	(= (load truck7) 0)
	(= (fuel-per-minute truck7) 10)
	(at truck8 s2)
	(empty truck8)
	(= (load truck8) 0)
	(= (fuel-per-minute truck8) 10)
	(at package1 s4)
	(at package2 s1)
	(at package3 s0)
	(at package4 s1)
	(at package5 s3)
	(at package6 s2)
	(at package7 s3)
	(at package8 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s3 p3-5)
	(path p3-5 s3)
	(path s5 p3-5)
	(path p3-5 s5)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 97)
	(= (time-to-drive s3 s0) 97)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 71)
	(= (time-to-drive s0 s1) 71)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 75)
	(= (time-to-drive s3 s1) 75)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 94)
	(= (time-to-drive s4 s1) 94)
	(link s1 s5)
	(link s5 s1)
	(= (time-to-drive s1 s5) 10)
	(= (time-to-drive s5 s1) 10)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 50)
	(= (time-to-drive s0 s2) 50)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 63)
	(= (time-to-drive s3 s2) 63)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 65)
	(= (time-to-drive s2 s4) 65)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 95)
	(= (time-to-drive s3 s4) 95)
	(link s4 s5)
	(link s5 s4)
	(= (time-to-drive s4 s5) 67)
	(= (time-to-drive s5 s4) 67)
	(link s5 s2)
	(link s2 s5)
	(= (time-to-drive s5 s2) 68)
	(= (time-to-drive s2 s5) 68)
	(link s5 s3)
	(link s3 s5)
	(= (time-to-drive s5 s3) 63)
	(= (time-to-drive s3 s5) 63)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s4)
	(at driver2 s3)
	(at driver3 s5)
	(at truck3 s0)
	(at truck5 s2)
	(at truck6 s3)
	(at package1 s4)
	(at package2 s2)
	(at package3 s3)
	(at package4 s1)
	(at package5 s5)
	(at package6 s4)
	(at package8 s4)
	))

(:metric minimize (+ (* 2 (total-time)) (* 1 (fuel-used))))

)
