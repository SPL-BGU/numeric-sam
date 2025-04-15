(define (problem DLOG-4-4-4)
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
	s0 - location
	s1 - location
	s2 - location
	p0-2 - location
	p1-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s1)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at package1 s1)
	(at package2 s0)
	(at package3 s1)
	(at package4 s2)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 62)
	(= (time-to-walk p0-2 s0) 62)
	(= (time-to-walk s2 p0-2) 48)
	(= (time-to-walk p0-2 s2) 48)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 7)
	(= (time-to-walk p1-0 s1) 7)
	(= (time-to-walk s0 p1-0) 86)
	(= (time-to-walk p1-0 s0) 86)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 92)
	(= (time-to-walk p2-1 s2) 92)
	(= (time-to-walk s1 p2-1) 40)
	(= (time-to-walk p2-1 s1) 40)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 59)
	(= (time-to-drive s2 s0) 59)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 10)
	(= (time-to-drive s0 s1) 10)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 99)
	(= (time-to-drive s2 s1) 99)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s2)
	(at driver4 s0)
	(at truck2 s2)
	(at truck3 s1)
	(at truck4 s2)
	(at package1 s1)
	(at package2 s1)
	(at package3 s1)
	(at package4 s0)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 3  (driven))) (* 4  (walked))))

)
