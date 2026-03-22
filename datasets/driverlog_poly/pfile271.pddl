(define (problem DLOG-3-2-3-271)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p2-1 - location
	p3-1 - location
	p3-2 - location
	p0-3 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s2)
	(at driver3 s3)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s3)
	(at package2 s3)
	(at package3 s2)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 39)
	(= (time-to-walk p2-1 s2) 39)
	(= (time-to-walk s1 p2-1) 25)
	(= (time-to-walk p2-1 s1) 25)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 26)
	(= (time-to-walk p3-1 s3) 26)
	(= (time-to-walk s1 p3-1) 26)
	(= (time-to-walk p3-1 s1) 26)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(= (time-to-walk s3 p3-2) 27)
	(= (time-to-walk p3-2 s3) 27)
	(= (time-to-walk s2 p3-2) 7)
	(= (time-to-walk p3-2 s2) 7)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 43)
	(= (time-to-walk p0-3 s0) 43)
	(= (time-to-walk s3 p0-3) 42)
	(= (time-to-walk p0-3 s3) 42)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 41)
	(= (time-to-drive s3 s2) 41)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 16)
	(= (time-to-drive s0 s3) 16)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 17)
	(= (time-to-drive s1 s3) 17)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 19)
	(= (time-to-drive s0 s1) 19)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 20)
	(= (time-to-drive s2 s1) 20)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver3 s2)
	(at truck1 s1)
	(at truck2 s1)
	(at package1 s2)
	(at package2 s0)
	(at package3 s2)
	))

(:metric minimize (+ (* 2 (total-time)) (* 2 (fuel-used))))

)
