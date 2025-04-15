(define (problem DLOG-3-3-7)
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
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	s0 - location
	s1 - location
	s2 - location
	p1-0 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s1)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at package1 s2)
	(at package2 s1)
	(at package3 s1)
	(at package4 s2)
	(at package5 s2)
	(at package6 s0)
	(at package7 s0)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 60)
	(= (time-to-walk p1-0 s1) 60)
	(= (time-to-walk s0 p1-0) 84)
	(= (time-to-walk p1-0 s0) 84)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 10)
	(= (time-to-walk p1-2 s1) 10)
	(= (time-to-walk s2 p1-2) 68)
	(= (time-to-walk p1-2 s2) 68)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 99)
	(= (time-to-walk p2-0 s2) 99)
	(= (time-to-walk s0 p2-0) 64)
	(= (time-to-walk p2-0 s0) 64)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 74)
	(= (time-to-drive s0 s1) 74)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 10)
	(= (time-to-drive s0 s2) 10)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 93)
	(= (time-to-drive s1 s2) 93)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver3 s0)
	(at package2 s1)
	(at package3 s2)
	(at package4 s2)
	(at package5 s0)
	(at package6 s2)
	(at package7 s1)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 1  (driven))) (* 1  (walked))))

)
