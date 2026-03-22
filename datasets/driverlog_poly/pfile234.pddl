(define (problem DLOG-3-1-7-234)
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
	package5 - obj
	package6 - obj
	package7 - obj
	s0 - location
	s1 - location
	s2 - location
	p2-0 - location
	p1-2 - location
	p0-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s2)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at package1 s0)
	(at package2 s1)
	(at package3 s0)
	(at package4 s1)
	(at package5 s0)
	(at package6 s1)
	(at package7 s2)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 57)
	(= (time-to-walk p2-0 s2) 57)
	(= (time-to-walk s0 p2-0) 50)
	(= (time-to-walk p2-0 s0) 50)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 42)
	(= (time-to-walk p1-2 s1) 42)
	(= (time-to-walk s2 p1-2) 55)
	(= (time-to-walk p1-2 s2) 55)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 70)
	(= (time-to-walk p0-1 s0) 70)
	(= (time-to-walk s1 p0-1) 12)
	(= (time-to-walk p0-1 s1) 12)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 66)
	(= (time-to-drive s0 s1) 66)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 17)
	(= (time-to-drive s1 s2) 17)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 72)
	(= (time-to-drive s2 s0) 72)
	(= (fuel-used) 0)
)
	(:goal (and
	(at truck1 s0)
	(at package1 s0)
	(at package2 s2)
	(at package3 s1)
	(at package5 s2)
	(at package6 s0)
	(at package7 s0)
	))

(:metric minimize (+ (* 1 (total-time)) (* 3 (fuel-used))))

)
