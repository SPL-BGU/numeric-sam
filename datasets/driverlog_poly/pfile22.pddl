(define (problem DLOG-3-4-8)
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
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p1-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s0)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s2)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s1)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s2)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s2)
	(at package2 s2)
	(at package3 s0)
	(at package4 s0)
	(at package5 s2)
	(at package6 s0)
	(at package7 s0)
	(at package8 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 20)
	(= (time-to-drive s0 s1) 20)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 50)
	(= (time-to-drive s0 s2) 50)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 63)
	(= (time-to-drive s1 s2) 63)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at truck2 s2)
	(at truck3 s2)
	(at truck4 s2)
	(at package1 s2)
	(at package2 s0)
	(at package3 s0)
	(at package4 s0)
	(at package5 s2)
	(at package6 s0)
	(at package8 s0)
	))

(:metric minimize (+ (* 2 (total-time)) (* 2 (fuel-used))))

)
