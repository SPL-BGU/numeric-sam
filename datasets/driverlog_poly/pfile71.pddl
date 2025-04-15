(define (problem DLOG-2-2-2)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	s0 - location
	s1 - location
	s2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s0)
	(at package2 s0)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 91)
	(= (time-to-drive s2 s0) 91)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 71)
	(= (time-to-drive s0 s1) 71)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 73)
	(= (time-to-drive s2 s1) 73)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s0)
	(at truck1 s0)
	(at truck2 s2)
	(at package1 s1)
	(at package2 s0)
	))

(:metric minimize (+ (* 4 (total-time)) (* 3 (fuel-used))))

)
