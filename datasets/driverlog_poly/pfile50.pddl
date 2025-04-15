(define (problem DLOG-4-4-2)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	package1 - obj
	package2 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s2)
	(at driver4 s2)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s0)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s0)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s2)
	(at package2 s0)
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
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 79)
	(= (time-to-drive s1 s0) 79)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 33)
	(= (time-to-drive s2 s1) 33)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 67)
	(= (time-to-drive s0 s2) 67)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver4 s0)
	(at truck1 s2)
	(at truck2 s2)
	(at truck3 s2)
	(at package1 s2)
	(at package2 s0)
	))

(:metric minimize (+ (* 4 (total-time)) (* 1 (fuel-used))))

)
