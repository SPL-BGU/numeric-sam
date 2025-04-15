(define (problem DLOG-4-3-3)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	package3 - obj
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
	(at driver4 s0)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s2)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s2)
	(at package2 s2)
	(at package3 s0)
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
	(= (time-to-drive s1 s0) 11)
	(= (time-to-drive s0 s1) 11)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 16)
	(= (time-to-drive s0 s2) 16)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 96)
	(= (time-to-drive s1 s2) 96)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at truck1 s2)
	(at truck2 s2)
	(at truck3 s2)
	(at package1 s2)
	(at package2 s0)
	(at package3 s0)
	))

(:metric minimize (+ (* 1 (total-time)) (* 2 (fuel-used))))

)
