(define (problem DLOG-3-3-4-256)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p1-0 - location
	p2-0 - location
	p3-0 - location
	)
	(:init
	(at driver1 s3)
	(at driver2 s0)
	(at driver3 s2)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s3)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s3)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s3)
	(at package2 s3)
	(at package3 s0)
	(at package4 s2)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 1)
	(= (time-to-walk p1-0 s1) 1)
	(= (time-to-walk s0 p1-0) 33)
	(= (time-to-walk p1-0 s0) 33)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 42)
	(= (time-to-walk p2-0 s2) 42)
	(= (time-to-walk s0 p2-0) 6)
	(= (time-to-walk p2-0 s0) 6)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(= (time-to-walk s3 p3-0) 46)
	(= (time-to-walk p3-0 s3) 46)
	(= (time-to-walk s0 p3-0) 13)
	(= (time-to-walk p3-0 s0) 13)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 1)
	(= (time-to-drive s2 s0) 1)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 33)
	(= (time-to-drive s0 s3) 33)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 11)
	(= (time-to-drive s0 s1) 11)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 5)
	(= (time-to-drive s3 s1) 5)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 36)
	(= (time-to-drive s1 s2) 36)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 31)
	(= (time-to-drive s3 s2) 31)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s1)
	(at driver3 s2)
	(at truck2 s0)
	(at truck3 s2)
	(at package1 s2)
	(at package3 s0)
	(at package4 s0)
	))

(:metric minimize (+ (* 2 (total-time)) (* 4 (fuel-used))))

)
