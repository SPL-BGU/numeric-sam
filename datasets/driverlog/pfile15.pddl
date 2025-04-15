(define (problem DLOG-3-5-7)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
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
	package6 - obj
	package7 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-2 - location
	p1-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s2)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at truck5 s1)
	(empty truck5)
	(at package1 s2)
	(at package2 s1)
	(at package3 s0)
	(at package4 s2)
	(at package5 s1)
	(at package6 s0)
	(at package7 s2)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 4)
	(= (time-to-walk p0-2 s0) 4)
	(= (time-to-walk s2 p0-2) 93)
	(= (time-to-walk p0-2 s2) 93)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 25)
	(= (time-to-walk p1-0 s1) 25)
	(= (time-to-walk s0 p1-0) 74)
	(= (time-to-walk p1-0 s0) 74)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 61)
	(= (time-to-drive s1 s0) 61)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 22)
	(= (time-to-drive s2 s0) 22)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 68)
	(= (time-to-drive s1 s2) 68)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s1)
	(at truck1 s0)
	(at truck2 s1)
	(at truck3 s1)
	(at truck4 s2)
	(at package1 s0)
	(at package2 s0)
	(at package3 s2)
	(at package4 s2)
	(at package5 s2)
	(at package6 s1)
	(at package7 s2)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 4  (driven))) (* 4  (walked))))

)
