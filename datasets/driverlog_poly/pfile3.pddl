(define (problem DLOG-3-5-6)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
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
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-2 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s0)
	(at truck1 s1)
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
	(at truck4 s2)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s2)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s2)
	(at package2 s2)
	(at package3 s2)
	(at package4 s0)
	(at package5 s1)
	(at package6 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 12)
	(= (time-to-drive s2 s0) 12)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 65)
	(= (time-to-drive s0 s1) 65)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 80)
	(= (time-to-drive s1 s2) 80)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s2)
	(at truck2 s2)
	(at truck3 s2)
	(at truck4 s0)
	(at truck5 s2)
	(at package1 s2)
	(at package2 s1)
	(at package3 s2)
	(at package4 s0)
	(at package5 s0)
	(at package6 s2)
	))

(:metric minimize (+ (* 4 (total-time)) (* 4 (fuel-used))))

)
