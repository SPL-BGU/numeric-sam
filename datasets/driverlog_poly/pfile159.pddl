(define (problem DLOG-2-4-6-159)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
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
	p2-0 - location
	p2-3 - location
	p1-0 - location
	p1-2 - location
	p0-3 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s3)
	(at truck1 s3)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s3)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s3)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s3)
	(at package2 s2)
	(at package3 s3)
	(at package4 s1)
	(at package5 s3)
	(at package6 s2)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 31)
	(= (time-to-walk p2-0 s2) 31)
	(= (time-to-walk s0 p2-0) 2)
	(= (time-to-walk p2-0 s0) 2)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 28)
	(= (time-to-walk p2-3 s2) 28)
	(= (time-to-walk s3 p2-3) 12)
	(= (time-to-walk p2-3 s3) 12)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 24)
	(= (time-to-walk p1-0 s1) 24)
	(= (time-to-walk s0 p1-0) 20)
	(= (time-to-walk p1-0 s0) 20)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 29)
	(= (time-to-walk p1-2 s1) 29)
	(= (time-to-walk s2 p1-2) 6)
	(= (time-to-walk p1-2 s2) 6)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 29)
	(= (time-to-walk p0-3 s0) 29)
	(= (time-to-walk s3 p0-3) 27)
	(= (time-to-walk p0-3 s3) 27)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 2)
	(= (time-to-drive s1 s0) 2)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 8)
	(= (time-to-drive s0 s2) 8)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 4)
	(= (time-to-drive s1 s2) 4)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 12)
	(= (time-to-drive s2 s3) 12)
	(= (fuel-used) 0)
)
	(:goal (and
	(at truck1 s2)
	(at truck2 s0)
	(at package1 s3)
	(at package2 s0)
	(at package3 s2)
	(at package4 s3)
	(at package5 s0)
	(at package6 s3)
	))

(:metric minimize (+ (* 4 (total-time)) (* 3 (fuel-used))))

)
