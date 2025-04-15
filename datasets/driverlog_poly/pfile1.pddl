(define (problem DLOG-4-2-5)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	s0 - location
	s1 - location
	s2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s2)
	(at driver4 s0)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s0)
	(at package2 s2)
	(at package3 s1)
	(at package4 s2)
	(at package5 s1)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 20)
	(= (time-to-drive s1 s0) 20)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 56)
	(= (time-to-drive s2 s0) 56)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 36)
	(= (time-to-drive s2 s1) 36)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver3 s1)
	(at truck1 s1)
	(at truck2 s0)
	(at package1 s2)
	(at package2 s2)
	(at package3 s1)
	(at package4 s0)
	(at package5 s0)
	))

(:metric minimize (+ (* 2 (total-time)) (* 1 (fuel-used))))

)
