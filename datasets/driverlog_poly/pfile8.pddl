(define (problem DLOG-2-4-4)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-2 - location
	p1-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at truck1 s2)
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
	(at truck4 s0)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s2)
	(at package2 s1)
	(at package3 s2)
	(at package4 s1)
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
	(= (time-to-drive s0 s1) 96)
	(= (time-to-drive s1 s0) 96)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 89)
	(= (time-to-drive s2 s0) 89)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 42)
	(= (time-to-drive s1 s2) 42)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s1)
	(at truck1 s1)
	(at truck2 s0)
	(at truck3 s1)
	(at truck4 s1)
	(at package1 s2)
	(at package2 s1)
	(at package3 s0)
	(at package4 s0)
	))

(:metric minimize (+ (* 4 (total-time)) (* 2 (fuel-used))))

)
