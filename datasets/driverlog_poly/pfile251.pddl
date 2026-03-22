(define (problem DLOG-4-5-6-251)
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
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
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
	(at driver2 s0)
	(at driver3 s3)
	(at driver4 s0)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s2)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s2)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s1)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s2)
	(at package2 s3)
	(at package3 s3)
	(at package4 s2)
	(at package5 s2)
	(at package6 s0)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 46)
	(= (time-to-walk p2-1 s2) 46)
	(= (time-to-walk s1 p2-1) 69)
	(= (time-to-walk p2-1 s1) 69)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 23)
	(= (time-to-walk p3-1 s3) 23)
	(= (time-to-walk s1 p3-1) 12)
	(= (time-to-walk p3-1 s1) 12)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(= (time-to-walk s3 p3-2) 71)
	(= (time-to-walk p3-2 s3) 71)
	(= (time-to-walk s2 p3-2) 5)
	(= (time-to-walk p3-2 s2) 5)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 17)
	(= (time-to-walk p0-3 s0) 17)
	(= (time-to-walk s3 p0-3) 3)
	(= (time-to-walk p0-3 s3) 3)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 39)
	(= (time-to-drive s3 s1) 39)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 75)
	(= (time-to-drive s0 s3) 75)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 7)
	(= (time-to-drive s2 s3) 7)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 9)
	(= (time-to-drive s1 s2) 9)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 72)
	(= (time-to-drive s1 s0) 72)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 75)
	(= (time-to-drive s2 s0) 75)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver3 s3)
	(at driver4 s2)
	(at truck1 s1)
	(at truck2 s3)
	(at truck4 s2)
	(at package1 s1)
	(at package2 s1)
	(at package3 s1)
	(at package4 s1)
	(at package5 s3)
	(at package6 s0)
	))

(:metric minimize (+ (* 2 (total-time)) (* 1 (fuel-used))))

)
