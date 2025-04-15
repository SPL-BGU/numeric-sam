(define (problem DLOG-2-5-9)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
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
	s0 - location
	s1 - location
	s2 - location
	p0-2 - location
	p1-0 - location
	p2-0 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s1)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s0)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s0)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s0)
	(at package2 s0)
	(at package3 s1)
	(at package4 s1)
	(at package5 s0)
	(at package6 s2)
	(at package7 s0)
	(at package8 s2)
	(at package9 s0)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 57)
	(= (time-to-drive s1 s0) 57)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 5)
	(= (time-to-drive s2 s0) 5)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 79)
	(= (time-to-drive s1 s2) 79)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s0)
	(at truck1 s2)
	(at truck2 s0)
	(at truck3 s2)
	(at truck4 s0)
	(at truck5 s0)
	(at package1 s0)
	(at package2 s0)
	(at package3 s2)
	(at package4 s2)
	(at package5 s0)
	(at package6 s0)
	(at package7 s1)
	(at package8 s2)
	(at package9 s0)
	))

(:metric minimize (+ (* 4 (total-time)) (* 1 (fuel-used))))

)
