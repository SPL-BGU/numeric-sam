(define (problem DLOG-4-7-3)
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
	truck6 - truck
	truck7 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-1 - location
	p2-1 - location
	p2-3 - location
	p2-4 - location
	p3-0 - location
	p3-1 - location
	p3-2 - location
	p4-3 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s1)
	(at driver3 s0)
	(at driver4 s4)
	(at truck1 s4)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s3)
	(empty truck3)
	(at truck4 s4)
	(empty truck4)
	(at truck5 s3)
	(empty truck5)
	(at truck6 s1)
	(empty truck6)
	(at truck7 s3)
	(empty truck7)
	(at package1 s1)
	(at package2 s4)
	(at package3 s3)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 59)
	(= (time-to-walk p0-1 s0) 59)
	(= (time-to-walk s1 p0-1) 25)
	(= (time-to-walk p0-1 s1) 25)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 81)
	(= (time-to-walk p2-1 s2) 81)
	(= (time-to-walk s1 p2-1) 41)
	(= (time-to-walk p2-1 s1) 41)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 77)
	(= (time-to-walk p2-3 s2) 77)
	(= (time-to-walk s3 p2-3) 76)
	(= (time-to-walk p2-3 s3) 76)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(= (time-to-walk s2 p2-4) 1)
	(= (time-to-walk p2-4 s2) 1)
	(= (time-to-walk s4 p2-4) 42)
	(= (time-to-walk p2-4 s4) 42)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(= (time-to-walk s3 p3-0) 24)
	(= (time-to-walk p3-0 s3) 24)
	(= (time-to-walk s0 p3-0) 83)
	(= (time-to-walk p3-0 s0) 83)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 41)
	(= (time-to-walk p3-1 s3) 41)
	(= (time-to-walk s1 p3-1) 3)
	(= (time-to-walk p3-1 s1) 3)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(= (time-to-walk s4 p4-3) 60)
	(= (time-to-walk p4-3 s4) 60)
	(= (time-to-walk s3 p4-3) 20)
	(= (time-to-walk p4-3 s3) 20)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 83)
	(= (time-to-drive s1 s0) 83)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 61)
	(= (time-to-drive s4 s0) 61)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 46)
	(= (time-to-drive s4 s1) 46)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 21)
	(= (time-to-drive s0 s2) 21)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 32)
	(= (time-to-drive s3 s2) 32)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 19)
	(= (time-to-drive s4 s2) 19)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 48)
	(= (time-to-drive s0 s3) 48)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 42)
	(= (time-to-drive s1 s3) 42)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s2)
	(at driver3 s3)
	(at driver4 s0)
	(at truck1 s1)
	(at truck2 s4)
	(at truck3 s2)
	(at truck4 s3)
	(at truck6 s1)
	(at package1 s2)
	(at package2 s2)
	(at package3 s1)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 4  (driven))) (* 1  (walked))))

)
