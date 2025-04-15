(define (problem DLOG-3-2-4)
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
	package4 - obj
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
	(at package4 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 97)
	(= (time-to-walk p0-2 s0) 97)
	(= (time-to-walk s2 p0-2) 61)
	(= (time-to-walk p0-2 s2) 61)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 31)
	(= (time-to-walk p1-0 s1) 31)
	(= (time-to-walk s0 p1-0) 13)
	(= (time-to-walk p1-0 s0) 13)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 70)
	(= (time-to-walk p2-1 s2) 70)
	(= (time-to-walk s1 p2-1) 84)
	(= (time-to-walk p2-1 s1) 84)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 27)
	(= (time-to-drive s1 s0) 27)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 33)
	(= (time-to-drive s2 s0) 33)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 31)
	(= (time-to-drive s2 s1) 31)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at truck1 s2)
	(at truck2 s0)
	(at package1 s1)
	(at package2 s0)
	(at package3 s2)
	(at package4 s2)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 3  (driven))) (* 1  (walked))))

)
