(define (problem DLOG-3-1-4-243)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p2-0 - location
	p4-2 - location
	p0-1 - location
	p3-0 - location
	p1-3 - location
	)
	(:init
	(at driver1 s3)
	(at driver2 s3)
	(at driver3 s4)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at package1 s0)
	(at package2 s1)
	(at package3 s2)
	(at package4 s4)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 4)
	(= (time-to-walk p2-0 s2) 4)
	(= (time-to-walk s0 p2-0) 19)
	(= (time-to-walk p2-0 s0) 19)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(= (time-to-walk s4 p4-2) 40)
	(= (time-to-walk p4-2 s4) 40)
	(= (time-to-walk s2 p4-2) 51)
	(= (time-to-walk p4-2 s2) 51)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 27)
	(= (time-to-walk p0-1 s0) 27)
	(= (time-to-walk s1 p0-1) 43)
	(= (time-to-walk p0-1 s1) 43)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(= (time-to-walk s3 p3-0) 19)
	(= (time-to-walk p3-0 s3) 19)
	(= (time-to-walk s0 p3-0) 32)
	(= (time-to-walk p3-0 s0) 32)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 34)
	(= (time-to-walk p1-3 s1) 34)
	(= (time-to-walk s3 p1-3) 45)
	(= (time-to-walk p1-3 s3) 45)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 55)
	(= (time-to-drive s2 s1) 55)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 48)
	(= (time-to-drive s3 s1) 48)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 32)
	(= (time-to-drive s1 s0) 32)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 44)
	(= (time-to-drive s3 s0) 44)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 53)
	(= (time-to-drive s4 s3) 53)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 15)
	(= (time-to-drive s0 s4) 15)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 28)
	(= (time-to-drive s2 s4) 28)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s0)
	(at driver3 s1)
	(at truck1 s1)
	(at package2 s0)
	(at package3 s2)
	(at package4 s3)
	))

(:metric minimize (+ (* 2 (total-time)) (* 4 (fuel-used))))

)
