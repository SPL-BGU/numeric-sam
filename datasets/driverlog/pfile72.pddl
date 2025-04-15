(define (problem DLOG-4-3-5)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
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
	p0-1 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s1)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at package1 s1)
	(at package2 s2)
	(at package3 s2)
	(at package4 s0)
	(at package5 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 84)
	(= (time-to-walk p0-1 s0) 84)
	(= (time-to-walk s1 p0-1) 36)
	(= (time-to-walk p0-1 s1) 36)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 14)
	(= (time-to-walk p2-0 s2) 14)
	(= (time-to-walk s0 p2-0) 46)
	(= (time-to-walk p2-0 s0) 46)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 79)
	(= (time-to-walk p2-1 s2) 79)
	(= (time-to-walk s1 p2-1) 85)
	(= (time-to-walk p2-1 s1) 85)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 66)
	(= (time-to-drive s2 s0) 66)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 95)
	(= (time-to-drive s0 s1) 95)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 80)
	(= (time-to-drive s1 s2) 80)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver3 s1)
	(at truck1 s2)
	(at truck2 s2)
	(at truck3 s2)
	(at package1 s1)
	(at package2 s2)
	(at package3 s0)
	(at package4 s1)
	(at package5 s2)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 2  (driven))) (* 4  (walked))))

)
