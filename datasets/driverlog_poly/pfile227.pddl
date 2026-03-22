(define (problem DLOG-3-4-1-227)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	package1 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p3-0 - location
	p3-2 - location
	p1-3 - location
	p0-3 - location
	p2-0 - location
	)
	(:init
	(at driver1 s3)
	(at driver2 s2)
	(at driver3 s1)
	(at truck1 s2)
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
	(at truck4 s3)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s0)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(= (time-to-walk s3 p3-2) 25)
	(= (time-to-walk p3-2 s3) 25)
	(= (time-to-walk s2 p3-2) 1)
	(= (time-to-walk p3-2 s2) 1)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 15)
	(= (time-to-walk p1-3 s1) 15)
	(= (time-to-walk s3 p1-3) 30)
	(= (time-to-walk p1-3 s3) 30)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 15)
	(= (time-to-walk p0-3 s0) 15)
	(= (time-to-walk s3 p0-3) 11)
	(= (time-to-walk p0-3 s3) 11)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 10)
	(= (time-to-walk p2-0 s2) 10)
	(= (time-to-walk s0 p2-0) 13)
	(= (time-to-walk p2-0 s0) 13)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 6)
	(= (time-to-drive s0 s2) 6)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 2)
	(= (time-to-drive s2 s3) 2)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 21)
	(= (time-to-drive s2 s1) 21)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 27)
	(= (time-to-drive s3 s1) 27)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 9)
	(= (time-to-drive s1 s0) 9)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 29)
	(= (time-to-drive s3 s0) 29)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s2)
	(at truck1 s0)
	(at truck2 s2)
	(at truck4 s2)
	(at package1 s2)
	))

(:metric minimize (+ (* 3 (total-time)) (* 1 (fuel-used))))

)
