(define (problem DLOG-2-2-9)
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
	package9 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s2)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at package1 s0)
	(at package2 s2)
	(at package3 s0)
	(at package4 s2)
	(at package5 s1)
	(at package6 s1)
	(at package7 s0)
	(at package8 s1)
	(at package9 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 81)
	(= (time-to-walk p0-1 s0) 81)
	(= (time-to-walk s1 p0-1) 17)
	(= (time-to-walk p0-1 s1) 17)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 73)
	(= (time-to-walk p1-2 s1) 73)
	(= (time-to-walk s2 p1-2) 98)
	(= (time-to-walk p1-2 s2) 98)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 46)
	(= (time-to-walk p2-0 s2) 46)
	(= (time-to-walk s0 p2-0) 50)
	(= (time-to-walk p2-0 s0) 50)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 60)
	(= (time-to-drive s2 s0) 60)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 18)
	(= (time-to-drive s0 s1) 18)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 65)
	(= (time-to-drive s2 s1) 65)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s0)
	(at truck1 s2)
	(at package1 s2)
	(at package2 s0)
	(at package3 s1)
	(at package4 s0)
	(at package5 s2)
	(at package6 s0)
	(at package7 s0)
	(at package8 s2)
	(at package9 s2)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 2  (driven))) (* 1  (walked))))

)
