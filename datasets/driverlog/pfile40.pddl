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
	p1-0 - location
	p1-2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at package1 s1)
	(at package2 s2)
	(at package3 s2)
	(at package4 s0)
	(at package5 s2)
	(at package6 s1)
	(at package7 s1)
	(at package8 s1)
	(at package9 s0)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 41)
	(= (time-to-walk p1-0 s1) 41)
	(= (time-to-walk s0 p1-0) 2)
	(= (time-to-walk p1-0 s0) 2)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 10)
	(= (time-to-walk p1-2 s1) 10)
	(= (time-to-walk s2 p1-2) 96)
	(= (time-to-walk p1-2 s2) 96)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 49)
	(= (time-to-walk p2-0 s2) 49)
	(= (time-to-walk s0 p2-0) 41)
	(= (time-to-walk p2-0 s0) 41)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 97)
	(= (time-to-drive s1 s0) 97)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 41)
	(= (time-to-drive s2 s1) 41)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 1)
	(= (time-to-drive s0 s2) 1)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at truck2 s0)
	(at package2 s1)
	(at package3 s1)
	(at package4 s1)
	(at package5 s1)
	(at package6 s2)
	(at package8 s2)
	(at package9 s2)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 1  (driven))) (* 3  (walked))))

)
