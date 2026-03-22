(define (problem DLOG-3-1-4-245)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	s0 - location
	s1 - location
	p0-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s0)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at package1 s0)
	(at package2 s1)
	(at package3 s0)
	(at package4 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 15)
	(= (time-to-walk p0-1 s0) 15)
	(= (time-to-walk s1 p0-1) 24)
	(= (time-to-walk p0-1 s1) 24)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 4)
	(= (time-to-drive s0 s1) 4)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s0)
	(at driver3 s0)
	(at truck1 s1)
	(at package1 s1)
	(at package2 s0)
	(at package3 s1)
	(at package4 s1)
	))

(:metric minimize (+ (* 3 (total-time)) (* 1 (fuel-used))))

)
