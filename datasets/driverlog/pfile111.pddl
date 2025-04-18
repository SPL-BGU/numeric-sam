(define (problem DLOG-3-7-7)
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
	s12 - location
	p0-2 - location
	p0-3 - location
	p0-6 - location
	p1-5 - location
	p2-3 - location
	p2-4 - location
	p2-6 - location
	p2-7 - location
	p2-8 - location
	p2-9 - location
	p2-11 - location
	p3-1 - location
	p4-11 - location
	p5-6 - location
	p6-0 - location
	p7-10 - location
	p8-5 - location
	p9-3 - location
	p10-4 - location
	p10-12 - location
	p11-8 - location
	p12-2 - location
	p12-6 - location
	p12-8 - location
	)
	(:init
	(at driver1 s10)
	(at driver2 s10)
	(at driver3 s9)
	(at truck1 s8)
	(empty truck1)
	(at truck2 s11)
	(empty truck2)
	(at truck3 s7)
	(empty truck3)
	(at truck4 s12)
	(empty truck4)
	(at truck5 s4)
	(empty truck5)
	(at truck6 s4)
	(empty truck6)
	(at truck7 s10)
	(empty truck7)
	(at package1 s4)
	(at package2 s0)
	(at package3 s5)
	(at package4 s8)
	(at package5 s12)
	(at package6 s3)
	(at package7 s4)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 87)
	(= (time-to-walk p0-2 s0) 87)
	(= (time-to-walk s2 p0-2) 46)
	(= (time-to-walk p0-2 s2) 46)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 81)
	(= (time-to-walk p0-3 s0) 81)
	(= (time-to-walk s3 p0-3) 86)
	(= (time-to-walk p0-3 s3) 86)
	(path s0 p0-6)
	(path p0-6 s0)
	(path s6 p0-6)
	(path p0-6 s6)
	(= (time-to-walk s0 p0-6) 77)
	(= (time-to-walk p0-6 s0) 77)
	(= (time-to-walk s6 p0-6) 19)
	(= (time-to-walk p0-6 s6) 19)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(= (time-to-walk s1 p1-5) 52)
	(= (time-to-walk p1-5 s1) 52)
	(= (time-to-walk s5 p1-5) 57)
	(= (time-to-walk p1-5 s5) 57)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 4)
	(= (time-to-walk p2-3 s2) 4)
	(= (time-to-walk s3 p2-3) 67)
	(= (time-to-walk p2-3 s3) 67)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(= (time-to-walk s2 p2-4) 89)
	(= (time-to-walk p2-4 s2) 89)
	(= (time-to-walk s4 p2-4) 70)
	(= (time-to-walk p2-4 s4) 70)
	(path s2 p2-6)
	(path p2-6 s2)
	(path s6 p2-6)
	(path p2-6 s6)
	(= (time-to-walk s2 p2-6) 24)
	(= (time-to-walk p2-6 s2) 24)
	(= (time-to-walk s6 p2-6) 92)
	(= (time-to-walk p2-6 s6) 92)
	(path s2 p2-7)
	(path p2-7 s2)
	(path s7 p2-7)
	(path p2-7 s7)
	(= (time-to-walk s2 p2-7) 12)
	(= (time-to-walk p2-7 s2) 12)
	(= (time-to-walk s7 p2-7) 76)
	(= (time-to-walk p2-7 s7) 76)
	(path s2 p2-8)
	(path p2-8 s2)
	(path s8 p2-8)
	(path p2-8 s8)
	(= (time-to-walk s2 p2-8) 33)
	(= (time-to-walk p2-8 s2) 33)
	(= (time-to-walk s8 p2-8) 24)
	(= (time-to-walk p2-8 s8) 24)
	(path s2 p2-9)
	(path p2-9 s2)
	(path s9 p2-9)
	(path p2-9 s9)
	(= (time-to-walk s2 p2-9) 56)
	(= (time-to-walk p2-9 s2) 56)
	(= (time-to-walk s9 p2-9) 100)
	(= (time-to-walk p2-9 s9) 100)
	(path s2 p2-11)
	(path p2-11 s2)
	(path s11 p2-11)
	(path p2-11 s11)
	(= (time-to-walk s2 p2-11) 5)
	(= (time-to-walk p2-11 s2) 5)
	(= (time-to-walk s11 p2-11) 20)
	(= (time-to-walk p2-11 s11) 20)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 96)
	(= (time-to-walk p3-1 s3) 96)
	(= (time-to-walk s1 p3-1) 70)
	(= (time-to-walk p3-1 s1) 70)
	(path s4 p4-11)
	(path p4-11 s4)
	(path s11 p4-11)
	(path p4-11 s11)
	(= (time-to-walk s4 p4-11) 57)
	(= (time-to-walk p4-11 s4) 57)
	(= (time-to-walk s11 p4-11) 26)
	(= (time-to-walk p4-11 s11) 26)
	(path s5 p5-6)
	(path p5-6 s5)
	(path s6 p5-6)
	(path p5-6 s6)
	(= (time-to-walk s5 p5-6) 89)
	(= (time-to-walk p5-6 s5) 89)
	(= (time-to-walk s6 p5-6) 86)
	(= (time-to-walk p5-6 s6) 86)
	(path s7 p7-10)
	(path p7-10 s7)
	(path s10 p7-10)
	(path p7-10 s10)
	(= (time-to-walk s7 p7-10) 59)
	(= (time-to-walk p7-10 s7) 59)
	(= (time-to-walk s10 p7-10) 3)
	(= (time-to-walk p7-10 s10) 3)
	(path s8 p8-5)
	(path p8-5 s8)
	(path s5 p8-5)
	(path p8-5 s5)
	(= (time-to-walk s8 p8-5) 50)
	(= (time-to-walk p8-5 s8) 50)
	(= (time-to-walk s5 p8-5) 46)
	(= (time-to-walk p8-5 s5) 46)
	(path s9 p9-3)
	(path p9-3 s9)
	(path s3 p9-3)
	(path p9-3 s3)
	(= (time-to-walk s9 p9-3) 48)
	(= (time-to-walk p9-3 s9) 48)
	(= (time-to-walk s3 p9-3) 30)
	(= (time-to-walk p9-3 s3) 30)
	(path s10 p10-4)
	(path p10-4 s10)
	(path s4 p10-4)
	(path p10-4 s4)
	(= (time-to-walk s10 p10-4) 31)
	(= (time-to-walk p10-4 s10) 31)
	(= (time-to-walk s4 p10-4) 24)
	(= (time-to-walk p10-4 s4) 24)
	(path s10 p10-12)
	(path p10-12 s10)
	(path s12 p10-12)
	(path p10-12 s12)
	(= (time-to-walk s10 p10-12) 48)
	(= (time-to-walk p10-12 s10) 48)
	(= (time-to-walk s12 p10-12) 83)
	(= (time-to-walk p10-12 s12) 83)
	(path s11 p11-8)
	(path p11-8 s11)
	(path s8 p11-8)
	(path p11-8 s8)
	(= (time-to-walk s11 p11-8) 81)
	(= (time-to-walk p11-8 s11) 81)
	(= (time-to-walk s8 p11-8) 52)
	(= (time-to-walk p11-8 s8) 52)
	(path s12 p12-2)
	(path p12-2 s12)
	(path s2 p12-2)
	(path p12-2 s2)
	(= (time-to-walk s12 p12-2) 50)
	(= (time-to-walk p12-2 s12) 50)
	(= (time-to-walk s2 p12-2) 69)
	(= (time-to-walk p12-2 s2) 69)
	(path s12 p12-6)
	(path p12-6 s12)
	(path s6 p12-6)
	(path p12-6 s6)
	(= (time-to-walk s12 p12-6) 21)
	(= (time-to-walk p12-6 s12) 21)
	(= (time-to-walk s6 p12-6) 74)
	(= (time-to-walk p12-6 s6) 74)
	(path s12 p12-8)
	(path p12-8 s12)
	(path s8 p12-8)
	(path p12-8 s8)
	(= (time-to-walk s12 p12-8) 61)
	(= (time-to-walk p12-8 s12) 61)
	(= (time-to-walk s8 p12-8) 33)
	(= (time-to-walk p12-8 s8) 33)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 50)
	(= (time-to-drive s3 s0) 50)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 93)
	(= (time-to-drive s4 s0) 93)
	(link s0 s8)
	(link s8 s0)
	(= (time-to-drive s0 s8) 56)
	(= (time-to-drive s8 s0) 56)
	(link s0 s12)
	(link s12 s0)
	(= (time-to-drive s0 s12) 5)
	(= (time-to-drive s12 s0) 5)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 92)
	(= (time-to-drive s0 s2) 92)
	(link s2 s5)
	(link s5 s2)
	(= (time-to-drive s2 s5) 61)
	(= (time-to-drive s5 s2) 61)
	(link s2 s8)
	(link s8 s2)
	(= (time-to-drive s2 s8) 25)
	(= (time-to-drive s8 s2) 25)
	(link s2 s11)
	(link s11 s2)
	(= (time-to-drive s2 s11) 87)
	(= (time-to-drive s11 s2) 87)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 30)
	(= (time-to-drive s1 s3) 30)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 81)
	(= (time-to-drive s2 s3) 81)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 13)
	(= (time-to-drive s4 s3) 13)
	(link s3 s10)
	(link s10 s3)
	(= (time-to-drive s3 s10) 19)
	(= (time-to-drive s10 s3) 19)
	(link s4 s7)
	(link s7 s4)
	(= (time-to-drive s4 s7) 67)
	(= (time-to-drive s7 s4) 67)
	(link s4 s10)
	(link s10 s4)
	(= (time-to-drive s4 s10) 71)
	(= (time-to-drive s10 s4) 71)
	(link s4 s11)
	(link s11 s4)
	(= (time-to-drive s4 s11) 22)
	(= (time-to-drive s11 s4) 22)
	(link s4 s12)
	(link s12 s4)
	(= (time-to-drive s4 s12) 16)
	(= (time-to-drive s12 s4) 16)
	(link s5 s10)
	(link s10 s5)
	(= (time-to-drive s5 s10) 16)
	(= (time-to-drive s10 s5) 16)
	(link s5 s11)
	(link s11 s5)
	(= (time-to-drive s5 s11) 69)
	(= (time-to-drive s11 s5) 69)
	(link s5 s12)
	(link s12 s5)
	(= (time-to-drive s5 s12) 45)
	(= (time-to-drive s12 s5) 45)
	(link s6 s2)
	(link s2 s6)
	(= (time-to-drive s6 s2) 47)
	(= (time-to-drive s2 s6) 47)
	(link s6 s9)
	(link s9 s6)
	(= (time-to-drive s6 s9) 93)
	(= (time-to-drive s9 s6) 93)
	(link s7 s2)
	(link s2 s7)
	(= (time-to-drive s7 s2) 93)
	(= (time-to-drive s2 s7) 93)
	(link s7 s6)
	(link s6 s7)
	(= (time-to-drive s7 s6) 30)
	(= (time-to-drive s6 s7) 30)
	(link s8 s1)
	(link s1 s8)
	(= (time-to-drive s8 s1) 73)
	(= (time-to-drive s1 s8) 73)
	(link s8 s3)
	(link s3 s8)
	(= (time-to-drive s8 s3) 45)
	(= (time-to-drive s3 s8) 45)
	(link s8 s6)
	(link s6 s8)
	(= (time-to-drive s8 s6) 80)
	(= (time-to-drive s6 s8) 80)
	(link s9 s2)
	(link s2 s9)
	(= (time-to-drive s9 s2) 42)
	(= (time-to-drive s2 s9) 42)
	(link s9 s3)
	(link s3 s9)
	(= (time-to-drive s9 s3) 66)
	(= (time-to-drive s3 s9) 66)
	(link s9 s10)
	(link s10 s9)
	(= (time-to-drive s9 s10) 53)
	(= (time-to-drive s10 s9) 53)
	(link s10 s12)
	(link s12 s10)
	(= (time-to-drive s10 s12) 2)
	(= (time-to-drive s12 s10) 2)
	(link s11 s0)
	(link s0 s11)
	(= (time-to-drive s11 s0) 98)
	(= (time-to-drive s0 s11) 98)
	(link s11 s1)
	(link s1 s11)
	(= (time-to-drive s11 s1) 2)
	(= (time-to-drive s1 s11) 2)
	(link s11 s10)
	(link s10 s11)
	(= (time-to-drive s11 s10) 95)
	(= (time-to-drive s10 s11) 95)
	(link s12 s2)
	(link s2 s12)
	(= (time-to-drive s12 s2) 54)
	(= (time-to-drive s2 s12) 54)
	(link s12 s6)
	(link s6 s12)
	(= (time-to-drive s12 s6) 7)
	(= (time-to-drive s6 s12) 7)
	(link s12 s7)
	(link s7 s12)
	(= (time-to-drive s12 s7) 86)
	(= (time-to-drive s7 s12) 86)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s5)
	(at driver2 s12)
	(at truck2 s9)
	(at truck4 s4)
	(at truck5 s2)
	(at truck6 s5)
	(at package1 s8)
	(at package2 s5)
	(at package3 s1)
	(at package4 s10)
	(at package5 s8)
	(at package6 s2)
	(at package7 s1)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 2  (driven))) (* 3  (walked))))

)
