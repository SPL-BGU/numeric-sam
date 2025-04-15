(define (problem DLOG-3-4-7)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
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
	s0 - location
	s1 - location
	s2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s2)
	(at driver3 s2)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at package1 s2)
	(at package2 s0)
	(at package3 s0)
	(at package4 s0)
	(at package5 s0)
	(at package6 s2)
	(at package7 s2)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 56)
	(= (time-to-walk p2-0 s2) 56)
	(= (time-to-walk s0 p2-0) 26)
	(= (time-to-walk p2-0 s0) 26)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 94)
	(= (time-to-walk p2-1 s2) 94)
	(= (time-to-walk s1 p2-1) 50)
	(= (time-to-walk p2-1 s1) 50)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 100)
	(= (time-to-drive s2 s0) 100)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 98)
	(= (time-to-drive s0 s1) 98)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 46)
	(= (time-to-drive s1 s2) 46)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s1)
	(at truck1 s2)
	(at truck2 s2)
	(at truck3 s0)
	(at truck4 s1)
	(at package1 s2)
	(at package2 s1)
	(at package3 s0)
	(at package4 s1)
	(at package5 s0)
	(at package6 s2)
	(at package7 s1)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 2  (driven))) (* 4  (walked))))

)
