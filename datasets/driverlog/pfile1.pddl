(define (problem DLOG-4-5-7)
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
	package5 - obj
	package6 - obj
	package7 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s0)
	(at driver4 s0)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s0)
	(empty truck5)
	(at package1 s1)
	(at package2 s2)
	(at package3 s2)
	(at package4 s1)
	(at package5 s0)
	(at package6 s2)
	(at package7 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 49)
	(= (time-to-walk p0-1 s0) 49)
	(= (time-to-walk s1 p0-1) 86)
	(= (time-to-walk p0-1 s1) 86)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 69)
	(= (time-to-walk p0-2 s0) 69)
	(= (time-to-walk s2 p0-2) 51)
	(= (time-to-walk p0-2 s2) 51)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 92)
	(= (time-to-walk p2-1 s2) 92)
	(= (time-to-walk s1 p2-1) 88)
	(= (time-to-walk p2-1 s1) 88)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 40)
	(= (time-to-drive s1 s0) 40)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 93)
	(= (time-to-drive s2 s0) 93)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s0)
	(at driver4 s2)
	(at truck2 s1)
	(at truck4 s0)
	(at truck5 s2)
	(at package1 s0)
	(at package2 s2)
	(at package3 s1)
	(at package6 s2)
	(at package7 s2)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 2  (driven))) (* 3  (walked))))

)
