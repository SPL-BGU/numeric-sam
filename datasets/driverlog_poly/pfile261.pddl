(define (problem DLOG-1-1-2-261)
	(:domain driverlog)
	(:objects
	driver1 - driver
	truck1 - truck
	package1 - obj
	package2 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p1-0 - location
	p1-2 - location
	p1-3 - location
	p2-3 - location
	)
	(:init
	(at driver1 s3)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at package1 s2)
	(at package2 s0)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 61)
	(= (time-to-walk p1-0 s1) 61)
	(= (time-to-walk s0 p1-0) 60)
	(= (time-to-walk p1-0 s0) 60)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 12)
	(= (time-to-walk p1-2 s1) 12)
	(= (time-to-walk s2 p1-2) 38)
	(= (time-to-walk p1-2 s2) 38)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 50)
	(= (time-to-walk p1-3 s1) 50)
	(= (time-to-walk s3 p1-3) 26)
	(= (time-to-walk p1-3 s3) 26)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 14)
	(= (time-to-walk p2-3 s2) 14)
	(= (time-to-walk s3 p2-3) 53)
	(= (time-to-walk p2-3 s3) 53)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 4)
	(= (time-to-drive s1 s2) 4)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 7)
	(= (time-to-drive s1 s3) 7)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 24)
	(= (time-to-drive s2 s3) 24)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 36)
	(= (time-to-drive s1 s0) 36)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 44)
	(= (time-to-drive s2 s0) 44)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at package1 s1)
	(at package2 s3)
	))

(:metric minimize (+ (* 2 (total-time)) (* 2 (fuel-used))))

)
