(define (problem DLOG-4-5-3)
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
	s0 - location
	s1 - location
	s2 - location
	p0-2 - location
	p1-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s0)
	(at driver4 s0)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at truck5 s2)
	(empty truck5)
	(at package1 s2)
	(at package2 s0)
	(at package3 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 61)
	(= (time-to-walk p0-2 s0) 61)
	(= (time-to-walk s2 p0-2) 44)
	(= (time-to-walk p0-2 s2) 44)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 13)
	(= (time-to-walk p1-0 s1) 13)
	(= (time-to-walk s0 p1-0) 15)
	(= (time-to-walk p1-0 s0) 15)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 51)
	(= (time-to-walk p2-1 s2) 51)
	(= (time-to-walk s1 p2-1) 97)
	(= (time-to-walk p2-1 s1) 97)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 97)
	(= (time-to-drive s0 s1) 97)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 62)
	(= (time-to-drive s2 s1) 62)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver3 s1)
	(at driver4 s2)
	(at truck2 s0)
	(at truck4 s0)
	(at truck5 s2)
	(at package1 s2)
	(at package2 s2)
	(at package3 s0)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 1  (driven))) (* 2  (walked))))

)
