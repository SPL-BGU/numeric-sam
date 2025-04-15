(define (problem DLOG-3-5-2)
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
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s0)
	(at truck1 s2)
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
	(at truck5 s1)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s2)
	(at package2 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
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
	(= (time-to-drive s0 s1) 87)
	(= (time-to-drive s1 s0) 87)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 28)
	(= (time-to-drive s2 s0) 28)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 83)
	(= (time-to-drive s2 s1) 83)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver3 s2)
	(at truck2 s0)
	(at truck3 s2)
	(at truck4 s0)
	(at truck5 s2)
	(at package1 s1)
	(at package2 s1)
	))

(:metric minimize (+ (* 3 (total-time)) (* 4 (fuel-used))))

)
