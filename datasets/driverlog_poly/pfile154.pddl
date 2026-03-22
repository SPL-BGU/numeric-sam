(define (problem DLOG-4-2-4-154)
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
	s0 - location
	s1 - location
	p0-1 - location
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
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s1)
	(at package2 s0)
	(at package3 s0)
	(at package4 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 54)
	(= (time-to-walk p0-1 s0) 54)
	(= (time-to-walk s1 p0-1) 13)
	(= (time-to-walk p0-1 s1) 13)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 42)
	(= (time-to-drive s1 s0) 42)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s0)
	(at truck1 s1)
	(at truck2 s1)
	(at package1 s0)
	(at package2 s0)
	(at package3 s1)
	(at package4 s1)
	))

(:metric minimize (+ (* 4 (total-time)) (* 2 (fuel-used))))

)
