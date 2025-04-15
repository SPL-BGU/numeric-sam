(define (problem DLOG-2-2-3)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p1-0 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s2)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s0)
	(at package2 s1)
	(at package3 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 14)
	(= (time-to-drive s1 s0) 14)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 3)
	(= (time-to-drive s2 s1) 3)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 46)
	(= (time-to-drive s0 s2) 46)
	(= (fuel-used) 0)
)
	(:goal (and
	(at package1 s0)
	(at package2 s1)
	(at package3 s0)
	))

(:metric minimize (+ (* 3 (total-time)) (* 2 (fuel-used))))

)
