(define (problem DLOG-5-5-1-212)
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
	truck4 - truck
	truck5 - truck
	package1 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p1-3 - location
	p0-1 - location
	p0-3 - location
	p2-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s3)
	(at driver3 s2)
	(at driver4 s3)
	(at driver5 s2)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s3)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s0)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s0)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s1)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 1)
	(= (time-to-walk p1-3 s1) 1)
	(= (time-to-walk s3 p1-3) 5)
	(= (time-to-walk p1-3 s3) 5)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 7)
	(= (time-to-walk p0-1 s0) 7)
	(= (time-to-walk s1 p0-1) 1)
	(= (time-to-walk p0-1 s1) 1)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 3)
	(= (time-to-walk p0-3 s0) 3)
	(= (time-to-walk s3 p0-3) 7)
	(= (time-to-walk p0-3 s3) 7)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 1)
	(= (time-to-walk p2-0 s2) 1)
	(= (time-to-walk s0 p2-0) 3)
	(= (time-to-walk p2-0 s0) 3)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 5)
	(= (time-to-drive s1 s0) 5)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 6)
	(= (time-to-drive s3 s0) 6)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 4)
	(= (time-to-drive s0 s2) 4)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 2)
	(= (time-to-drive s2 s3) 2)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 6)
	(= (time-to-drive s2 s1) 6)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 6)
	(= (time-to-drive s3 s1) 6)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s0)
	(at driver4 s1)
	(at driver5 s2)
	(at truck1 s1)
	(at truck2 s1)
	(at truck3 s0)
	(at truck4 s1)
	(at package1 s1)
	))

(:metric minimize (+ (* 1 (total-time)) (* 2 (fuel-used))))

)
