(define (problem DLOG-3-4-1-272)
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
	p3-1 - location
	p2-1 - location
	p0-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s3)
	(at truck1 s2)
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
	(at truck4 s1)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s1)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(= (time-to-walk s3 p3-0) 32)
	(= (time-to-walk p3-0 s3) 32)
	(= (time-to-walk s0 p3-0) 43)
	(= (time-to-walk p3-0 s0) 43)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 12)
	(= (time-to-walk p3-1 s3) 12)
	(= (time-to-walk s1 p3-1) 42)
	(= (time-to-walk p3-1 s1) 42)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 7)
	(= (time-to-walk p2-1 s2) 7)
	(= (time-to-walk s1 p2-1) 32)
	(= (time-to-walk p2-1 s1) 32)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 15)
	(= (time-to-walk p0-1 s0) 15)
	(= (time-to-walk s1 p0-1) 21)
	(= (time-to-walk p0-1 s1) 21)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 18)
	(= (time-to-drive s2 s1) 18)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 42)
	(= (time-to-drive s3 s1) 42)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 32)
	(= (time-to-drive s0 s3) 32)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 41)
	(= (time-to-drive s2 s3) 41)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 28)
	(= (time-to-drive s2 s0) 28)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at truck2 s3)
	(at truck4 s1)
	(at package1 s1)
	))

(:metric minimize (+ (* 3 (total-time)) (* 1 (fuel-used))))

)
