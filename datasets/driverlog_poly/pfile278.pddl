(define (problem DLOG-4-1-3-278)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	s1 - location
	s2 - location
	p2-0 - location
	p2-1 - location
	p0-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s2)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at package1 s0)
	(at package2 s2)
	(at package3 s0)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 56)
	(= (time-to-walk p2-0 s2) 56)
	(= (time-to-walk s0 p2-0) 6)
	(= (time-to-walk p2-0 s0) 6)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 20)
	(= (time-to-walk p2-1 s2) 20)
	(= (time-to-walk s1 p2-1) 43)
	(= (time-to-walk p2-1 s1) 43)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 59)
	(= (time-to-walk p0-1 s0) 59)
	(= (time-to-walk s1 p0-1) 26)
	(= (time-to-walk p0-1 s1) 26)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 5)
	(= (time-to-drive s0 s1) 5)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 8)
	(= (time-to-drive s0 s2) 8)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 22)
	(= (time-to-drive s1 s2) 22)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s0)
	(at driver3 s0)
	(at truck1 s2)
	(at package1 s0)
	(at package2 s0)
	(at package3 s1)
	))

(:metric minimize (+ (* 3 (total-time)) (* 4 (fuel-used))))

)
