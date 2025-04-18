(define (problem DLOG-5-6-6)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	truck6 - truck
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
	s5 - location
	s6 - location
	s7 - location
	s8 - location
	s9 - location
	s10 - location
	s11 - location
	s12 - location
	s13 - location
	s14 - location
	p0-3 - location
	p0-4 - location
	p1-2 - location
	p1-5 - location
	p1-7 - location
	p3-1 - location
	p3-10 - location
	p4-11 - location
	p5-0 - location
	p5-14 - location
	p6-2 - location
	p6-4 - location
	p6-12 - location
	p7-12 - location
	p8-3 - location
	p10-6 - location
	p10-8 - location
	p10-9 - location
	p10-13 - location
	p11-0 - location
	p11-1 - location
	p12-1 - location
	p12-11 - location
	p13-3 - location
	p13-9 - location
	p13-11 - location
	p14-5 - location
	p14-10 - location
	)
	(:init
	(at driver1 s8)
	(at driver2 s3)
	(at driver3 s9)
	(at driver4 s8)
	(at driver5 s12)
	(at truck1 s5)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s6)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s12)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s8)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s0)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at truck6 s2)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at package1 s13)
	(at package2 s10)
	(at package3 s14)
	(at package4 s4)
	(at package5 s5)
	(at package6 s2)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s1 p1-7)
	(path p1-7 s1)
	(path s7 p1-7)
	(path p1-7 s7)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s3 p3-10)
	(path p3-10 s3)
	(path s10 p3-10)
	(path p3-10 s10)
	(path s4 p4-11)
	(path p4-11 s4)
	(path s11 p4-11)
	(path p4-11 s11)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(path s5 p5-14)
	(path p5-14 s5)
	(path s14 p5-14)
	(path p5-14 s14)
	(path s6 p6-2)
	(path p6-2 s6)
	(path s2 p6-2)
	(path p6-2 s2)
	(path s6 p6-4)
	(path p6-4 s6)
	(path s4 p6-4)
	(path p6-4 s4)
	(path s6 p6-12)
	(path p6-12 s6)
	(path s12 p6-12)
	(path p6-12 s12)
	(path s7 p7-12)
	(path p7-12 s7)
	(path s12 p7-12)
	(path p7-12 s12)
	(path s8 p8-3)
	(path p8-3 s8)
	(path s3 p8-3)
	(path p8-3 s3)
	(path s10 p10-6)
	(path p10-6 s10)
	(path s6 p10-6)
	(path p10-6 s6)
	(path s10 p10-8)
	(path p10-8 s10)
	(path s8 p10-8)
	(path p10-8 s8)
	(path s10 p10-9)
	(path p10-9 s10)
	(path s9 p10-9)
	(path p10-9 s9)
	(path s10 p10-13)
	(path p10-13 s10)
	(path s13 p10-13)
	(path p10-13 s13)
	(path s11 p11-0)
	(path p11-0 s11)
	(path s0 p11-0)
	(path p11-0 s0)
	(path s11 p11-1)
	(path p11-1 s11)
	(path s1 p11-1)
	(path p11-1 s1)
	(path s12 p12-1)
	(path p12-1 s12)
	(path s1 p12-1)
	(path p12-1 s1)
	(path s12 p12-11)
	(path p12-11 s12)
	(path s11 p12-11)
	(path p12-11 s11)
	(path s13 p13-3)
	(path p13-3 s13)
	(path s3 p13-3)
	(path p13-3 s3)
	(path s13 p13-9)
	(path p13-9 s13)
	(path s9 p13-9)
	(path p13-9 s9)
	(path s13 p13-11)
	(path p13-11 s13)
	(path s11 p13-11)
	(path p13-11 s11)
	(path s14 p14-10)
	(path p14-10 s14)
	(path s10 p14-10)
	(path p14-10 s10)
	(link s0 s14)
	(link s14 s0)
	(= (time-to-drive s0 s14) 76)
	(= (time-to-drive s14 s0) 76)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 70)
	(= (time-to-drive s4 s1) 70)
	(link s1 s8)
	(link s8 s1)
	(= (time-to-drive s1 s8) 21)
	(= (time-to-drive s8 s1) 21)
	(link s1 s11)
	(link s11 s1)
	(= (time-to-drive s1 s11) 63)
	(= (time-to-drive s11 s1) 63)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 91)
	(= (time-to-drive s0 s2) 91)
	(link s2 s13)
	(link s13 s2)
	(= (time-to-drive s2 s13) 45)
	(= (time-to-drive s13 s2) 45)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 79)
	(= (time-to-drive s0 s3) 79)
	(link s3 s5)
	(link s5 s3)
	(= (time-to-drive s3 s5) 76)
	(= (time-to-drive s5 s3) 76)
	(link s3 s8)
	(link s8 s3)
	(= (time-to-drive s3 s8) 45)
	(= (time-to-drive s8 s3) 45)
	(link s3 s12)
	(link s12 s3)
	(= (time-to-drive s3 s12) 7)
	(= (time-to-drive s12 s3) 7)
	(link s3 s14)
	(link s14 s3)
	(= (time-to-drive s3 s14) 8)
	(= (time-to-drive s14 s3) 8)
	(link s4 s5)
	(link s5 s4)
	(= (time-to-drive s4 s5) 47)
	(= (time-to-drive s5 s4) 47)
	(link s4 s11)
	(link s11 s4)
	(= (time-to-drive s4 s11) 7)
	(= (time-to-drive s11 s4) 7)
	(link s5 s0)
	(link s0 s5)
	(= (time-to-drive s5 s0) 93)
	(= (time-to-drive s0 s5) 93)
	(link s5 s2)
	(link s2 s5)
	(= (time-to-drive s5 s2) 29)
	(= (time-to-drive s2 s5) 29)
	(link s5 s10)
	(link s10 s5)
	(= (time-to-drive s5 s10) 81)
	(= (time-to-drive s10 s5) 81)
	(link s6 s1)
	(link s1 s6)
	(= (time-to-drive s6 s1) 99)
	(= (time-to-drive s1 s6) 99)
	(link s6 s3)
	(link s3 s6)
	(= (time-to-drive s6 s3) 81)
	(= (time-to-drive s3 s6) 81)
	(link s6 s7)
	(link s7 s6)
	(= (time-to-drive s6 s7) 43)
	(= (time-to-drive s7 s6) 43)
	(link s6 s11)
	(link s11 s6)
	(= (time-to-drive s6 s11) 46)
	(= (time-to-drive s11 s6) 46)
	(link s6 s13)
	(link s13 s6)
	(= (time-to-drive s6 s13) 38)
	(= (time-to-drive s13 s6) 38)
	(link s7 s8)
	(link s8 s7)
	(= (time-to-drive s7 s8) 87)
	(= (time-to-drive s8 s7) 87)
	(link s7 s10)
	(link s10 s7)
	(= (time-to-drive s7 s10) 79)
	(= (time-to-drive s10 s7) 79)
	(link s7 s13)
	(link s13 s7)
	(= (time-to-drive s7 s13) 2)
	(= (time-to-drive s13 s7) 2)
	(link s8 s5)
	(link s5 s8)
	(= (time-to-drive s8 s5) 79)
	(= (time-to-drive s5 s8) 79)
	(link s8 s12)
	(link s12 s8)
	(= (time-to-drive s8 s12) 1)
	(= (time-to-drive s12 s8) 1)
	(link s9 s0)
	(link s0 s9)
	(= (time-to-drive s9 s0) 49)
	(= (time-to-drive s0 s9) 49)
	(link s9 s5)
	(link s5 s9)
	(= (time-to-drive s9 s5) 15)
	(= (time-to-drive s5 s9) 15)
	(link s9 s6)
	(link s6 s9)
	(= (time-to-drive s9 s6) 76)
	(= (time-to-drive s6 s9) 76)
	(link s9 s8)
	(link s8 s9)
	(= (time-to-drive s9 s8) 99)
	(= (time-to-drive s8 s9) 99)
	(link s9 s13)
	(link s13 s9)
	(= (time-to-drive s9 s13) 27)
	(= (time-to-drive s13 s9) 27)
	(link s9 s14)
	(link s14 s9)
	(= (time-to-drive s9 s14) 51)
	(= (time-to-drive s14 s9) 51)
	(link s10 s0)
	(link s0 s10)
	(= (time-to-drive s10 s0) 68)
	(= (time-to-drive s0 s10) 68)
	(link s10 s3)
	(link s3 s10)
	(= (time-to-drive s10 s3) 47)
	(= (time-to-drive s3 s10) 47)
	(link s10 s4)
	(link s4 s10)
	(= (time-to-drive s10 s4) 14)
	(= (time-to-drive s4 s10) 14)
	(link s11 s2)
	(link s2 s11)
	(= (time-to-drive s11 s2) 58)
	(= (time-to-drive s2 s11) 58)
	(link s11 s9)
	(link s9 s11)
	(= (time-to-drive s11 s9) 91)
	(= (time-to-drive s9 s11) 91)
	(link s12 s4)
	(link s4 s12)
	(= (time-to-drive s12 s4) 93)
	(= (time-to-drive s4 s12) 93)
	(link s12 s5)
	(link s5 s12)
	(= (time-to-drive s12 s5) 34)
	(= (time-to-drive s5 s12) 34)
	(link s13 s1)
	(link s1 s13)
	(= (time-to-drive s13 s1) 36)
	(= (time-to-drive s1 s13) 36)
	(link s13 s10)
	(link s10 s13)
	(= (time-to-drive s13 s10) 100)
	(= (time-to-drive s10 s13) 100)
	(link s14 s4)
	(link s4 s14)
	(= (time-to-drive s14 s4) 42)
	(= (time-to-drive s4 s14) 42)
	(link s14 s8)
	(link s8 s14)
	(= (time-to-drive s14 s8) 82)
	(= (time-to-drive s8 s14) 82)
	(link s14 s10)
	(link s10 s14)
	(= (time-to-drive s14 s10) 6)
	(= (time-to-drive s10 s14) 6)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s6)
	(at driver2 s9)
	(at driver4 s6)
	(at truck1 s12)
	(at truck2 s9)
	(at truck4 s0)
	(at truck5 s10)
	(at truck6 s3)
	(at package2 s0)
	(at package3 s9)
	(at package4 s7)
	(at package6 s4)
	))

(:metric minimize (+ (* 2 (total-time)) (* 1 (fuel-used))))

)
