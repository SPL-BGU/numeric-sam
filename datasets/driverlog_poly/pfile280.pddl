(define (problem DLOG-4-1-6-280)
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
	package4 - obj
	package5 - obj
	package6 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s2)
	(at driver3 s0)
	(at driver4 s1)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at package1 s1)
	(at package2 s2)
	(at package3 s1)
	(at package4 s0)
	(at package5 s2)
	(at package6 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 62)
	(= (time-to-walk p0-1 s0) 62)
	(= (time-to-walk s1 p0-1) 79)
	(= (time-to-walk p0-1 s1) 79)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 8)
	(= (time-to-walk p2-1 s2) 8)
	(= (time-to-walk s1 p2-1) 73)
	(= (time-to-walk p2-1 s1) 73)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 60)
	(= (time-to-drive s2 s1) 60)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 73)
	(= (time-to-drive s1 s0) 73)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 70)
	(= (time-to-drive s0 s2) 70)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s2)
	(at truck1 s0)
	(at package1 s2)
	(at package2 s1)
	(at package3 s2)
	(at package4 s0)
	(at package5 s2)
	(at package6 s0)
	))

(:metric minimize (+ (* 4 (total-time)) (* 2 (fuel-used))))

)
