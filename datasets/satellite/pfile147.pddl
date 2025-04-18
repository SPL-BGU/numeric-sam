(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	thermograph0 - mode
	thermograph1 - mode
	infrared2 - mode
	infrared3 - mode
	Star1 - direction
	Star0 - direction
	GroundStation2 - direction
	Star3 - direction
	Planet4 - direction
	Phenomenon5 - direction
	Planet6 - direction
	Planet7 - direction
	Planet8 - direction
	Star9 - direction
	Phenomenon10 - direction
	Phenomenon11 - direction
	Star12 - direction
	Star13 - direction
	Planet14 - direction
	Planet15 - direction
)
(:init
	(supports instrument0 thermograph1)
	(supports instrument0 infrared2)
	(calibration_target instrument0 GroundStation2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet14)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 144)
	(supports instrument1 thermograph0)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 Star1)
	(supports instrument2 infrared3)
	(supports instrument2 infrared2)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 GroundStation2)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet6)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 137)
	(supports instrument3 infrared3)
	(calibration_target instrument3 Star1)
	(supports instrument4 infrared2)
	(supports instrument4 infrared3)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 Star0)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet7)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 199)
	(supports instrument5 thermograph1)
	(calibration_target instrument5 Star0)
	(supports instrument6 thermograph0)
	(calibration_target instrument6 Star0)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet14)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 138)
	(supports instrument7 thermograph0)
	(supports instrument7 infrared3)
	(calibration_target instrument7 Star0)
	(supports instrument8 infrared3)
	(supports instrument8 infrared2)
	(supports instrument8 thermograph1)
	(calibration_target instrument8 GroundStation2)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet7)
	(= (data_capacity satellite4) 1000)
	(= (fuel satellite4) 132)
	(= (data Star3 thermograph0) 113)
	(= (data Planet4 thermograph0) 74)
	(= (data Phenomenon5 thermograph0) 79)
	(= (data Planet6 thermograph0) 233)
	(= (data Planet7 thermograph0) 10)
	(= (data Planet8 thermograph0) 250)
	(= (data Star9 thermograph0) 243)
	(= (data Phenomenon10 thermograph0) 146)
	(= (data Phenomenon11 thermograph0) 226)
	(= (data Star12 thermograph0) 247)
	(= (data Star13 thermograph0) 113)
	(= (data Planet14 thermograph0) 74)
	(= (data Planet15 thermograph0) 174)
	(= (data Star3 thermograph1) 218)
	(= (data Planet4 thermograph1) 151)
	(= (data Phenomenon5 thermograph1) 298)
	(= (data Planet6 thermograph1) 149)
	(= (data Planet7 thermograph1) 256)
	(= (data Planet8 thermograph1) 225)
	(= (data Star9 thermograph1) 131)
	(= (data Phenomenon10 thermograph1) 128)
	(= (data Phenomenon11 thermograph1) 130)
	(= (data Star12 thermograph1) 282)
	(= (data Star13 thermograph1) 205)
	(= (data Planet14 thermograph1) 57)
	(= (data Planet15 thermograph1) 56)
	(= (data Star3 infrared2) 137)
	(= (data Planet4 infrared2) 205)
	(= (data Phenomenon5 infrared2) 243)
	(= (data Planet6 infrared2) 164)
	(= (data Planet7 infrared2) 267)
	(= (data Planet8 infrared2) 270)
	(= (data Star9 infrared2) 32)
	(= (data Phenomenon10 infrared2) 75)
	(= (data Phenomenon11 infrared2) 252)
	(= (data Star12 infrared2) 12)
	(= (data Star13 infrared2) 165)
	(= (data Planet14 infrared2) 147)
	(= (data Planet15 infrared2) 256)
	(= (data Star3 infrared3) 234)
	(= (data Planet4 infrared3) 247)
	(= (data Phenomenon5 infrared3) 276)
	(= (data Planet6 infrared3) 208)
	(= (data Planet7 infrared3) 28)
	(= (data Planet8 infrared3) 245)
	(= (data Star9 infrared3) 28)
	(= (data Phenomenon10 infrared3) 88)
	(= (data Phenomenon11 infrared3) 1)
	(= (data Star12 infrared3) 164)
	(= (data Star13 infrared3) 8)
	(= (data Planet14 infrared3) 174)
	(= (data Planet15 infrared3) 94)
	(= (slew_time Star1 Star0) 58.73)
	(= (slew_time Star0 Star1) 58.73)
	(= (slew_time GroundStation2 Star0) 61.9)
	(= (slew_time Star0 GroundStation2) 61.9)
	(= (slew_time GroundStation2 Star1) 16.24)
	(= (slew_time Star1 GroundStation2) 16.24)
	(= (slew_time Star3 Star0) 17.01)
	(= (slew_time Star0 Star3) 17.01)
	(= (slew_time Star3 Star1) 93.15)
	(= (slew_time Star1 Star3) 93.15)
	(= (slew_time Star3 GroundStation2) 34.18)
	(= (slew_time GroundStation2 Star3) 34.18)
	(= (slew_time Planet4 Star0) 15.29)
	(= (slew_time Star0 Planet4) 15.29)
	(= (slew_time Planet4 Star1) 29.83)
	(= (slew_time Star1 Planet4) 29.83)
	(= (slew_time Planet4 GroundStation2) 3.546)
	(= (slew_time GroundStation2 Planet4) 3.546)
	(= (slew_time Planet4 Star3) 4.881)
	(= (slew_time Star3 Planet4) 4.881)
	(= (slew_time Phenomenon5 Star0) 24.89)
	(= (slew_time Star0 Phenomenon5) 24.89)
	(= (slew_time Phenomenon5 Star1) 0.1753)
	(= (slew_time Star1 Phenomenon5) 0.1753)
	(= (slew_time Phenomenon5 GroundStation2) 19.27)
	(= (slew_time GroundStation2 Phenomenon5) 19.27)
	(= (slew_time Phenomenon5 Star3) 79.5)
	(= (slew_time Star3 Phenomenon5) 79.5)
	(= (slew_time Phenomenon5 Planet4) 55.27)
	(= (slew_time Planet4 Phenomenon5) 55.27)
	(= (slew_time Planet6 Star0) 4.714)
	(= (slew_time Star0 Planet6) 4.714)
	(= (slew_time Planet6 Star1) 44.07)
	(= (slew_time Star1 Planet6) 44.07)
	(= (slew_time Planet6 GroundStation2) 39.23)
	(= (slew_time GroundStation2 Planet6) 39.23)
	(= (slew_time Planet6 Star3) 26.79)
	(= (slew_time Star3 Planet6) 26.79)
	(= (slew_time Planet6 Planet4) 59.38)
	(= (slew_time Planet4 Planet6) 59.38)
	(= (slew_time Planet6 Phenomenon5) 28.83)
	(= (slew_time Phenomenon5 Planet6) 28.83)
	(= (slew_time Planet7 Star0) 3.313)
	(= (slew_time Star0 Planet7) 3.313)
	(= (slew_time Planet7 Star1) 13.9)
	(= (slew_time Star1 Planet7) 13.9)
	(= (slew_time Planet7 GroundStation2) 59.94)
	(= (slew_time GroundStation2 Planet7) 59.94)
	(= (slew_time Planet7 Star3) 13.78)
	(= (slew_time Star3 Planet7) 13.78)
	(= (slew_time Planet7 Planet4) 65.71)
	(= (slew_time Planet4 Planet7) 65.71)
	(= (slew_time Planet7 Phenomenon5) 24.1)
	(= (slew_time Phenomenon5 Planet7) 24.1)
	(= (slew_time Planet7 Planet6) 32.13)
	(= (slew_time Planet6 Planet7) 32.13)
	(= (slew_time Planet8 Star0) 58.06)
	(= (slew_time Star0 Planet8) 58.06)
	(= (slew_time Planet8 Star1) 14.93)
	(= (slew_time Star1 Planet8) 14.93)
	(= (slew_time Planet8 GroundStation2) 18.72)
	(= (slew_time GroundStation2 Planet8) 18.72)
	(= (slew_time Planet8 Star3) 48.66)
	(= (slew_time Star3 Planet8) 48.66)
	(= (slew_time Planet8 Planet4) 20.17)
	(= (slew_time Planet4 Planet8) 20.17)
	(= (slew_time Planet8 Phenomenon5) 3.284)
	(= (slew_time Phenomenon5 Planet8) 3.284)
	(= (slew_time Planet8 Planet6) 55.76)
	(= (slew_time Planet6 Planet8) 55.76)
	(= (slew_time Planet8 Planet7) 18.47)
	(= (slew_time Planet7 Planet8) 18.47)
	(= (slew_time Star9 Star0) 13.78)
	(= (slew_time Star0 Star9) 13.78)
	(= (slew_time Star9 Star1) 37.81)
	(= (slew_time Star1 Star9) 37.81)
	(= (slew_time Star9 GroundStation2) 41.84)
	(= (slew_time GroundStation2 Star9) 41.84)
	(= (slew_time Star9 Star3) 20.63)
	(= (slew_time Star3 Star9) 20.63)
	(= (slew_time Star9 Planet4) 52.44)
	(= (slew_time Planet4 Star9) 52.44)
	(= (slew_time Star9 Phenomenon5) 40.06)
	(= (slew_time Phenomenon5 Star9) 40.06)
	(= (slew_time Star9 Planet6) 81.43)
	(= (slew_time Planet6 Star9) 81.43)
	(= (slew_time Star9 Planet7) 95.48)
	(= (slew_time Planet7 Star9) 95.48)
	(= (slew_time Star9 Planet8) 39.43)
	(= (slew_time Planet8 Star9) 39.43)
	(= (slew_time Phenomenon10 Star0) 39.03)
	(= (slew_time Star0 Phenomenon10) 39.03)
	(= (slew_time Phenomenon10 Star1) 39.56)
	(= (slew_time Star1 Phenomenon10) 39.56)
	(= (slew_time Phenomenon10 GroundStation2) 69.42)
	(= (slew_time GroundStation2 Phenomenon10) 69.42)
	(= (slew_time Phenomenon10 Star3) 14.32)
	(= (slew_time Star3 Phenomenon10) 14.32)
	(= (slew_time Phenomenon10 Planet4) 15.05)
	(= (slew_time Planet4 Phenomenon10) 15.05)
	(= (slew_time Phenomenon10 Phenomenon5) 24.5)
	(= (slew_time Phenomenon5 Phenomenon10) 24.5)
	(= (slew_time Phenomenon10 Planet6) 39.94)
	(= (slew_time Planet6 Phenomenon10) 39.94)
	(= (slew_time Phenomenon10 Planet7) 11.28)
	(= (slew_time Planet7 Phenomenon10) 11.28)
	(= (slew_time Phenomenon10 Planet8) 0.9004)
	(= (slew_time Planet8 Phenomenon10) 0.9004)
	(= (slew_time Phenomenon10 Star9) 28.6)
	(= (slew_time Star9 Phenomenon10) 28.6)
	(= (slew_time Phenomenon11 Star0) 50.47)
	(= (slew_time Star0 Phenomenon11) 50.47)
	(= (slew_time Phenomenon11 Star1) 2.384)
	(= (slew_time Star1 Phenomenon11) 2.384)
	(= (slew_time Phenomenon11 GroundStation2) 7.115)
	(= (slew_time GroundStation2 Phenomenon11) 7.115)
	(= (slew_time Phenomenon11 Star3) 80.49)
	(= (slew_time Star3 Phenomenon11) 80.49)
	(= (slew_time Phenomenon11 Planet4) 9.498)
	(= (slew_time Planet4 Phenomenon11) 9.498)
	(= (slew_time Phenomenon11 Phenomenon5) 16.23)
	(= (slew_time Phenomenon5 Phenomenon11) 16.23)
	(= (slew_time Phenomenon11 Planet6) 50.97)
	(= (slew_time Planet6 Phenomenon11) 50.97)
	(= (slew_time Phenomenon11 Planet7) 18.97)
	(= (slew_time Planet7 Phenomenon11) 18.97)
	(= (slew_time Phenomenon11 Planet8) 19.67)
	(= (slew_time Planet8 Phenomenon11) 19.67)
	(= (slew_time Phenomenon11 Star9) 70.91)
	(= (slew_time Star9 Phenomenon11) 70.91)
	(= (slew_time Phenomenon11 Phenomenon10) 22.15)
	(= (slew_time Phenomenon10 Phenomenon11) 22.15)
	(= (slew_time Star12 Star0) 2.349)
	(= (slew_time Star0 Star12) 2.349)
	(= (slew_time Star12 Star1) 25.19)
	(= (slew_time Star1 Star12) 25.19)
	(= (slew_time Star12 GroundStation2) 54.36)
	(= (slew_time GroundStation2 Star12) 54.36)
	(= (slew_time Star12 Star3) 62.86)
	(= (slew_time Star3 Star12) 62.86)
	(= (slew_time Star12 Planet4) 8.839)
	(= (slew_time Planet4 Star12) 8.839)
	(= (slew_time Star12 Phenomenon5) 20.93)
	(= (slew_time Phenomenon5 Star12) 20.93)
	(= (slew_time Star12 Planet6) 3.091)
	(= (slew_time Planet6 Star12) 3.091)
	(= (slew_time Star12 Planet7) 0.879)
	(= (slew_time Planet7 Star12) 0.879)
	(= (slew_time Star12 Planet8) 37.19)
	(= (slew_time Planet8 Star12) 37.19)
	(= (slew_time Star12 Star9) 23.57)
	(= (slew_time Star9 Star12) 23.57)
	(= (slew_time Star12 Phenomenon10) 37.56)
	(= (slew_time Phenomenon10 Star12) 37.56)
	(= (slew_time Star12 Phenomenon11) 23.96)
	(= (slew_time Phenomenon11 Star12) 23.96)
	(= (slew_time Star13 Star0) 24.16)
	(= (slew_time Star0 Star13) 24.16)
	(= (slew_time Star13 Star1) 9.343)
	(= (slew_time Star1 Star13) 9.343)
	(= (slew_time Star13 GroundStation2) 93.21)
	(= (slew_time GroundStation2 Star13) 93.21)
	(= (slew_time Star13 Star3) 4.069)
	(= (slew_time Star3 Star13) 4.069)
	(= (slew_time Star13 Planet4) 55.43)
	(= (slew_time Planet4 Star13) 55.43)
	(= (slew_time Star13 Phenomenon5) 8.239)
	(= (slew_time Phenomenon5 Star13) 8.239)
	(= (slew_time Star13 Planet6) 11.23)
	(= (slew_time Planet6 Star13) 11.23)
	(= (slew_time Star13 Planet7) 57.36)
	(= (slew_time Planet7 Star13) 57.36)
	(= (slew_time Star13 Planet8) 9.672)
	(= (slew_time Planet8 Star13) 9.672)
	(= (slew_time Star13 Star9) 14.7)
	(= (slew_time Star9 Star13) 14.7)
	(= (slew_time Star13 Phenomenon10) 17.64)
	(= (slew_time Phenomenon10 Star13) 17.64)
	(= (slew_time Star13 Phenomenon11) 7.181)
	(= (slew_time Phenomenon11 Star13) 7.181)
	(= (slew_time Star13 Star12) 9.475)
	(= (slew_time Star12 Star13) 9.475)
	(= (slew_time Planet14 Star0) 17.02)
	(= (slew_time Star0 Planet14) 17.02)
	(= (slew_time Planet14 Star1) 11.99)
	(= (slew_time Star1 Planet14) 11.99)
	(= (slew_time Planet14 GroundStation2) 25.4)
	(= (slew_time GroundStation2 Planet14) 25.4)
	(= (slew_time Planet14 Star3) 4.224)
	(= (slew_time Star3 Planet14) 4.224)
	(= (slew_time Planet14 Planet4) 1.964)
	(= (slew_time Planet4 Planet14) 1.964)
	(= (slew_time Planet14 Phenomenon5) 8.041)
	(= (slew_time Phenomenon5 Planet14) 8.041)
	(= (slew_time Planet14 Planet6) 63.88)
	(= (slew_time Planet6 Planet14) 63.88)
	(= (slew_time Planet14 Planet7) 63.68)
	(= (slew_time Planet7 Planet14) 63.68)
	(= (slew_time Planet14 Planet8) 64.95)
	(= (slew_time Planet8 Planet14) 64.95)
	(= (slew_time Planet14 Star9) 82.77)
	(= (slew_time Star9 Planet14) 82.77)
	(= (slew_time Planet14 Phenomenon10) 11.74)
	(= (slew_time Phenomenon10 Planet14) 11.74)
	(= (slew_time Planet14 Phenomenon11) 73.07)
	(= (slew_time Phenomenon11 Planet14) 73.07)
	(= (slew_time Planet14 Star12) 52.16)
	(= (slew_time Star12 Planet14) 52.16)
	(= (slew_time Planet14 Star13) 5.667)
	(= (slew_time Star13 Planet14) 5.667)
	(= (slew_time Planet15 Star0) 13.38)
	(= (slew_time Star0 Planet15) 13.38)
	(= (slew_time Planet15 Star1) 62.92)
	(= (slew_time Star1 Planet15) 62.92)
	(= (slew_time Planet15 GroundStation2) 71.33)
	(= (slew_time GroundStation2 Planet15) 71.33)
	(= (slew_time Planet15 Star3) 59.95)
	(= (slew_time Star3 Planet15) 59.95)
	(= (slew_time Planet15 Planet4) 62.83)
	(= (slew_time Planet4 Planet15) 62.83)
	(= (slew_time Planet15 Phenomenon5) 28.87)
	(= (slew_time Phenomenon5 Planet15) 28.87)
	(= (slew_time Planet15 Planet6) 4.946)
	(= (slew_time Planet6 Planet15) 4.946)
	(= (slew_time Planet15 Planet7) 0.09739)
	(= (slew_time Planet7 Planet15) 0.09739)
	(= (slew_time Planet15 Planet8) 15.07)
	(= (slew_time Planet8 Planet15) 15.07)
	(= (slew_time Planet15 Star9) 9.856)
	(= (slew_time Star9 Planet15) 9.856)
	(= (slew_time Planet15 Phenomenon10) 42.96)
	(= (slew_time Phenomenon10 Planet15) 42.96)
	(= (slew_time Planet15 Phenomenon11) 41.19)
	(= (slew_time Phenomenon11 Planet15) 41.19)
	(= (slew_time Planet15 Star12) 50.7)
	(= (slew_time Star12 Planet15) 50.7)
	(= (slew_time Planet15 Star13) 15.83)
	(= (slew_time Star13 Planet15) 15.83)
	(= (slew_time Planet15 Planet14) 10.68)
	(= (slew_time Planet14 Planet15) 10.68)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Star12)
	(pointing satellite1 Planet6)
	(have_image Star3 thermograph1)
	(have_image Phenomenon5 thermograph0)
	(have_image Planet6 thermograph1)
	(have_image Planet7 thermograph1)
	(have_image Planet8 infrared3)
	(have_image Star9 thermograph0)
	(have_image Phenomenon10 thermograph0)
	(have_image Phenomenon11 thermograph1)
	(have_image Star12 infrared2)
	(have_image Star13 infrared3)
	(have_image Planet14 thermograph1)
	(have_image Planet15 infrared3)
))
(:metric minimize (fuel-used))

)
