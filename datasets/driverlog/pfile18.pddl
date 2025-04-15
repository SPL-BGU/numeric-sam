(define (problem DLOG-4-3-2)
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
	package2 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p1-2 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at package1 s1)
	(at package2 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 77)
	(= (time-to-walk p0-1 s0) 77)
	(= (time-to-walk s1 p0-1) 41)
	(= (time-to-walk p0-1 s1) 41)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 55)
	(= (time-to-walk p0-2 s0) 55)
	(= (time-to-walk s2 p0-2) 24)
	(= (time-to-walk p0-2 s2) 24)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 84)
	(= (time-to-walk p1-2 s1) 84)
	(= (time-to-walk s2 p1-2) 26)
	(= (time-to-walk p1-2 s2) 26)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 38)
	(= (time-to-drive s2 s0) 38)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 43)
	(= (time-to-drive s0 s1) 43)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 18)
	(= (time-to-drive s1 s2) 18)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s2)
	(at driver3 s2)
	(at truck3 s0)
	(at package1 s2)
	(at package2 s1)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 1  (driven))) (* 4  (walked))))

)
