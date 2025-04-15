(define (problem DLOG-2-2-6)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-0 - location
	p1-2 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s2)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s0)
	(at package2 s1)
	(at package3 s1)
	(at package4 s1)
	(at package5 s2)
	(at package6 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 17)
	(= (time-to-drive s1 s0) 17)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 91)
	(= (time-to-drive s2 s0) 91)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 89)
	(= (time-to-drive s2 s1) 89)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s1)
	(at truck1 s2)
	(at truck2 s0)
	(at package1 s2)
	(at package2 s0)
	(at package3 s1)
	(at package4 s1)
	(at package5 s2)
	(at package6 s0)
	))

(:metric minimize (+ (* 1 (total-time)) (* 3 (fuel-used))))

)
