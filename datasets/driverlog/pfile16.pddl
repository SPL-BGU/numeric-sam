(define (problem DLOG-4-4-8)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
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
	p2-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s0)
	(at driver3 s1)
	(at driver4 s2)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at package1 s2)
	(at package2 s0)
	(at package3 s2)
	(at package4 s1)
	(at package5 s1)
	(at package6 s2)
	(at package7 s0)
	(at package8 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 73)
	(= (time-to-walk p0-1 s0) 73)
	(= (time-to-walk s1 p0-1) 65)
	(= (time-to-walk p0-1 s1) 65)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 75)
	(= (time-to-walk p1-2 s1) 75)
	(= (time-to-walk s2 p1-2) 18)
	(= (time-to-walk p1-2 s2) 18)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 15)
	(= (time-to-walk p2-0 s2) 15)
	(= (time-to-walk s0 p2-0) 2)
	(= (time-to-walk p2-0 s0) 2)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 26)
	(= (time-to-drive s1 s0) 26)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 4)
	(= (time-to-drive s2 s0) 4)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 26)
	(= (time-to-drive s1 s2) 26)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver4 s2)
	(at truck1 s0)
	(at truck2 s2)
	(at truck3 s1)
	(at package1 s0)
	(at package2 s0)
	(at package3 s2)
	(at package4 s0)
	(at package5 s1)
	(at package6 s0)
	(at package7 s0)
	(at package8 s0)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 1  (driven))) (* 2  (walked))))

)
