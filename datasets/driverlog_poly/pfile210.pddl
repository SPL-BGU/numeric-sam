(define (problem DLOG-1-4-6-210)
	(:domain driverlog)
	(:objects
	driver1 - driver
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
	p1-2 - location
	p0-1 - location
	p3-1 - location
	)
	(:init
	(at driver1 s1)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s2)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s0)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s3)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s1)
	(at package2 s0)
	(at package3 s3)
	(at package4 s3)
	(at package5 s3)
	(at package6 s0)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 13)
	(= (time-to-walk p2-0 s2) 13)
	(= (time-to-walk s0 p2-0) 18)
	(= (time-to-walk p2-0 s0) 18)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 1)
	(= (time-to-walk p1-2 s1) 1)
	(= (time-to-walk s2 p1-2) 1)
	(= (time-to-walk p1-2 s2) 1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 16)
	(= (time-to-walk p0-1 s0) 16)
	(= (time-to-walk s1 p0-1) 16)
	(= (time-to-walk p0-1 s1) 16)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 20)
	(= (time-to-walk p3-1 s3) 20)
	(= (time-to-walk s1 p3-1) 1)
	(= (time-to-walk p3-1 s1) 1)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 16)
	(= (time-to-drive s2 s0) 16)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 19)
	(= (time-to-drive s3 s0) 19)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 21)
	(= (time-to-drive s0 s1) 21)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 7)
	(= (time-to-drive s3 s1) 7)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 1)
	(= (time-to-drive s1 s2) 1)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 13)
	(= (time-to-drive s3 s2) 13)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at truck1 s0)
	(at truck2 s0)
	(at truck3 s3)
	(at truck4 s2)
	(at package1 s3)
	(at package2 s1)
	(at package3 s2)
	(at package5 s0)
	(at package6 s2)
	))

(:metric minimize (+ (* 4 (total-time)) (* 1 (fuel-used))))

)
