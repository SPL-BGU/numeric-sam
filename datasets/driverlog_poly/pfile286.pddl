(define (problem DLOG-1-1-3-286)
	(:domain driverlog)
	(:objects
	driver1 - driver
	truck1 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p1-2 - location
	p2-3 - location
	p0-2 - location
	p3-0 - location
	p3-1 - location
	)
	(:init
	(at driver1 s3)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at package1 s0)
	(at package2 s3)
	(at package3 s0)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 3)
	(= (time-to-walk p1-2 s1) 3)
	(= (time-to-walk s2 p1-2) 3)
	(= (time-to-walk p1-2 s2) 3)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 4)
	(= (time-to-walk p2-3 s2) 4)
	(= (time-to-walk s3 p2-3) 8)
	(= (time-to-walk p2-3 s3) 8)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 9)
	(= (time-to-walk p0-2 s0) 9)
	(= (time-to-walk s2 p0-2) 1)
	(= (time-to-walk p0-2 s2) 1)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(= (time-to-walk s3 p3-0) 4)
	(= (time-to-walk p3-0 s3) 4)
	(= (time-to-walk s0 p3-0) 8)
	(= (time-to-walk p3-0 s0) 8)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 7)
	(= (time-to-walk p3-1 s3) 7)
	(= (time-to-walk s1 p3-1) 8)
	(= (time-to-walk p3-1 s1) 8)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 1)
	(= (time-to-drive s0 s1) 1)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 2)
	(= (time-to-drive s3 s1) 2)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 1)
	(= (time-to-drive s1 s2) 1)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 10)
	(= (time-to-drive s2 s0) 10)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 10)
	(= (time-to-drive s3 s0) 10)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at package1 s0)
	(at package2 s3)
	(at package3 s0)
	))

(:metric minimize (+ (* 3 (total-time)) (* 4 (fuel-used))))

)
