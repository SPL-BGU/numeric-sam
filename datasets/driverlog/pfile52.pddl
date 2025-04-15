(define (problem DLOG-3-5-6)
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
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-2 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s2)
	(at driver3 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at truck5 s1)
	(empty truck5)
	(at package1 s2)
	(at package2 s0)
	(at package3 s0)
	(at package4 s0)
	(at package5 s1)
	(at package6 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 7)
	(= (time-to-walk p0-1 s0) 7)
	(= (time-to-walk s1 p0-1) 36)
	(= (time-to-walk p0-1 s1) 36)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 37)
	(= (time-to-walk p1-2 s1) 37)
	(= (time-to-walk s2 p1-2) 30)
	(= (time-to-walk p1-2 s2) 30)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 60)
	(= (time-to-drive s2 s0) 60)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 26)
	(= (time-to-drive s0 s1) 26)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 56)
	(= (time-to-drive s1 s2) 56)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s2)
	(at truck5 s0)
	(at package1 s2)
	(at package2 s2)
	(at package3 s0)
	(at package4 s0)
	(at package5 s2)
	(at package6 s1)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 3  (driven))) (* 3  (walked))))

)
