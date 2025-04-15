(define (problem DLOG-3-3-5)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
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
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s0)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at package1 s1)
	(at package2 s0)
	(at package3 s1)
	(at package4 s2)
	(at package5 s2)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 5)
	(= (time-to-walk p1-0 s1) 5)
	(= (time-to-walk s0 p1-0) 90)
	(= (time-to-walk p1-0 s0) 90)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 27)
	(= (time-to-walk p1-2 s1) 27)
	(= (time-to-walk s2 p1-2) 13)
	(= (time-to-walk p1-2 s2) 13)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 22)
	(= (time-to-walk p2-0 s2) 22)
	(= (time-to-walk s0 p2-0) 63)
	(= (time-to-walk p2-0 s0) 63)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 66)
	(= (time-to-drive s2 s0) 66)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 25)
	(= (time-to-drive s0 s1) 25)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 33)
	(= (time-to-drive s1 s2) 33)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver3 s1)
	(at truck1 s2)
	(at truck3 s0)
	(at package1 s1)
	(at package2 s2)
	(at package3 s2)
	(at package4 s0)
	(at package5 s0)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 3  (driven))) (* 2  (walked))))

)
