(define (problem DLOG-3-2-3)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-2 - location
	p1-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at package1 s0)
	(at package2 s1)
	(at package3 s0)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 45)
	(= (time-to-walk p0-2 s0) 45)
	(= (time-to-walk s2 p0-2) 76)
	(= (time-to-walk p0-2 s2) 76)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 9)
	(= (time-to-walk p1-0 s1) 9)
	(= (time-to-walk s0 p1-0) 97)
	(= (time-to-walk p1-0 s0) 97)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 61)
	(= (time-to-walk p2-1 s2) 61)
	(= (time-to-walk s1 p2-1) 31)
	(= (time-to-walk p2-1 s1) 31)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 13)
	(= (time-to-drive s1 s0) 13)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 70)
	(= (time-to-drive s2 s0) 70)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 84)
	(= (time-to-drive s2 s1) 84)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at truck1 s2)
	(at truck2 s0)
	(at package1 s1)
	(at package2 s0)
	(at package3 s2)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 2  (driven))) (* 2  (walked))))

)
