(define (problem DLOG-2-3-7)
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
	package6 - obj
	package7 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p1-2 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at package1 s2)
	(at package2 s1)
	(at package3 s0)
	(at package4 s0)
	(at package5 s1)
	(at package6 s1)
	(at package7 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 74)
	(= (time-to-walk p0-1 s0) 74)
	(= (time-to-walk s1 p0-1) 12)
	(= (time-to-walk p0-1 s1) 12)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 66)
	(= (time-to-walk p0-2 s0) 66)
	(= (time-to-walk s2 p0-2) 91)
	(= (time-to-walk p0-2 s2) 91)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 17)
	(= (time-to-walk p1-2 s1) 17)
	(= (time-to-walk s2 p1-2) 14)
	(= (time-to-walk p1-2 s2) 14)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 17)
	(= (time-to-drive s1 s0) 17)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 56)
	(= (time-to-drive s2 s1) 56)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 81)
	(= (time-to-drive s0 s2) 81)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s2)
	(at package1 s0)
	(at package2 s2)
	(at package3 s1)
	(at package4 s2)
	(at package5 s0)
	(at package6 s1)
	(at package7 s2)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 2  (driven))) (* 4  (walked))))

)
