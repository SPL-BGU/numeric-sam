(define (problem DLOG-2-5-10)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	package8 - obj
	package9 - obj
	package10 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s1)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at truck5 s1)
	(empty truck5)
	(at package1 s0)
	(at package2 s0)
	(at package3 s2)
	(at package4 s0)
	(at package5 s0)
	(at package6 s2)
	(at package7 s2)
	(at package8 s1)
	(at package9 s2)
	(at package10 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 90)
	(= (time-to-walk p0-1 s0) 90)
	(= (time-to-walk s1 p0-1) 34)
	(= (time-to-walk p0-1 s1) 34)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 64)
	(= (time-to-walk p0-2 s0) 64)
	(= (time-to-walk s2 p0-2) 31)
	(= (time-to-walk p0-2 s2) 31)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 66)
	(= (time-to-walk p1-2 s1) 66)
	(= (time-to-walk s2 p1-2) 85)
	(= (time-to-walk p1-2 s2) 85)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 73)
	(= (time-to-drive s1 s0) 73)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 34)
	(= (time-to-drive s2 s0) 34)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 5)
	(= (time-to-drive s1 s2) 5)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s1)
	(at truck1 s2)
	(at truck2 s1)
	(at truck4 s0)
	(at truck5 s0)
	(at package1 s1)
	(at package2 s0)
	(at package3 s0)
	(at package4 s2)
	(at package5 s1)
	(at package6 s2)
	(at package7 s0)
	(at package8 s2)
	(at package9 s2)
	(at package10 s0)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 2  (driven))) (* 1  (walked))))

)
