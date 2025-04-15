(define (problem DLOG-4-2-3)
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
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-0 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s0)
	(at driver3 s0)
	(at driver4 s1)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s1)
	(at package2 s1)
	(at package3 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 28)
	(= (time-to-drive s2 s0) 28)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 65)
	(= (time-to-drive s0 s1) 65)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 30)
	(= (time-to-drive s1 s2) 30)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s0)
	(at driver3 s2)
	(at driver4 s1)
	(at truck1 s1)
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	))

(:metric minimize (+ (* 3 (total-time)) (* 4 (fuel-used))))

)
