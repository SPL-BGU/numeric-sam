(define (problem DLOG-2-5-9)
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
	s0 - location
	s1 - location
	s2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at truck5 s0)
	(empty truck5)
	(at package1 s2)
	(at package2 s1)
	(at package3 s2)
	(at package4 s1)
	(at package5 s0)
	(at package6 s1)
	(at package7 s1)
	(at package8 s1)
	(at package9 s0)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 47)
	(= (time-to-walk p2-0 s2) 47)
	(= (time-to-walk s0 p2-0) 62)
	(= (time-to-walk p2-0 s0) 62)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 61)
	(= (time-to-walk p2-1 s2) 61)
	(= (time-to-walk s1 p2-1) 44)
	(= (time-to-walk p2-1 s1) 44)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 50)
	(= (time-to-drive s1 s0) 50)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 51)
	(= (time-to-drive s2 s0) 51)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 67)
	(= (time-to-drive s2 s1) 67)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at truck1 s1)
	(at truck3 s1)
	(at truck4 s0)
	(at truck5 s2)
	(at package1 s2)
	(at package2 s1)
	(at package3 s0)
	(at package4 s0)
	(at package5 s1)
	(at package6 s0)
	(at package7 s0)
	(at package8 s0)
	(at package9 s1)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 1  (driven))) (* 4  (walked))))

)
