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
	p0-1 - location
	p0-2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s1)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at package1 s0)
	(at package2 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 91)
	(= (time-to-walk p0-1 s0) 91)
	(= (time-to-walk s1 p0-1) 77)
	(= (time-to-walk p0-1 s1) 77)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 95)
	(= (time-to-walk p0-2 s0) 95)
	(= (time-to-walk s2 p0-2) 79)
	(= (time-to-walk p0-2 s2) 79)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 56)
	(= (time-to-walk p2-1 s2) 56)
	(= (time-to-walk s1 p2-1) 95)
	(= (time-to-walk p2-1 s1) 95)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 99)
	(= (time-to-drive s1 s0) 99)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 23)
	(= (time-to-drive s2 s0) 23)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 21)
	(= (time-to-drive s2 s1) 21)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s2)
	(at driver3 s1)
	(at truck2 s2)
	(at truck3 s2)
	(at package1 s0)
	(at package2 s0)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 1  (driven))) (* 4  (walked))))

)
