(define (problem DLOG-1-2-5-204)
	(:domain driverlog)
	(:objects
	driver1 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p1-0 - location
	p1-3 - location
	p2-0 - location
	p3-0 - location
	)
	(:init
	(at driver1 s1)
	(at truck1 s3)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s2)
	(at package2 s2)
	(at package3 s2)
	(at package4 s3)
	(at package5 s3)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 9)
	(= (time-to-walk p1-0 s1) 9)
	(= (time-to-walk s0 p1-0) 6)
	(= (time-to-walk p1-0 s0) 6)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 13)
	(= (time-to-walk p1-3 s1) 13)
	(= (time-to-walk s3 p1-3) 13)
	(= (time-to-walk p1-3 s3) 13)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 3)
	(= (time-to-walk p2-0 s2) 3)
	(= (time-to-walk s0 p2-0) 7)
	(= (time-to-walk p2-0 s0) 7)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(= (time-to-walk s3 p3-0) 13)
	(= (time-to-walk p3-0 s3) 13)
	(= (time-to-walk s0 p3-0) 3)
	(= (time-to-walk p3-0 s0) 3)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 13)
	(= (time-to-drive s3 s1) 13)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 9)
	(= (time-to-drive s1 s0) 9)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 3)
	(= (time-to-drive s0 s2) 3)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 6)
	(= (time-to-drive s1 s2) 6)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 15)
	(= (time-to-drive s0 s3) 15)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at truck2 s3)
	(at package1 s2)
	(at package2 s2)
	(at package3 s2)
	(at package4 s1)
	(at package5 s2)
	))

(:metric minimize (+ (* 1 (total-time)) (* 2 (fuel-used))))

)
