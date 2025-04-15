(define (problem DLOG-2-2-8)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
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
	p1-0 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s0)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at package1 s2)
	(at package2 s2)
	(at package3 s1)
	(at package4 s0)
	(at package5 s1)
	(at package6 s1)
	(at package7 s2)
	(at package8 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 81)
	(= (time-to-walk p0-1 s0) 81)
	(= (time-to-walk s1 p0-1) 73)
	(= (time-to-walk p0-1 s1) 73)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 64)
	(= (time-to-walk p1-2 s1) 64)
	(= (time-to-walk s2 p1-2) 64)
	(= (time-to-walk p1-2 s2) 64)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 10)
	(= (time-to-walk p2-0 s2) 10)
	(= (time-to-walk s0 p2-0) 94)
	(= (time-to-walk p2-0 s0) 94)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 48)
	(= (time-to-drive s1 s0) 48)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 81)
	(= (time-to-drive s2 s0) 81)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 19)
	(= (time-to-drive s1 s2) 19)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s0)
	(at truck1 s0)
	(at truck2 s0)
	(at package1 s0)
	(at package2 s2)
	(at package3 s0)
	(at package4 s0)
	(at package5 s1)
	(at package6 s1)
	(at package7 s1)
	(at package8 s1)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 3  (driven))) (* 1  (walked))))

)
