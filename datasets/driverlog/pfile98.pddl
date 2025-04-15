(define (problem DLOG-4-5-4)
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
	truck5 - truck
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
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s2)
	(at driver4 s0)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s0)
	(empty truck5)
	(at package1 s2)
	(at package2 s2)
	(at package3 s1)
	(at package4 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 18)
	(= (time-to-walk p0-2 s0) 18)
	(= (time-to-walk s2 p0-2) 84)
	(= (time-to-walk p0-2 s2) 84)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 22)
	(= (time-to-walk p1-0 s1) 22)
	(= (time-to-walk s0 p1-0) 77)
	(= (time-to-walk p1-0 s0) 77)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 49)
	(= (time-to-walk p2-1 s2) 49)
	(= (time-to-walk s1 p2-1) 55)
	(= (time-to-walk p2-1 s1) 55)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 18)
	(= (time-to-drive s0 s1) 18)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 84)
	(= (time-to-drive s2 s1) 84)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 22)
	(= (time-to-drive s0 s2) 22)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s1)
	(at driver4 s1)
	(at truck1 s0)
	(at truck4 s0)
	(at truck5 s2)
	(at package1 s0)
	(at package2 s0)
	(at package3 s2)
	(at package4 s2)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 4  (driven))) (* 1  (walked))))

)
