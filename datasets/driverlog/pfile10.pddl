(define (problem DLOG-2-5-5)
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
	s0 - location
	s1 - location
	s2 - location
	p1-0 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s2)
	(empty truck5)
	(at package1 s1)
	(at package2 s1)
	(at package3 s2)
	(at package4 s2)
	(at package5 s0)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 23)
	(= (time-to-walk p1-0 s1) 23)
	(= (time-to-walk s0 p1-0) 42)
	(= (time-to-walk p1-0 s0) 42)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 23)
	(= (time-to-walk p1-2 s1) 23)
	(= (time-to-walk s2 p1-2) 60)
	(= (time-to-walk p1-2 s2) 60)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 84)
	(= (time-to-walk p2-0 s2) 84)
	(= (time-to-walk s0 p2-0) 10)
	(= (time-to-walk p2-0 s0) 10)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 68)
	(= (time-to-drive s0 s1) 68)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 99)
	(= (time-to-drive s0 s2) 99)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 64)
	(= (time-to-drive s1 s2) 64)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at truck1 s0)
	(at package1 s1)
	(at package2 s2)
	(at package3 s2)
	(at package4 s0)
	(at package5 s2)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 1  (driven))) (* 4  (walked))))

)
