(define (problem DLOG-2-3-5)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s2)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at package1 s1)
	(at package2 s2)
	(at package3 s2)
	(at package4 s0)
	(at package5 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 68)
	(= (time-to-walk p0-1 s0) 68)
	(= (time-to-walk s1 p0-1) 6)
	(= (time-to-walk p0-1 s1) 6)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 78)
	(= (time-to-walk p1-2 s1) 78)
	(= (time-to-walk s2 p1-2) 43)
	(= (time-to-walk p1-2 s2) 43)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 75)
	(= (time-to-walk p2-0 s2) 75)
	(= (time-to-walk s0 p2-0) 50)
	(= (time-to-walk p2-0 s0) 50)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 48)
	(= (time-to-drive s1 s0) 48)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 56)
	(= (time-to-drive s2 s0) 56)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 42)
	(= (time-to-drive s1 s2) 42)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at truck1 s2)
	(at truck2 s2)
	(at truck3 s0)
	(at package1 s2)
	(at package2 s1)
	(at package3 s1)
	(at package4 s0)
	(at package5 s1)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 1  (driven))) (* 1  (walked))))

)
