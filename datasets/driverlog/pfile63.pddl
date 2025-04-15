(define (problem DLOG-2-2-6)
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
	s0 - location
	s1 - location
	s2 - location
	p1-0 - location
	p1-2 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at package1 s2)
	(at package2 s2)
	(at package3 s0)
	(at package4 s0)
	(at package5 s1)
	(at package6 s0)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 53)
	(= (time-to-walk p1-0 s1) 53)
	(= (time-to-walk s0 p1-0) 92)
	(= (time-to-walk p1-0 s0) 92)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 33)
	(= (time-to-walk p1-2 s1) 33)
	(= (time-to-walk s2 p1-2) 5)
	(= (time-to-walk p1-2 s2) 5)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 38)
	(= (time-to-drive s0 s1) 38)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 15)
	(= (time-to-drive s2 s1) 15)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 29)
	(= (time-to-drive s0 s2) 29)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at truck1 s1)
	(at truck2 s2)
	(at package1 s0)
	(at package2 s1)
	(at package3 s0)
	(at package4 s1)
	(at package5 s2)
	(at package6 s2)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 3  (driven))) (* 4  (walked))))

)
