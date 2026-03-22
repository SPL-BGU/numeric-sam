(define (problem DLOG-3-5-2-189)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	package1 - obj
	package2 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p1-0 - location
	p1-2 - location
	p0-2 - location
	p3-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s2)
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
	(at truck4 s1)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s0)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s2)
	(at package2 s3)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 16)
	(= (time-to-walk p1-0 s1) 16)
	(= (time-to-walk s0 p1-0) 13)
	(= (time-to-walk p1-0 s0) 13)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 28)
	(= (time-to-walk p1-2 s1) 28)
	(= (time-to-walk s2 p1-2) 69)
	(= (time-to-walk p1-2 s2) 69)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 40)
	(= (time-to-walk p0-2 s0) 40)
	(= (time-to-walk s2 p0-2) 48)
	(= (time-to-walk p0-2 s2) 48)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 40)
	(= (time-to-walk p3-1 s3) 40)
	(= (time-to-walk s1 p3-1) 53)
	(= (time-to-walk p3-1 s1) 53)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 53)
	(= (time-to-drive s0 s2) 53)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 52)
	(= (time-to-drive s1 s2) 52)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 62)
	(= (time-to-drive s2 s3) 62)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 4)
	(= (time-to-drive s0 s1) 4)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 67)
	(= (time-to-drive s3 s1) 67)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s3)
	(at driver2 s3)
	(at driver3 s3)
	(at truck1 s1)
	(at truck2 s3)
	(at truck3 s2)
	(at truck4 s3)
	(at truck5 s0)
	(at package1 s2)
	(at package2 s3)
	))

(:metric minimize (+ (* 2 (total-time)) (* 3 (fuel-used))))

)
