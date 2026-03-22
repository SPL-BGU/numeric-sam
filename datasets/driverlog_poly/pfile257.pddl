(define (problem DLOG-4-3-1-257)
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
	s0 - location
	s1 - location
	s2 - location
	p1-2 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s1)
	(at driver4 s1)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s2)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s2)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 43)
	(= (time-to-walk p1-2 s1) 43)
	(= (time-to-walk s2 p1-2) 50)
	(= (time-to-walk p1-2 s2) 50)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 16)
	(= (time-to-drive s1 s2) 16)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 67)
	(= (time-to-drive s2 s0) 67)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s2)
	(at driver4 s2)
	(at truck1 s0)
	(at truck2 s0)
	(at package1 s2)
	))

(:metric minimize (+ (* 3 (total-time)) (* 3 (fuel-used))))

)
