(define (problem DLOG-4-2-5)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
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
	(at driver1 s2)
	(at driver2 s0)
	(at driver3 s0)
	(at driver4 s2)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at package1 s0)
	(at package2 s0)
	(at package3 s1)
	(at package4 s1)
	(at package5 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 6)
	(= (time-to-walk p0-1 s0) 6)
	(= (time-to-walk s1 p0-1) 83)
	(= (time-to-walk p0-1 s1) 83)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 95)
	(= (time-to-walk p1-2 s1) 95)
	(= (time-to-walk s2 p1-2) 81)
	(= (time-to-walk p1-2 s2) 81)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 90)
	(= (time-to-walk p2-0 s2) 90)
	(= (time-to-walk s0 p2-0) 68)
	(= (time-to-walk p2-0 s0) 68)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 95)
	(= (time-to-drive s2 s0) 95)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 73)
	(= (time-to-drive s0 s1) 73)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 94)
	(= (time-to-drive s2 s1) 94)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s1)
	(at truck1 s2)
	(at truck2 s2)
	(at package1 s0)
	(at package2 s2)
	(at package3 s0)
	(at package4 s2)
	(at package5 s1)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 4  (driven))) (* 3  (walked))))

)
