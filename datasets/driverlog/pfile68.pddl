(define (problem DLOG-4-4-7)
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
	(at driver4 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	(at package4 s0)
	(at package5 s2)
	(at package6 s2)
	(at package7 s1)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 50)
	(= (time-to-walk p2-0 s2) 50)
	(= (time-to-walk s0 p2-0) 100)
	(= (time-to-walk p2-0 s0) 100)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 98)
	(= (time-to-walk p2-1 s2) 98)
	(= (time-to-walk s1 p2-1) 46)
	(= (time-to-walk p2-1 s1) 46)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 99)
	(= (time-to-drive s2 s0) 99)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 39)
	(= (time-to-drive s0 s1) 39)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 100)
	(= (time-to-drive s1 s2) 100)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s1)
	(at driver4 s2)
	(at truck1 s2)
	(at truck2 s0)
	(at truck3 s1)
	(at package1 s1)
	(at package2 s0)
	(at package3 s1)
	(at package4 s0)
	(at package5 s2)
	(at package6 s1)
	(at package7 s0)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 1  (driven))) (* 1  (walked))))

)
