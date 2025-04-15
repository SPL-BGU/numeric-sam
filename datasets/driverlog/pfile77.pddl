(define (problem DLOG-4-4-5)
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
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s0)
	(at driver4 s2)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at package1 s2)
	(at package2 s1)
	(at package3 s0)
	(at package4 s1)
	(at package5 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 99)
	(= (time-to-walk p0-1 s0) 99)
	(= (time-to-walk s1 p0-1) 94)
	(= (time-to-walk p0-1 s1) 94)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 84)
	(= (time-to-walk p1-2 s1) 84)
	(= (time-to-walk s2 p1-2) 1)
	(= (time-to-walk p1-2 s2) 1)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 52)
	(= (time-to-walk p2-0 s2) 52)
	(= (time-to-walk s0 p2-0) 19)
	(= (time-to-walk p2-0 s0) 19)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 100)
	(= (time-to-drive s2 s0) 100)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 39)
	(= (time-to-drive s0 s1) 39)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 40)
	(= (time-to-drive s2 s1) 40)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s2)
	(at truck1 s1)
	(at truck3 s0)
	(at truck4 s0)
	(at package1 s0)
	(at package2 s0)
	(at package3 s1)
	(at package4 s2)
	(at package5 s0)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 1  (driven))) (* 3  (walked))))

)
