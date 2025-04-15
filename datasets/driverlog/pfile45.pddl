(define (problem DLOG-3-2-8)
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
	package5 - obj
	package6 - obj
	package7 - obj
	package8 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s2)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at package1 s2)
	(at package2 s1)
	(at package3 s2)
	(at package4 s2)
	(at package5 s2)
	(at package6 s0)
	(at package7 s1)
	(at package8 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 11)
	(= (time-to-walk p0-1 s0) 11)
	(= (time-to-walk s1 p0-1) 51)
	(= (time-to-walk p0-1 s1) 51)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 38)
	(= (time-to-walk p1-2 s1) 38)
	(= (time-to-walk s2 p1-2) 22)
	(= (time-to-walk p1-2 s2) 22)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 58)
	(= (time-to-walk p2-0 s2) 58)
	(= (time-to-walk s0 p2-0) 39)
	(= (time-to-walk p2-0 s0) 39)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 82)
	(= (time-to-drive s1 s0) 82)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 28)
	(= (time-to-drive s2 s1) 28)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 8)
	(= (time-to-drive s0 s2) 8)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s2)
	(at driver3 s1)
	(at truck2 s0)
	(at package1 s2)
	(at package2 s0)
	(at package3 s2)
	(at package4 s0)
	(at package5 s2)
	(at package6 s0)
	(at package7 s2)
	(at package8 s2)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 3  (driven))) (* 1  (walked))))

)
