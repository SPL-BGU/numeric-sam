(define (problem DLOG-3-7-12)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
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
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	package8 - obj
	package9 - obj
	package10 - obj
	package11 - obj
	package12 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	s8 - location
	s9 - location
	s10 - location
	s11 - location
	p0-8 - location
	p1-4 - location
	p1-11 - location
	p3-2 - location
	p3-11 - location
	p4-6 - location
	p4-10 - location
	p5-4 - location
	p6-1 - location
	p7-1 - location
	p7-9 - location
	p8-1 - location
	p8-5 - location
	p9-0 - location
	p9-1 - location
	p9-3 - location
	p10-6 - location
	p10-7 - location
	p10-8 - location
	p11-4 - location
	)
	(:init
	(at driver1 s7)
	(at driver2 s2)
	(at driver3 s8)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s6)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s8)
	(empty truck5)
	(at truck6 s2)
	(empty truck6)
	(at truck7 s2)
	(empty truck7)
	(at package1 s5)
	(at package2 s5)
	(at package3 s11)
	(at package4 s1)
	(at package5 s6)
	(at package6 s10)
	(at package7 s9)
	(at package8 s3)
	(at package9 s10)
	(at package10 s0)
	(at package11 s6)
	(at package12 s3)
	(path s0 p0-8)
	(path p0-8 s0)
	(path s8 p0-8)
	(path p0-8 s8)
	(= (time-to-walk s0 p0-8) 34)
	(= (time-to-walk p0-8 s0) 34)
	(= (time-to-walk s8 p0-8) 51)
	(= (time-to-walk p0-8 s8) 51)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(= (time-to-walk s1 p1-4) 77)
	(= (time-to-walk p1-4 s1) 77)
	(= (time-to-walk s4 p1-4) 33)
	(= (time-to-walk p1-4 s4) 33)
	(path s1 p1-11)
	(path p1-11 s1)
	(path s11 p1-11)
	(path p1-11 s11)
	(= (time-to-walk s1 p1-11) 62)
	(= (time-to-walk p1-11 s1) 62)
	(= (time-to-walk s11 p1-11) 55)
	(= (time-to-walk p1-11 s11) 55)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(= (time-to-walk s3 p3-2) 22)
	(= (time-to-walk p3-2 s3) 22)
	(= (time-to-walk s2 p3-2) 20)
	(= (time-to-walk p3-2 s2) 20)
	(path s3 p3-11)
	(path p3-11 s3)
	(path s11 p3-11)
	(path p3-11 s11)
	(= (time-to-walk s3 p3-11) 85)
	(= (time-to-walk p3-11 s3) 85)
	(= (time-to-walk s11 p3-11) 52)
	(= (time-to-walk p3-11 s11) 52)
	(path s4 p4-6)
	(path p4-6 s4)
	(path s6 p4-6)
	(path p4-6 s6)
	(= (time-to-walk s4 p4-6) 6)
	(= (time-to-walk p4-6 s4) 6)
	(= (time-to-walk s6 p4-6) 36)
	(= (time-to-walk p4-6 s6) 36)
	(path s4 p4-10)
	(path p4-10 s4)
	(path s10 p4-10)
	(path p4-10 s10)
	(= (time-to-walk s4 p4-10) 43)
	(= (time-to-walk p4-10 s4) 43)
	(= (time-to-walk s10 p4-10) 84)
	(= (time-to-walk p4-10 s10) 84)
	(path s5 p5-4)
	(path p5-4 s5)
	(path s4 p5-4)
	(path p5-4 s4)
	(= (time-to-walk s5 p5-4) 89)
	(= (time-to-walk p5-4 s5) 89)
	(= (time-to-walk s4 p5-4) 46)
	(= (time-to-walk p5-4 s4) 46)
	(path s6 p6-1)
	(path p6-1 s6)
	(path s1 p6-1)
	(path p6-1 s1)
	(= (time-to-walk s6 p6-1) 10)
	(= (time-to-walk p6-1 s6) 10)
	(= (time-to-walk s1 p6-1) 12)
	(= (time-to-walk p6-1 s1) 12)
	(path s7 p7-1)
	(path p7-1 s7)
	(path s1 p7-1)
	(path p7-1 s1)
	(= (time-to-walk s7 p7-1) 75)
	(= (time-to-walk p7-1 s7) 75)
	(= (time-to-walk s1 p7-1) 98)
	(= (time-to-walk p7-1 s1) 98)
	(path s7 p7-9)
	(path p7-9 s7)
	(path s9 p7-9)
	(path p7-9 s9)
	(= (time-to-walk s7 p7-9) 53)
	(= (time-to-walk p7-9 s7) 53)
	(= (time-to-walk s9 p7-9) 24)
	(= (time-to-walk p7-9 s9) 24)
	(path s8 p8-1)
	(path p8-1 s8)
	(path s1 p8-1)
	(path p8-1 s1)
	(= (time-to-walk s8 p8-1) 2)
	(= (time-to-walk p8-1 s8) 2)
	(= (time-to-walk s1 p8-1) 12)
	(= (time-to-walk p8-1 s1) 12)
	(path s8 p8-5)
	(path p8-5 s8)
	(path s5 p8-5)
	(path p8-5 s5)
	(= (time-to-walk s8 p8-5) 81)
	(= (time-to-walk p8-5 s8) 81)
	(= (time-to-walk s5 p8-5) 54)
	(= (time-to-walk p8-5 s5) 54)
	(path s9 p9-0)
	(path p9-0 s9)
	(path s0 p9-0)
	(path p9-0 s0)
	(= (time-to-walk s9 p9-0) 21)
	(= (time-to-walk p9-0 s9) 21)
	(= (time-to-walk s0 p9-0) 8)
	(= (time-to-walk p9-0 s0) 8)
	(path s9 p9-1)
	(path p9-1 s9)
	(path s1 p9-1)
	(path p9-1 s1)
	(= (time-to-walk s9 p9-1) 82)
	(= (time-to-walk p9-1 s9) 82)
	(= (time-to-walk s1 p9-1) 75)
	(= (time-to-walk p9-1 s1) 75)
	(path s9 p9-3)
	(path p9-3 s9)
	(path s3 p9-3)
	(path p9-3 s3)
	(= (time-to-walk s9 p9-3) 23)
	(= (time-to-walk p9-3 s9) 23)
	(= (time-to-walk s3 p9-3) 15)
	(= (time-to-walk p9-3 s3) 15)
	(path s10 p10-6)
	(path p10-6 s10)
	(path s6 p10-6)
	(path p10-6 s6)
	(= (time-to-walk s10 p10-6) 26)
	(= (time-to-walk p10-6 s10) 26)
	(= (time-to-walk s6 p10-6) 99)
	(= (time-to-walk p10-6 s6) 99)
	(path s10 p10-7)
	(path p10-7 s10)
	(path s7 p10-7)
	(path p10-7 s7)
	(= (time-to-walk s10 p10-7) 48)
	(= (time-to-walk p10-7 s10) 48)
	(= (time-to-walk s7 p10-7) 87)
	(= (time-to-walk p10-7 s7) 87)
	(path s10 p10-8)
	(path p10-8 s10)
	(path s8 p10-8)
	(path p10-8 s8)
	(= (time-to-walk s10 p10-8) 54)
	(= (time-to-walk p10-8 s10) 54)
	(= (time-to-walk s8 p10-8) 69)
	(= (time-to-walk p10-8 s8) 69)
	(path s11 p11-4)
	(path p11-4 s11)
	(path s4 p11-4)
	(path p11-4 s4)
	(= (time-to-walk s11 p11-4) 6)
	(= (time-to-walk p11-4 s11) 6)
	(= (time-to-walk s4 p11-4) 38)
	(= (time-to-walk p11-4 s4) 38)
	(link s0 s7)
	(link s7 s0)
	(= (time-to-drive s0 s7) 20)
	(= (time-to-drive s7 s0) 20)
	(link s0 s10)
	(link s10 s0)
	(= (time-to-drive s0 s10) 12)
	(= (time-to-drive s10 s0) 12)
	(link s0 s11)
	(link s11 s0)
	(= (time-to-drive s0 s11) 74)
	(= (time-to-drive s11 s0) 74)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 62)
	(= (time-to-drive s3 s1) 62)
	(link s1 s6)
	(link s6 s1)
	(= (time-to-drive s1 s6) 95)
	(= (time-to-drive s6 s1) 95)
	(link s1 s9)
	(link s9 s1)
	(= (time-to-drive s1 s9) 63)
	(= (time-to-drive s9 s1) 63)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 7)
	(= (time-to-drive s4 s3) 7)
	(link s3 s6)
	(link s6 s3)
	(= (time-to-drive s3 s6) 4)
	(= (time-to-drive s6 s3) 4)
	(link s3 s8)
	(link s8 s3)
	(= (time-to-drive s3 s8) 75)
	(= (time-to-drive s8 s3) 75)
	(link s3 s9)
	(link s9 s3)
	(= (time-to-drive s3 s9) 82)
	(= (time-to-drive s9 s3) 82)
	(link s4 s5)
	(link s5 s4)
	(= (time-to-drive s4 s5) 2)
	(= (time-to-drive s5 s4) 2)
	(link s4 s9)
	(link s9 s4)
	(= (time-to-drive s4 s9) 27)
	(= (time-to-drive s9 s4) 27)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 5)
	(= (time-to-drive s1 s5) 5)
	(link s5 s6)
	(link s6 s5)
	(= (time-to-drive s5 s6) 4)
	(= (time-to-drive s6 s5) 4)
	(link s5 s8)
	(link s8 s5)
	(= (time-to-drive s5 s8) 39)
	(= (time-to-drive s8 s5) 39)
	(link s5 s11)
	(link s11 s5)
	(= (time-to-drive s5 s11) 86)
	(= (time-to-drive s11 s5) 86)
	(link s6 s0)
	(link s0 s6)
	(= (time-to-drive s6 s0) 57)
	(= (time-to-drive s0 s6) 57)
	(link s6 s9)
	(link s9 s6)
	(= (time-to-drive s6 s9) 59)
	(= (time-to-drive s9 s6) 59)
	(link s6 s11)
	(link s11 s6)
	(= (time-to-drive s6 s11) 94)
	(= (time-to-drive s11 s6) 94)
	(link s7 s9)
	(link s9 s7)
	(= (time-to-drive s7 s9) 38)
	(= (time-to-drive s9 s7) 38)
	(link s7 s11)
	(link s11 s7)
	(= (time-to-drive s7 s11) 34)
	(= (time-to-drive s11 s7) 34)
	(link s8 s0)
	(link s0 s8)
	(= (time-to-drive s8 s0) 16)
	(= (time-to-drive s0 s8) 16)
	(link s8 s1)
	(link s1 s8)
	(= (time-to-drive s8 s1) 52)
	(= (time-to-drive s1 s8) 52)
	(link s8 s2)
	(link s2 s8)
	(= (time-to-drive s8 s2) 59)
	(= (time-to-drive s2 s8) 59)
	(link s8 s6)
	(link s6 s8)
	(= (time-to-drive s8 s6) 14)
	(= (time-to-drive s6 s8) 14)
	(link s8 s7)
	(link s7 s8)
	(= (time-to-drive s8 s7) 99)
	(= (time-to-drive s7 s8) 99)
	(link s8 s9)
	(link s9 s8)
	(= (time-to-drive s8 s9) 46)
	(= (time-to-drive s9 s8) 46)
	(link s8 s10)
	(link s10 s8)
	(= (time-to-drive s8 s10) 67)
	(= (time-to-drive s10 s8) 67)
	(link s9 s0)
	(link s0 s9)
	(= (time-to-drive s9 s0) 68)
	(= (time-to-drive s0 s9) 68)
	(link s10 s2)
	(link s2 s10)
	(= (time-to-drive s10 s2) 51)
	(= (time-to-drive s2 s10) 51)
	(link s10 s7)
	(link s7 s10)
	(= (time-to-drive s10 s7) 5)
	(= (time-to-drive s7 s10) 5)
	(link s11 s9)
	(link s9 s11)
	(= (time-to-drive s11 s9) 87)
	(= (time-to-drive s9 s11) 87)
	(link s11 s10)
	(link s10 s11)
	(= (time-to-drive s11 s10) 62)
	(= (time-to-drive s10 s11) 62)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s3)
	(at driver2 s3)
	(at truck1 s10)
	(at truck3 s7)
	(at truck4 s1)
	(at truck5 s3)
	(at truck7 s0)
	(at package1 s8)
	(at package2 s10)
	(at package3 s7)
	(at package4 s9)
	(at package5 s3)
	(at package6 s6)
	(at package8 s2)
	(at package9 s4)
	(at package10 s7)
	(at package11 s1)
	(at package12 s6)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 2  (driven))) (* 3  (walked))))

)
