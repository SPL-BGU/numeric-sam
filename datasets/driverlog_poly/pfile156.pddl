(define (problem DLOG-4-2-6-156)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
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
	p1-3 - location
	p0-1 - location
	p0-3 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s3)
	(at driver3 s2)
	(at driver4 s2)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s3)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s0)
	(at package2 s3)
	(at package3 s1)
	(at package4 s2)
	(at package5 s2)
	(at package6 s1)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 93)
	(= (time-to-walk p1-3 s1) 93)
	(= (time-to-walk s3 p1-3) 60)
	(= (time-to-walk p1-3 s3) 60)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 64)
	(= (time-to-walk p0-1 s0) 64)
	(= (time-to-walk s1 p0-1) 19)
	(= (time-to-walk p0-1 s1) 19)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 96)
	(= (time-to-walk p0-3 s0) 96)
	(= (time-to-walk s3 p0-3) 98)
	(= (time-to-walk p0-3 s3) 98)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 43)
	(= (time-to-drive s0 s3) 43)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 76)
	(= (time-to-drive s2 s3) 76)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 56)
	(= (time-to-drive s0 s1) 56)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 78)
	(= (time-to-drive s0 s2) 78)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 23)
	(= (time-to-drive s1 s2) 23)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s2)
	(at driver3 s0)
	(at driver4 s1)
	(at truck1 s3)
	(at truck2 s3)
	(at package1 s1)
	(at package2 s1)
	(at package3 s0)
	(at package4 s2)
	(at package5 s3)
	(at package6 s3)
	))

(:metric minimize (+ (* 3 (total-time)) (* 4 (fuel-used))))

)
