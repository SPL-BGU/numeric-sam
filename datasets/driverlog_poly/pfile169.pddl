(define (problem DLOG-5-2-5-169)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
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
	p1-2 - location
	p0-1 - location
	p2-0 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s2)
	(at driver3 s0)
	(at driver4 s2)
	(at driver5 s0)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s2)
	(at package2 s2)
	(at package3 s1)
	(at package4 s0)
	(at package5 s0)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 19)
	(= (time-to-walk p1-2 s1) 19)
	(= (time-to-walk s2 p1-2) 4)
	(= (time-to-walk p1-2 s2) 4)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 70)
	(= (time-to-walk p0-1 s0) 70)
	(= (time-to-walk s1 p0-1) 56)
	(= (time-to-walk p0-1 s1) 56)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 26)
	(= (time-to-walk p2-0 s2) 26)
	(= (time-to-walk s0 p2-0) 51)
	(= (time-to-walk p2-0 s0) 51)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 42)
	(= (time-to-drive s0 s1) 42)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 39)
	(= (time-to-drive s0 s2) 39)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 20)
	(= (time-to-drive s1 s2) 20)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s0)
	(at driver4 s1)
	(at driver5 s1)
	(at truck1 s1)
	(at truck2 s2)
	(at package1 s1)
	(at package2 s2)
	(at package3 s2)
	(at package4 s2)
	(at package5 s0)
	))

(:metric minimize (+ (* 1 (total-time)) (* 1 (fuel-used))))

)
