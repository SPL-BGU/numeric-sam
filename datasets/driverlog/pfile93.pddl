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
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at package1 s2)
	(at package2 s2)
	(at package3 s0)
	(at package4 s0)
	(at package5 s2)
	(at package6 s1)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 84)
	(= (time-to-walk p1-0 s1) 84)
	(= (time-to-walk s0 p1-0) 23)
	(= (time-to-walk p1-0 s0) 23)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 74)
	(= (time-to-walk p1-2 s1) 74)
	(= (time-to-walk s2 p1-2) 52)
	(= (time-to-walk p1-2 s2) 52)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 62)
	(= (time-to-drive s1 s0) 62)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 43)
	(= (time-to-drive s2 s0) 43)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 50)
	(= (time-to-drive s1 s2) 50)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s2)
	(at truck1 s2)
	(at truck2 s1)
	(at package1 s2)
	(at package2 s2)
	(at package3 s1)
	(at package4 s2)
	(at package5 s1)
	(at package6 s1)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 2  (driven))) (* 4  (walked))))

)
