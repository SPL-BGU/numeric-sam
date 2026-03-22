(define (problem DLOG-1-5-7-226)
	(:domain driverlog)
	(:objects
	driver1 - driver
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
	package7 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p1-0 - location
	p1-2 - location
	p1-3 - location
	p2-0 - location
	)
	(:init
	(at driver1 s0)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s3)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s2)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s3)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s3)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s2)
	(at package2 s0)
	(at package3 s3)
	(at package4 s0)
	(at package5 s2)
	(at package6 s0)
	(at package7 s3)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 20)
	(= (time-to-walk p1-0 s1) 20)
	(= (time-to-walk s0 p1-0) 19)
	(= (time-to-walk p1-0 s0) 19)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 38)
	(= (time-to-walk p1-2 s1) 38)
	(= (time-to-walk s2 p1-2) 53)
	(= (time-to-walk p1-2 s2) 53)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 39)
	(= (time-to-walk p1-3 s1) 39)
	(= (time-to-walk s3 p1-3) 46)
	(= (time-to-walk p1-3 s3) 46)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 75)
	(= (time-to-walk p2-0 s2) 75)
	(= (time-to-walk s0 p2-0) 49)
	(= (time-to-walk p2-0 s0) 49)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 49)
	(= (time-to-drive s2 s1) 49)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 32)
	(= (time-to-drive s1 s0) 32)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 65)
	(= (time-to-drive s2 s0) 65)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 59)
	(= (time-to-drive s3 s0) 59)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 4)
	(= (time-to-drive s1 s3) 4)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 63)
	(= (time-to-drive s2 s3) 63)
	(= (fuel-used) 0)
)
	(:goal (and
	(at truck3 s1)
	(at truck4 s3)
	(at truck5 s3)
	(at package1 s2)
	(at package2 s1)
	(at package3 s2)
	(at package4 s1)
	(at package5 s1)
	(at package6 s0)
	(at package7 s0)
	))

(:metric minimize (+ (* 1 (total-time)) (* 4 (fuel-used))))

)
