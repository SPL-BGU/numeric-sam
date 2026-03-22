(define (problem DLOG-3-3-1-247)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p0-2 - location
	p1-0 - location
	p1-2 - location
	p2-3 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s3)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s0)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s2)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 17)
	(= (time-to-walk p0-2 s0) 17)
	(= (time-to-walk s2 p0-2) 11)
	(= (time-to-walk p0-2 s2) 11)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 33)
	(= (time-to-walk p1-0 s1) 33)
	(= (time-to-walk s0 p1-0) 15)
	(= (time-to-walk p1-0 s0) 15)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 17)
	(= (time-to-walk p1-2 s1) 17)
	(= (time-to-walk s2 p1-2) 35)
	(= (time-to-walk p1-2 s2) 35)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 26)
	(= (time-to-walk p2-3 s2) 26)
	(= (time-to-walk s3 p2-3) 23)
	(= (time-to-walk p2-3 s3) 23)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 11)
	(= (time-to-drive s0 s2) 11)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 39)
	(= (time-to-drive s2 s3) 39)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 52)
	(= (time-to-drive s1 s0) 52)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 11)
	(= (time-to-drive s3 s0) 11)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 5)
	(= (time-to-drive s3 s1) 5)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s1)
	(at truck1 s2)
	(at truck2 s1)
	(at package1 s3)
	))

(:metric minimize (+ (* 1 (total-time)) (* 1 (fuel-used))))

)
