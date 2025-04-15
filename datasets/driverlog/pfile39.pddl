(define (problem DLOG-2-2-10)
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
	package10 - obj
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
	(at package1 s0)
	(at package2 s1)
	(at package3 s2)
	(at package4 s2)
	(at package5 s0)
	(at package6 s0)
	(at package7 s2)
	(at package8 s1)
	(at package9 s1)
	(at package10 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 4)
	(= (time-to-walk p0-1 s0) 4)
	(= (time-to-walk s1 p0-1) 34)
	(= (time-to-walk p0-1 s1) 34)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 32)
	(= (time-to-walk p1-2 s1) 32)
	(= (time-to-walk s2 p1-2) 57)
	(= (time-to-walk p1-2 s2) 57)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 96)
	(= (time-to-walk p2-0 s2) 96)
	(= (time-to-walk s0 p2-0) 22)
	(= (time-to-walk p2-0 s0) 22)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 87)
	(= (time-to-drive s1 s0) 87)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 85)
	(= (time-to-drive s2 s0) 85)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 74)
	(= (time-to-drive s1 s2) 74)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at truck1 s2)
	(at truck2 s2)
	(at package1 s0)
	(at package2 s2)
	(at package3 s1)
	(at package4 s1)
	(at package5 s0)
	(at package6 s1)
	(at package7 s0)
	(at package8 s2)
	(at package9 s1)
	(at package10 s0)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 3  (driven))) (* 1  (walked))))

)
