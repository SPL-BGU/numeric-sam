(define (problem DLOG-4-2-4)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s0)
	(at driver4 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at package1 s1)
	(at package2 s2)
	(at package3 s1)
	(at package4 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 13)
	(= (time-to-walk p0-1 s0) 13)
	(= (time-to-walk s1 p0-1) 99)
	(= (time-to-walk p0-1 s1) 99)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 32)
	(= (time-to-walk p1-2 s1) 32)
	(= (time-to-walk s2 p1-2) 40)
	(= (time-to-walk p1-2 s2) 40)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 25)
	(= (time-to-walk p2-0 s2) 25)
	(= (time-to-walk s0 p2-0) 36)
	(= (time-to-walk p2-0 s0) 36)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 94)
	(= (time-to-drive s2 s1) 94)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 57)
	(= (time-to-drive s0 s2) 57)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s0)
	(at driver3 s2)
	(at driver4 s2)
	(at truck1 s1)
	(at truck2 s2)
	(at package2 s1)
	(at package3 s1)
	(at package4 s2)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 4  (driven))) (* 1  (walked))))

)
