(define (problem DLOG-4-1-6-205)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p2-0 - location
	p1-0 - location
	p1-2 - location
	p3-0 - location
	p3-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s2)
	(at driver3 s3)
	(at driver4 s2)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at package1 s1)
	(at package2 s1)
	(at package3 s0)
	(at package4 s3)
	(at package5 s0)
	(at package6 s0)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 28)
	(= (time-to-walk p2-0 s2) 28)
	(= (time-to-walk s0 p2-0) 28)
	(= (time-to-walk p2-0 s0) 28)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 36)
	(= (time-to-walk p1-0 s1) 36)
	(= (time-to-walk s0 p1-0) 54)
	(= (time-to-walk p1-0 s0) 54)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 53)
	(= (time-to-walk p1-2 s1) 53)
	(= (time-to-walk s2 p1-2) 60)
	(= (time-to-walk p1-2 s2) 60)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(= (time-to-walk s3 p3-0) 56)
	(= (time-to-walk p3-0 s3) 56)
	(= (time-to-walk s0 p3-0) 13)
	(= (time-to-walk p3-0 s0) 13)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 43)
	(= (time-to-walk p3-1 s3) 43)
	(= (time-to-walk s1 p3-1) 17)
	(= (time-to-walk p3-1 s1) 17)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 38)
	(= (time-to-drive s2 s0) 38)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 26)
	(= (time-to-drive s0 s3) 26)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 63)
	(= (time-to-drive s1 s3) 63)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 32)
	(= (time-to-drive s2 s3) 32)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 33)
	(= (time-to-drive s0 s1) 33)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 21)
	(= (time-to-drive s2 s1) 21)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s3)
	(at driver4 s1)
	(at truck1 s1)
	(at package1 s1)
	(at package2 s3)
	(at package3 s0)
	(at package4 s3)
	(at package5 s2)
	(at package6 s1)
	))

(:metric minimize (+ (* 3 (total-time)) (* 3 (fuel-used))))

)
