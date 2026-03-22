(define (problem DLOG-3-3-4-214)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
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
	p2-1 - location
	p2-4 - location
	p4-0 - location
	p3-0 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s3)
	(at driver3 s4)
	(at truck1 s3)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s3)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s1)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at package1 s1)
	(at package2 s4)
	(at package3 s3)
	(at package4 s2)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 77)
	(= (time-to-walk p2-0 s2) 77)
	(= (time-to-walk s0 p2-0) 51)
	(= (time-to-walk p2-0 s0) 51)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 42)
	(= (time-to-walk p2-1 s2) 42)
	(= (time-to-walk s1 p2-1) 25)
	(= (time-to-walk p2-1 s1) 25)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(= (time-to-walk s2 p2-4) 53)
	(= (time-to-walk p2-4 s2) 53)
	(= (time-to-walk s4 p2-4) 28)
	(= (time-to-walk p2-4 s4) 28)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(= (time-to-walk s4 p4-0) 36)
	(= (time-to-walk p4-0 s4) 36)
	(= (time-to-walk s0 p4-0) 38)
	(= (time-to-walk p4-0 s0) 38)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(= (time-to-walk s3 p3-0) 43)
	(= (time-to-walk p3-0 s3) 43)
	(= (time-to-walk s0 p3-0) 77)
	(= (time-to-walk p3-0 s0) 77)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 5)
	(= (time-to-drive s0 s2) 5)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 37)
	(= (time-to-drive s1 s2) 37)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 53)
	(= (time-to-drive s4 s2) 53)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 28)
	(= (time-to-drive s1 s0) 28)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 20)
	(= (time-to-drive s1 s3) 20)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 22)
	(= (time-to-drive s4 s3) 22)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s3)
	(at driver3 s1)
	(at truck1 s4)
	(at truck2 s1)
	(at truck3 s1)
	(at package1 s0)
	(at package2 s4)
	(at package3 s0)
	(at package4 s0)
	))

(:metric minimize (+ (* 3 (total-time)) (* 2 (fuel-used))))

)
