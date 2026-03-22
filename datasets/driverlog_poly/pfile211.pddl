(define (problem DLOG-3-2-6-211)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
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
	s4 - location
	p2-0 - location
	p2-3 - location
	p2-4 - location
	p4-3 - location
	p0-1 - location
	p0-4 - location
	p1-2 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s0)
	(at driver3 s2)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s3)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s0)
	(at package2 s4)
	(at package3 s1)
	(at package4 s4)
	(at package5 s4)
	(at package6 s2)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 2)
	(= (time-to-walk p2-0 s2) 2)
	(= (time-to-walk s0 p2-0) 2)
	(= (time-to-walk p2-0 s0) 2)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 1)
	(= (time-to-walk p2-3 s2) 1)
	(= (time-to-walk s3 p2-3) 1)
	(= (time-to-walk p2-3 s3) 1)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(= (time-to-walk s2 p2-4) 1)
	(= (time-to-walk p2-4 s2) 1)
	(= (time-to-walk s4 p2-4) 2)
	(= (time-to-walk p2-4 s4) 2)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(= (time-to-walk s4 p4-3) 2)
	(= (time-to-walk p4-3 s4) 2)
	(= (time-to-walk s3 p4-3) 2)
	(= (time-to-walk p4-3 s3) 2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 1)
	(= (time-to-walk p0-1 s0) 1)
	(= (time-to-walk s1 p0-1) 2)
	(= (time-to-walk p0-1 s1) 2)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(= (time-to-walk s0 p0-4) 2)
	(= (time-to-walk p0-4 s0) 2)
	(= (time-to-walk s4 p0-4) 1)
	(= (time-to-walk p0-4 s4) 1)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 2)
	(= (time-to-walk p1-2 s1) 2)
	(= (time-to-walk s2 p1-2) 2)
	(= (time-to-walk p1-2 s2) 2)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 1)
	(= (time-to-drive s2 s3) 1)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 1)
	(= (time-to-drive s4 s3) 1)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 1)
	(= (time-to-drive s1 s4) 1)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 2)
	(= (time-to-drive s1 s0) 2)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 2)
	(= (time-to-drive s2 s0) 2)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 1)
	(= (time-to-drive s3 s0) 1)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s4)
	(at driver3 s3)
	(at truck1 s1)
	(at package1 s0)
	(at package2 s3)
	(at package3 s2)
	(at package4 s0)
	(at package5 s1)
	(at package6 s4)
	))

(:metric minimize (+ (* 3 (total-time)) (* 4 (fuel-used))))

)
