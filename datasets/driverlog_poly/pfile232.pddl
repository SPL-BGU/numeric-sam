(define (problem DLOG-1-1-2-232)
	(:domain driverlog)
	(:objects
	driver1 - driver
	truck1 - truck
	package1 - obj
	package2 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p1-2 - location
	)
	(:init
	(at driver1 s2)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at package1 s1)
	(at package2 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 4)
	(= (time-to-walk p0-1 s0) 4)
	(= (time-to-walk s1 p0-1) 7)
	(= (time-to-walk p0-1 s1) 7)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 1)
	(= (time-to-walk p0-2 s0) 1)
	(= (time-to-walk s2 p0-2) 2)
	(= (time-to-walk p0-2 s2) 2)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 3)
	(= (time-to-walk p1-2 s1) 3)
	(= (time-to-walk s2 p1-2) 8)
	(= (time-to-walk p1-2 s2) 8)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 1)
	(= (time-to-drive s0 s1) 1)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 4)
	(= (time-to-drive s1 s2) 4)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at truck1 s0)
	(at package1 s0)
	(at package2 s2)
	))

(:metric minimize (+ (* 1 (total-time)) (* 2 (fuel-used))))

)
