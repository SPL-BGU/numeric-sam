(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	thermograph3 - mode
	infrared0 - mode
	image4 - mode
	image2 - mode
	image1 - mode
	Star1 - direction
	GroundStation0 - direction
	GroundStation2 - direction
	Phenomenon3 - direction
	Phenomenon4 - direction
	Star5 - direction
	Planet6 - direction
	Star7 - direction
	Star8 - direction
	Star9 - direction
	Star10 - direction
	Star11 - direction
	Phenomenon12 - direction
)
(:init
	(supports instrument0 image1)
	(supports instrument0 infrared0)
	(supports instrument0 thermograph3)
	(calibration_target instrument0 GroundStation2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star11)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 150)
	(supports instrument1 thermograph3)
	(calibration_target instrument1 GroundStation0)
	(supports instrument2 image1)
	(supports instrument2 infrared0)
	(calibration_target instrument2 Star1)
	(supports instrument3 image4)
	(supports instrument3 image1)
	(supports instrument3 image2)
	(calibration_target instrument3 Star1)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon4)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 191)
	(supports instrument4 infrared0)
	(supports instrument4 image2)
	(calibration_target instrument4 GroundStation2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star8)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 199)
	(supports instrument5 image2)
	(calibration_target instrument5 GroundStation0)
	(supports instrument6 image2)
	(supports instrument6 image4)
	(supports instrument6 image1)
	(calibration_target instrument6 GroundStation0)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star9)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 168)
	(supports instrument7 image1)
	(calibration_target instrument7 GroundStation2)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon3)
	(= (data_capacity satellite4) 1000)
	(= (fuel satellite4) 110)
	(= (data Phenomenon3 thermograph3) 234)
	(= (data Phenomenon4 thermograph3) 21)
	(= (data Star5 thermograph3) 24)
	(= (data Planet6 thermograph3) 219)
	(= (data Star7 thermograph3) 289)
	(= (data Star8 thermograph3) 22)
	(= (data Star9 thermograph3) 88)
	(= (data Star10 thermograph3) 80)
	(= (data Star11 thermograph3) 92)
	(= (data Phenomenon12 thermograph3) 114)
	(= (data Phenomenon3 infrared0) 115)
	(= (data Phenomenon4 infrared0) 52)
	(= (data Star5 infrared0) 286)
	(= (data Planet6 infrared0) 240)
	(= (data Star7 infrared0) 87)
	(= (data Star8 infrared0) 217)
	(= (data Star9 infrared0) 262)
	(= (data Star10 infrared0) 210)
	(= (data Star11 infrared0) 13)
	(= (data Phenomenon12 infrared0) 291)
	(= (data Phenomenon3 image4) 285)
	(= (data Phenomenon4 image4) 220)
	(= (data Star5 image4) 128)
	(= (data Planet6 image4) 145)
	(= (data Star7 image4) 182)
	(= (data Star8 image4) 180)
	(= (data Star9 image4) 87)
	(= (data Star10 image4) 207)
	(= (data Star11 image4) 130)
	(= (data Phenomenon12 image4) 101)
	(= (data Phenomenon3 image2) 108)
	(= (data Phenomenon4 image2) 226)
	(= (data Star5 image2) 122)
	(= (data Planet6 image2) 169)
	(= (data Star7 image2) 224)
	(= (data Star8 image2) 135)
	(= (data Star9 image2) 263)
	(= (data Star10 image2) 297)
	(= (data Star11 image2) 40)
	(= (data Phenomenon12 image2) 226)
	(= (data Phenomenon3 image1) 108)
	(= (data Phenomenon4 image1) 124)
	(= (data Star5 image1) 68)
	(= (data Planet6 image1) 193)
	(= (data Star7 image1) 198)
	(= (data Star8 image1) 224)
	(= (data Star9 image1) 170)
	(= (data Star10 image1) 244)
	(= (data Star11 image1) 224)
	(= (data Phenomenon12 image1) 144)
	(= (slew_time Star1 GroundStation0) 1.67)
	(= (slew_time GroundStation0 Star1) 1.67)
	(= (slew_time GroundStation2 GroundStation0) 71.64)
	(= (slew_time GroundStation0 GroundStation2) 71.64)
	(= (slew_time GroundStation2 Star1) 19.45)
	(= (slew_time Star1 GroundStation2) 19.45)
	(= (slew_time Phenomenon3 GroundStation0) 6.898)
	(= (slew_time GroundStation0 Phenomenon3) 6.898)
	(= (slew_time Phenomenon3 Star1) 22.43)
	(= (slew_time Star1 Phenomenon3) 22.43)
	(= (slew_time Phenomenon3 GroundStation2) 11.36)
	(= (slew_time GroundStation2 Phenomenon3) 11.36)
	(= (slew_time Phenomenon4 GroundStation0) 2.97)
	(= (slew_time GroundStation0 Phenomenon4) 2.97)
	(= (slew_time Phenomenon4 Star1) 4.109)
	(= (slew_time Star1 Phenomenon4) 4.109)
	(= (slew_time Phenomenon4 GroundStation2) 77.26)
	(= (slew_time GroundStation2 Phenomenon4) 77.26)
	(= (slew_time Phenomenon4 Phenomenon3) 36.8)
	(= (slew_time Phenomenon3 Phenomenon4) 36.8)
	(= (slew_time Star5 GroundStation0) 68.74)
	(= (slew_time GroundStation0 Star5) 68.74)
	(= (slew_time Star5 Star1) 0.9862)
	(= (slew_time Star1 Star5) 0.9862)
	(= (slew_time Star5 GroundStation2) 62.9)
	(= (slew_time GroundStation2 Star5) 62.9)
	(= (slew_time Star5 Phenomenon3) 59.05)
	(= (slew_time Phenomenon3 Star5) 59.05)
	(= (slew_time Star5 Phenomenon4) 11.69)
	(= (slew_time Phenomenon4 Star5) 11.69)
	(= (slew_time Planet6 GroundStation0) 28.83)
	(= (slew_time GroundStation0 Planet6) 28.83)
	(= (slew_time Planet6 Star1) 38.03)
	(= (slew_time Star1 Planet6) 38.03)
	(= (slew_time Planet6 GroundStation2) 12.33)
	(= (slew_time GroundStation2 Planet6) 12.33)
	(= (slew_time Planet6 Phenomenon3) 77.02)
	(= (slew_time Phenomenon3 Planet6) 77.02)
	(= (slew_time Planet6 Phenomenon4) 13.5)
	(= (slew_time Phenomenon4 Planet6) 13.5)
	(= (slew_time Planet6 Star5) 22.1)
	(= (slew_time Star5 Planet6) 22.1)
	(= (slew_time Star7 GroundStation0) 26.88)
	(= (slew_time GroundStation0 Star7) 26.88)
	(= (slew_time Star7 Star1) 10.49)
	(= (slew_time Star1 Star7) 10.49)
	(= (slew_time Star7 GroundStation2) 37.95)
	(= (slew_time GroundStation2 Star7) 37.95)
	(= (slew_time Star7 Phenomenon3) 64.61)
	(= (slew_time Phenomenon3 Star7) 64.61)
	(= (slew_time Star7 Phenomenon4) 27.23)
	(= (slew_time Phenomenon4 Star7) 27.23)
	(= (slew_time Star7 Star5) 34.04)
	(= (slew_time Star5 Star7) 34.04)
	(= (slew_time Star7 Planet6) 2.092)
	(= (slew_time Planet6 Star7) 2.092)
	(= (slew_time Star8 GroundStation0) 43.41)
	(= (slew_time GroundStation0 Star8) 43.41)
	(= (slew_time Star8 Star1) 56.35)
	(= (slew_time Star1 Star8) 56.35)
	(= (slew_time Star8 GroundStation2) 15.55)
	(= (slew_time GroundStation2 Star8) 15.55)
	(= (slew_time Star8 Phenomenon3) 96.45)
	(= (slew_time Phenomenon3 Star8) 96.45)
	(= (slew_time Star8 Phenomenon4) 66.58)
	(= (slew_time Phenomenon4 Star8) 66.58)
	(= (slew_time Star8 Star5) 24.94)
	(= (slew_time Star5 Star8) 24.94)
	(= (slew_time Star8 Planet6) 8.078)
	(= (slew_time Planet6 Star8) 8.078)
	(= (slew_time Star8 Star7) 44.62)
	(= (slew_time Star7 Star8) 44.62)
	(= (slew_time Star9 GroundStation0) 6.12)
	(= (slew_time GroundStation0 Star9) 6.12)
	(= (slew_time Star9 Star1) 21.55)
	(= (slew_time Star1 Star9) 21.55)
	(= (slew_time Star9 GroundStation2) 54.09)
	(= (slew_time GroundStation2 Star9) 54.09)
	(= (slew_time Star9 Phenomenon3) 28.75)
	(= (slew_time Phenomenon3 Star9) 28.75)
	(= (slew_time Star9 Phenomenon4) 8.156)
	(= (slew_time Phenomenon4 Star9) 8.156)
	(= (slew_time Star9 Star5) 68.83)
	(= (slew_time Star5 Star9) 68.83)
	(= (slew_time Star9 Planet6) 2.817)
	(= (slew_time Planet6 Star9) 2.817)
	(= (slew_time Star9 Star7) 1.867)
	(= (slew_time Star7 Star9) 1.867)
	(= (slew_time Star9 Star8) 29.21)
	(= (slew_time Star8 Star9) 29.21)
	(= (slew_time Star10 GroundStation0) 11.72)
	(= (slew_time GroundStation0 Star10) 11.72)
	(= (slew_time Star10 Star1) 13.74)
	(= (slew_time Star1 Star10) 13.74)
	(= (slew_time Star10 GroundStation2) 68.03)
	(= (slew_time GroundStation2 Star10) 68.03)
	(= (slew_time Star10 Phenomenon3) 39.94)
	(= (slew_time Phenomenon3 Star10) 39.94)
	(= (slew_time Star10 Phenomenon4) 30.14)
	(= (slew_time Phenomenon4 Star10) 30.14)
	(= (slew_time Star10 Star5) 32.88)
	(= (slew_time Star5 Star10) 32.88)
	(= (slew_time Star10 Planet6) 32.72)
	(= (slew_time Planet6 Star10) 32.72)
	(= (slew_time Star10 Star7) 8.027)
	(= (slew_time Star7 Star10) 8.027)
	(= (slew_time Star10 Star8) 69.2)
	(= (slew_time Star8 Star10) 69.2)
	(= (slew_time Star10 Star9) 3.036)
	(= (slew_time Star9 Star10) 3.036)
	(= (slew_time Star11 GroundStation0) 27.31)
	(= (slew_time GroundStation0 Star11) 27.31)
	(= (slew_time Star11 Star1) 29.17)
	(= (slew_time Star1 Star11) 29.17)
	(= (slew_time Star11 GroundStation2) 37.91)
	(= (slew_time GroundStation2 Star11) 37.91)
	(= (slew_time Star11 Phenomenon3) 57.26)
	(= (slew_time Phenomenon3 Star11) 57.26)
	(= (slew_time Star11 Phenomenon4) 12.5)
	(= (slew_time Phenomenon4 Star11) 12.5)
	(= (slew_time Star11 Star5) 31.72)
	(= (slew_time Star5 Star11) 31.72)
	(= (slew_time Star11 Planet6) 20.25)
	(= (slew_time Planet6 Star11) 20.25)
	(= (slew_time Star11 Star7) 30.22)
	(= (slew_time Star7 Star11) 30.22)
	(= (slew_time Star11 Star8) 46.83)
	(= (slew_time Star8 Star11) 46.83)
	(= (slew_time Star11 Star9) 55.84)
	(= (slew_time Star9 Star11) 55.84)
	(= (slew_time Star11 Star10) 26.01)
	(= (slew_time Star10 Star11) 26.01)
	(= (slew_time Phenomenon12 GroundStation0) 44.78)
	(= (slew_time GroundStation0 Phenomenon12) 44.78)
	(= (slew_time Phenomenon12 Star1) 31.42)
	(= (slew_time Star1 Phenomenon12) 31.42)
	(= (slew_time Phenomenon12 GroundStation2) 49.32)
	(= (slew_time GroundStation2 Phenomenon12) 49.32)
	(= (slew_time Phenomenon12 Phenomenon3) 8.739)
	(= (slew_time Phenomenon3 Phenomenon12) 8.739)
	(= (slew_time Phenomenon12 Phenomenon4) 33.52)
	(= (slew_time Phenomenon4 Phenomenon12) 33.52)
	(= (slew_time Phenomenon12 Star5) 57.11)
	(= (slew_time Star5 Phenomenon12) 57.11)
	(= (slew_time Phenomenon12 Planet6) 64.64)
	(= (slew_time Planet6 Phenomenon12) 64.64)
	(= (slew_time Phenomenon12 Star7) 40.36)
	(= (slew_time Star7 Phenomenon12) 40.36)
	(= (slew_time Phenomenon12 Star8) 44.58)
	(= (slew_time Star8 Phenomenon12) 44.58)
	(= (slew_time Phenomenon12 Star9) 7.105)
	(= (slew_time Star9 Phenomenon12) 7.105)
	(= (slew_time Phenomenon12 Star10) 14.71)
	(= (slew_time Star10 Phenomenon12) 14.71)
	(= (slew_time Phenomenon12 Star11) 56.17)
	(= (slew_time Star11 Phenomenon12) 56.17)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 GroundStation2)
	(pointing satellite2 Star11)
	(pointing satellite4 Star9)
	(have_image Phenomenon3 infrared0)
	(have_image Star5 thermograph3)
	(have_image Planet6 image4)
	(have_image Star7 image4)
	(have_image Star9 image2)
	(have_image Star10 image1)
	(have_image Star11 infrared0)
	(have_image Phenomenon12 image4)
))
(:metric minimize (fuel-used))

)
