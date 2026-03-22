(define (problem DLOG-4-5-2-250)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
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
	p3-0 - location
	p1-2 - location
	p1-3 - location
	p2-0 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s2)
	(at driver4 s0)
	(at truck1 s3)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s2)
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
	(at package1 s3)
	(at package2 s2)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(= (time-to-walk s3 p3-0) 31)
	(= (time-to-walk p3-0 s3) 31)
	(= (time-to-walk s0 p3-0) 4)
	(= (time-to-walk p3-0 s0) 4)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 46)
	(= (time-to-walk p1-2 s1) 46)
	(= (time-to-walk s2 p1-2) 53)
	(= (time-to-walk p1-2 s2) 53)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 25)
	(= (time-to-walk p1-3 s1) 25)
	(= (time-to-walk s3 p1-3) 2)
	(= (time-to-walk p1-3 s3) 2)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 32)
	(= (time-to-walk p2-0 s2) 32)
	(= (time-to-walk s0 p2-0) 70)
	(= (time-to-walk p2-0 s0) 70)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 75)
	(= (time-to-drive s1 s0) 75)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 59)
	(= (time-to-drive s2 s0) 59)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 7)
	(= (time-to-drive s2 s1) 7)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 3)
	(= (time-to-drive s3 s1) 3)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 23)
	(= (time-to-drive s0 s3) 23)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 35)
	(= (time-to-drive s2 s3) 35)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s3)
	(at driver4 s3)
	(at truck2 s0)
	(at truck3 s0)
	(at package1 s3)
	))

(:metric minimize (+ (* 2 (total-time)) (* 2 (fuel-used))))

)
