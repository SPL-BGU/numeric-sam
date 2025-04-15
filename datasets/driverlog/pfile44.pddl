(define (problem DLOG-2-4-7)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
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
	(at driver1 s2)
	(at driver2 s1)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at package1 s1)
	(at package2 s0)
	(at package3 s0)
	(at package4 s2)
	(at package5 s0)
	(at package6 s0)
	(at package7 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 88)
	(= (time-to-walk p0-1 s0) 88)
	(= (time-to-walk s1 p0-1) 9)
	(= (time-to-walk p0-1 s1) 9)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 11)
	(= (time-to-walk p0-2 s0) 11)
	(= (time-to-walk s2 p0-2) 53)
	(= (time-to-walk p0-2 s2) 53)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 87)
	(= (time-to-walk p1-2 s1) 87)
	(= (time-to-walk s2 p1-2) 96)
	(= (time-to-walk p1-2 s2) 96)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 76)
	(= (time-to-drive s1 s0) 76)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 68)
	(= (time-to-drive s2 s0) 68)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 22)
	(= (time-to-drive s1 s2) 22)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s1)
	(at truck1 s2)
	(at truck2 s1)
	(at truck4 s0)
	(at package1 s0)
	(at package2 s1)
	(at package3 s0)
	(at package4 s0)
	(at package5 s2)
	(at package6 s1)
	(at package7 s2)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 1  (driven))) (* 1  (walked))))

)
