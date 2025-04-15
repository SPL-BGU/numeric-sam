(define (problem DLOG-3-3-2)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-2 - location
	p1-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s2)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at package1 s0)
	(at package2 s0)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 71)
	(= (time-to-walk p0-2 s0) 71)
	(= (time-to-walk s2 p0-2) 81)
	(= (time-to-walk p0-2 s2) 81)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 74)
	(= (time-to-walk p1-0 s1) 74)
	(= (time-to-walk s0 p1-0) 67)
	(= (time-to-walk p1-0 s0) 67)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 16)
	(= (time-to-walk p2-1 s2) 16)
	(= (time-to-walk s1 p2-1) 99)
	(= (time-to-walk p2-1 s1) 99)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 71)
	(= (time-to-drive s1 s0) 71)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 24)
	(= (time-to-drive s2 s0) 24)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 27)
	(= (time-to-drive s1 s2) 27)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver3 s1)
	(at truck1 s1)
	(at truck2 s0)
	(at package1 s1)
	(at package2 s1)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 3  (driven))) (* 1  (walked))))

)
