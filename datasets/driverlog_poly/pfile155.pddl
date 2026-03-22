(define (problem DLOG-5-3-5-155)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
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
	s3 - location
	s4 - location
	p2-0 - location
	p1-0 - location
	p1-2 - location
	p3-0 - location
	p3-2 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s1)
	(at driver4 s2)
	(at driver5 s0)
	(at truck1 s3)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s2)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s2)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s2)
	(at package2 s2)
	(at package3 s4)
	(at package4 s1)
	(at package5 s4)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 39)
	(= (time-to-walk p2-0 s2) 39)
	(= (time-to-walk s0 p2-0) 38)
	(= (time-to-walk p2-0 s0) 38)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 81)
	(= (time-to-walk p1-0 s1) 81)
	(= (time-to-walk s0 p1-0) 62)
	(= (time-to-walk p1-0 s0) 62)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 44)
	(= (time-to-walk p1-2 s1) 44)
	(= (time-to-walk s2 p1-2) 78)
	(= (time-to-walk p1-2 s2) 78)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(= (time-to-walk s3 p3-0) 5)
	(= (time-to-walk p3-0 s3) 5)
	(= (time-to-walk s0 p3-0) 73)
	(= (time-to-walk p3-0 s0) 73)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(= (time-to-walk s3 p3-2) 27)
	(= (time-to-walk p3-2 s3) 27)
	(= (time-to-walk s2 p3-2) 73)
	(= (time-to-walk p3-2 s2) 73)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 64)
	(= (time-to-drive s0 s2) 64)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 72)
	(= (time-to-drive s1 s2) 72)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 74)
	(= (time-to-drive s4 s2) 74)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 68)
	(= (time-to-drive s2 s3) 68)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 77)
	(= (time-to-drive s0 s1) 77)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 84)
	(= (time-to-drive s3 s1) 84)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 75)
	(= (time-to-drive s4 s0) 75)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver3 s1)
	(at driver4 s0)
	(at driver5 s3)
	(at truck1 s2)
	(at truck2 s4)
	(at truck3 s3)
	(at package2 s2)
	(at package3 s2)
	(at package4 s4)
	(at package5 s2)
	))

(:metric minimize (+ (* 1 (total-time)) (* 4 (fuel-used))))

)
