(define (problem DLOG-4-3-7)
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
	package6 - obj
	package7 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s0)
	(at driver4 s1)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at package1 s2)
	(at package2 s2)
	(at package3 s2)
	(at package4 s2)
	(at package5 s1)
	(at package6 s1)
	(at package7 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 7)
	(= (time-to-walk p0-1 s0) 7)
	(= (time-to-walk s1 p0-1) 74)
	(= (time-to-walk p0-1 s1) 74)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 98)
	(= (time-to-walk p0-2 s0) 98)
	(= (time-to-walk s2 p0-2) 48)
	(= (time-to-walk p0-2 s2) 48)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 19)
	(= (time-to-walk p1-2 s1) 19)
	(= (time-to-walk s2 p1-2) 85)
	(= (time-to-walk p1-2 s2) 85)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 21)
	(= (time-to-drive s1 s0) 21)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 44)
	(= (time-to-drive s2 s1) 44)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 48)
	(= (time-to-drive s0 s2) 48)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at truck1 s1)
	(at truck2 s2)
	(at truck3 s1)
	(at package1 s1)
	(at package2 s0)
	(at package3 s1)
	(at package4 s2)
	(at package5 s2)
	(at package6 s2)
	(at package7 s1)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 2  (driven))) (* 4  (walked))))

)
