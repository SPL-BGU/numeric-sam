(define (problem DLOG-4-2-1-293)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p1-0 - location
	p2-0 - location
	p2-1 - location
	p2-3 - location
	p3-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s3)
	(at driver4 s0)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s2)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 56)
	(= (time-to-walk p1-0 s1) 56)
	(= (time-to-walk s0 p1-0) 17)
	(= (time-to-walk p1-0 s0) 17)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 18)
	(= (time-to-walk p2-0 s2) 18)
	(= (time-to-walk s0 p2-0) 18)
	(= (time-to-walk p2-0 s0) 18)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 52)
	(= (time-to-walk p2-1 s2) 52)
	(= (time-to-walk s1 p2-1) 10)
	(= (time-to-walk p2-1 s1) 10)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 14)
	(= (time-to-walk p2-3 s2) 14)
	(= (time-to-walk s3 p2-3) 10)
	(= (time-to-walk p2-3 s3) 10)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(= (time-to-walk s3 p3-0) 10)
	(= (time-to-walk p3-0 s3) 10)
	(= (time-to-walk s0 p3-0) 51)
	(= (time-to-walk p3-0 s0) 51)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 38)
	(= (time-to-drive s2 s1) 38)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 16)
	(= (time-to-drive s3 s1) 16)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 13)
	(= (time-to-drive s2 s3) 13)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 19)
	(= (time-to-drive s1 s0) 19)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 57)
	(= (time-to-drive s3 s0) 57)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s2)
	(at driver3 s3)
	(at driver4 s1)
	(at truck1 s1)
	(at truck2 s1)
	(at package1 s3)
	))

(:metric minimize (+ (* 1 (total-time)) (* 3 (fuel-used))))

)
