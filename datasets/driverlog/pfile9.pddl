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
	p1-0 - location
	p1-2 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at package1 s0)
	(at package2 s2)
	(at package3 s1)
	(at package4 s1)
	(at package5 s0)
	(at package6 s2)
	(at package7 s0)
	(at package8 s2)
	(at package9 s1)
	(at package10 s0)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 68)
	(= (time-to-walk p1-0 s1) 68)
	(= (time-to-walk s0 p1-0) 87)
	(= (time-to-walk p1-0 s0) 87)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 66)
	(= (time-to-walk p1-2 s1) 66)
	(= (time-to-walk s2 p1-2) 41)
	(= (time-to-walk p1-2 s2) 41)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 82)
	(= (time-to-drive s1 s0) 82)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 89)
	(= (time-to-drive s2 s1) 89)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 12)
	(= (time-to-drive s0 s2) 12)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s0)
	(at truck1 s1)
	(at truck2 s0)
	(at package1 s0)
	(at package2 s0)
	(at package3 s2)
	(at package4 s1)
	(at package5 s2)
	(at package6 s2)
	(at package7 s0)
	(at package9 s0)
	(at package10 s2)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 3  (driven))) (* 3  (walked))))

)
