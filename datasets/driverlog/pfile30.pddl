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
	p0-2 - location
	p1-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s2)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at package1 s2)
	(at package2 s1)
	(at package3 s0)
	(at package4 s0)
	(at package5 s2)
	(at package6 s1)
	(at package7 s1)
	(at package8 s0)
	(at package9 s0)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 85)
	(= (time-to-walk p0-2 s0) 85)
	(= (time-to-walk s2 p0-2) 28)
	(= (time-to-walk p0-2 s2) 28)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 35)
	(= (time-to-walk p1-0 s1) 35)
	(= (time-to-walk s0 p1-0) 73)
	(= (time-to-walk p1-0 s0) 73)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 16)
	(= (time-to-walk p2-1 s2) 16)
	(= (time-to-walk s1 p2-1) 79)
	(= (time-to-walk p2-1 s1) 79)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 95)
	(= (time-to-drive s1 s0) 95)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 74)
	(= (time-to-drive s2 s0) 74)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 91)
	(= (time-to-drive s1 s2) 91)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s1)
	(at truck1 s1)
	(at truck2 s0)
	(at package1 s1)
	(at package2 s0)
	(at package3 s2)
	(at package4 s0)
	(at package6 s0)
	(at package7 s1)
	(at package8 s1)
	(at package9 s0)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 4  (driven))) (* 4  (walked))))

)
