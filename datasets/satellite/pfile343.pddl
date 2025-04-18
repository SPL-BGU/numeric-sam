(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	instrument4 - instrument
	satellite2 - satellite
	instrument5 - instrument
	instrument6 - instrument
	instrument7 - instrument
	satellite3 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	satellite4 - satellite
	instrument11 - instrument
	image2 - mode
	spectrograph1 - mode
	thermograph0 - mode
	thermograph3 - mode
	GroundStation2 - direction
	Star0 - direction
	GroundStation3 - direction
	GroundStation1 - direction
	GroundStation4 - direction
	Star5 - direction
	Star6 - direction
	Star7 - direction
	Planet8 - direction
	Planet9 - direction
	Planet10 - direction
	Star11 - direction
	Star12 - direction
	Planet13 - direction
	Planet14 - direction
	Phenomenon15 - direction
	Star16 - direction
)
(:init
	(supports instrument0 thermograph0)
	(supports instrument0 image2)
	(supports instrument0 spectrograph1)
	(calibration_target instrument0 GroundStation3)
	(supports instrument1 thermograph3)
	(supports instrument1 image2)
	(supports instrument1 spectrograph1)
	(calibration_target instrument1 GroundStation4)
	(supports instrument2 thermograph0)
	(supports instrument2 spectrograph1)
	(calibration_target instrument2 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star6)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 150)
	(supports instrument3 thermograph3)
	(supports instrument3 image2)
	(calibration_target instrument3 GroundStation1)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 GroundStation1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star0)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 149)
	(supports instrument5 thermograph0)
	(calibration_target instrument5 GroundStation4)
	(supports instrument6 thermograph0)
	(supports instrument6 image2)
	(calibration_target instrument6 GroundStation4)
	(supports instrument7 image2)
	(supports instrument7 thermograph0)
	(calibration_target instrument7 GroundStation1)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star0)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 194)
	(supports instrument8 thermograph0)
	(supports instrument8 spectrograph1)
	(calibration_target instrument8 Star0)
	(supports instrument9 thermograph3)
	(supports instrument9 thermograph0)
	(supports instrument9 spectrograph1)
	(calibration_target instrument9 GroundStation3)
	(supports instrument10 thermograph0)
	(supports instrument10 image2)
	(supports instrument10 thermograph3)
	(calibration_target instrument10 GroundStation1)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(on_board instrument10 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star6)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 142)
	(supports instrument11 thermograph3)
	(supports instrument11 thermograph0)
	(supports instrument11 spectrograph1)
	(calibration_target instrument11 GroundStation4)
	(on_board instrument11 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star5)
	(= (data_capacity satellite4) 1000)
	(= (fuel satellite4) 108)
	(= (data Star5 image2) 174)
	(= (data Star6 image2) 10)
	(= (data Star7 image2) 75)
	(= (data Planet8 image2) 107)
	(= (data Planet9 image2) 100)
	(= (data Planet10 image2) 152)
	(= (data Star11 image2) 214)
	(= (data Star12 image2) 23)
	(= (data Planet13 image2) 27)
	(= (data Planet14 image2) 238)
	(= (data Phenomenon15 image2) 67)
	(= (data Star16 image2) 242)
	(= (data Star5 spectrograph1) 121)
	(= (data Star6 spectrograph1) 172)
	(= (data Star7 spectrograph1) 6)
	(= (data Planet8 spectrograph1) 76)
	(= (data Planet9 spectrograph1) 141)
	(= (data Planet10 spectrograph1) 148)
	(= (data Star11 spectrograph1) 188)
	(= (data Star12 spectrograph1) 297)
	(= (data Planet13 spectrograph1) 101)
	(= (data Planet14 spectrograph1) 263)
	(= (data Phenomenon15 spectrograph1) 136)
	(= (data Star16 spectrograph1) 239)
	(= (data Star5 thermograph0) 259)
	(= (data Star6 thermograph0) 130)
	(= (data Star7 thermograph0) 294)
	(= (data Planet8 thermograph0) 108)
	(= (data Planet9 thermograph0) 164)
	(= (data Planet10 thermograph0) 46)
	(= (data Star11 thermograph0) 200)
	(= (data Star12 thermograph0) 36)
	(= (data Planet13 thermograph0) 291)
	(= (data Planet14 thermograph0) 20)
	(= (data Phenomenon15 thermograph0) 295)
	(= (data Star16 thermograph0) 168)
	(= (data Star5 thermograph3) 73)
	(= (data Star6 thermograph3) 166)
	(= (data Star7 thermograph3) 168)
	(= (data Planet8 thermograph3) 137)
	(= (data Planet9 thermograph3) 121)
	(= (data Planet10 thermograph3) 210)
	(= (data Star11 thermograph3) 51)
	(= (data Star12 thermograph3) 133)
	(= (data Planet13 thermograph3) 251)
	(= (data Planet14 thermograph3) 174)
	(= (data Phenomenon15 thermograph3) 217)
	(= (data Star16 thermograph3) 290)
	(= (slew_time GroundStation2 Star0) 38.62)
	(= (slew_time Star0 GroundStation2) 38.62)
	(= (slew_time GroundStation2 GroundStation1) 44.49)
	(= (slew_time GroundStation1 GroundStation2) 44.49)
	(= (slew_time GroundStation3 Star0) 34.68)
	(= (slew_time Star0 GroundStation3) 34.68)
	(= (slew_time GroundStation3 GroundStation1) 34.9)
	(= (slew_time GroundStation1 GroundStation3) 34.9)
	(= (slew_time GroundStation3 GroundStation2) 27.1)
	(= (slew_time GroundStation2 GroundStation3) 27.1)
	(= (slew_time GroundStation1 Star0) 53.41)
	(= (slew_time Star0 GroundStation1) 53.41)
	(= (slew_time GroundStation4 Star0) 4.44)
	(= (slew_time Star0 GroundStation4) 4.44)
	(= (slew_time GroundStation4 GroundStation1) 6.01)
	(= (slew_time GroundStation1 GroundStation4) 6.01)
	(= (slew_time GroundStation4 GroundStation2) 27.35)
	(= (slew_time GroundStation2 GroundStation4) 27.35)
	(= (slew_time GroundStation4 GroundStation3) 55.18)
	(= (slew_time GroundStation3 GroundStation4) 55.18)
	(= (slew_time Star5 Star0) 79.09)
	(= (slew_time Star0 Star5) 79.09)
	(= (slew_time Star5 GroundStation1) 25.36)
	(= (slew_time GroundStation1 Star5) 25.36)
	(= (slew_time Star5 GroundStation2) 22.29)
	(= (slew_time GroundStation2 Star5) 22.29)
	(= (slew_time Star5 GroundStation3) 66.96)
	(= (slew_time GroundStation3 Star5) 66.96)
	(= (slew_time Star5 GroundStation4) 38.35)
	(= (slew_time GroundStation4 Star5) 38.35)
	(= (slew_time Star6 Star0) 10.1)
	(= (slew_time Star0 Star6) 10.1)
	(= (slew_time Star6 GroundStation1) 53.84)
	(= (slew_time GroundStation1 Star6) 53.84)
	(= (slew_time Star6 GroundStation2) 56.52)
	(= (slew_time GroundStation2 Star6) 56.52)
	(= (slew_time Star6 GroundStation3) 46.73)
	(= (slew_time GroundStation3 Star6) 46.73)
	(= (slew_time Star6 GroundStation4) 22.27)
	(= (slew_time GroundStation4 Star6) 22.27)
	(= (slew_time Star6 Star5) 13.34)
	(= (slew_time Star5 Star6) 13.34)
	(= (slew_time Star7 Star0) 14.78)
	(= (slew_time Star0 Star7) 14.78)
	(= (slew_time Star7 GroundStation1) 11.05)
	(= (slew_time GroundStation1 Star7) 11.05)
	(= (slew_time Star7 GroundStation2) 68.48)
	(= (slew_time GroundStation2 Star7) 68.48)
	(= (slew_time Star7 GroundStation3) 13.28)
	(= (slew_time GroundStation3 Star7) 13.28)
	(= (slew_time Star7 GroundStation4) 41.14)
	(= (slew_time GroundStation4 Star7) 41.14)
	(= (slew_time Star7 Star5) 5.096)
	(= (slew_time Star5 Star7) 5.096)
	(= (slew_time Star7 Star6) 18.45)
	(= (slew_time Star6 Star7) 18.45)
	(= (slew_time Planet8 Star0) 7.601)
	(= (slew_time Star0 Planet8) 7.601)
	(= (slew_time Planet8 GroundStation1) 56.18)
	(= (slew_time GroundStation1 Planet8) 56.18)
	(= (slew_time Planet8 GroundStation2) 29.12)
	(= (slew_time GroundStation2 Planet8) 29.12)
	(= (slew_time Planet8 GroundStation3) 38.07)
	(= (slew_time GroundStation3 Planet8) 38.07)
	(= (slew_time Planet8 GroundStation4) 51.52)
	(= (slew_time GroundStation4 Planet8) 51.52)
	(= (slew_time Planet8 Star5) 36.39)
	(= (slew_time Star5 Planet8) 36.39)
	(= (slew_time Planet8 Star6) 1.015)
	(= (slew_time Star6 Planet8) 1.015)
	(= (slew_time Planet8 Star7) 18.29)
	(= (slew_time Star7 Planet8) 18.29)
	(= (slew_time Planet9 Star0) 72.07)
	(= (slew_time Star0 Planet9) 72.07)
	(= (slew_time Planet9 GroundStation1) 15.01)
	(= (slew_time GroundStation1 Planet9) 15.01)
	(= (slew_time Planet9 GroundStation2) 65.99)
	(= (slew_time GroundStation2 Planet9) 65.99)
	(= (slew_time Planet9 GroundStation3) 33.73)
	(= (slew_time GroundStation3 Planet9) 33.73)
	(= (slew_time Planet9 GroundStation4) 65.53)
	(= (slew_time GroundStation4 Planet9) 65.53)
	(= (slew_time Planet9 Star5) 42.43)
	(= (slew_time Star5 Planet9) 42.43)
	(= (slew_time Planet9 Star6) 7.177)
	(= (slew_time Star6 Planet9) 7.177)
	(= (slew_time Planet9 Star7) 71.85)
	(= (slew_time Star7 Planet9) 71.85)
	(= (slew_time Planet9 Planet8) 18.93)
	(= (slew_time Planet8 Planet9) 18.93)
	(= (slew_time Planet10 Star0) 44.85)
	(= (slew_time Star0 Planet10) 44.85)
	(= (slew_time Planet10 GroundStation1) 5.862)
	(= (slew_time GroundStation1 Planet10) 5.862)
	(= (slew_time Planet10 GroundStation2) 75.21)
	(= (slew_time GroundStation2 Planet10) 75.21)
	(= (slew_time Planet10 GroundStation3) 34.27)
	(= (slew_time GroundStation3 Planet10) 34.27)
	(= (slew_time Planet10 GroundStation4) 42.05)
	(= (slew_time GroundStation4 Planet10) 42.05)
	(= (slew_time Planet10 Star5) 36.36)
	(= (slew_time Star5 Planet10) 36.36)
	(= (slew_time Planet10 Star6) 73.84)
	(= (slew_time Star6 Planet10) 73.84)
	(= (slew_time Planet10 Star7) 69.22)
	(= (slew_time Star7 Planet10) 69.22)
	(= (slew_time Planet10 Planet8) 23.83)
	(= (slew_time Planet8 Planet10) 23.83)
	(= (slew_time Planet10 Planet9) 27.05)
	(= (slew_time Planet9 Planet10) 27.05)
	(= (slew_time Star11 Star0) 12.61)
	(= (slew_time Star0 Star11) 12.61)
	(= (slew_time Star11 GroundStation1) 10.4)
	(= (slew_time GroundStation1 Star11) 10.4)
	(= (slew_time Star11 GroundStation2) 22.75)
	(= (slew_time GroundStation2 Star11) 22.75)
	(= (slew_time Star11 GroundStation3) 12.91)
	(= (slew_time GroundStation3 Star11) 12.91)
	(= (slew_time Star11 GroundStation4) 29.25)
	(= (slew_time GroundStation4 Star11) 29.25)
	(= (slew_time Star11 Star5) 11.82)
	(= (slew_time Star5 Star11) 11.82)
	(= (slew_time Star11 Star6) 47.44)
	(= (slew_time Star6 Star11) 47.44)
	(= (slew_time Star11 Star7) 21.11)
	(= (slew_time Star7 Star11) 21.11)
	(= (slew_time Star11 Planet8) 4.634)
	(= (slew_time Planet8 Star11) 4.634)
	(= (slew_time Star11 Planet9) 47.31)
	(= (slew_time Planet9 Star11) 47.31)
	(= (slew_time Star11 Planet10) 24.51)
	(= (slew_time Planet10 Star11) 24.51)
	(= (slew_time Star12 Star0) 34.76)
	(= (slew_time Star0 Star12) 34.76)
	(= (slew_time Star12 GroundStation1) 41.78)
	(= (slew_time GroundStation1 Star12) 41.78)
	(= (slew_time Star12 GroundStation2) 34.38)
	(= (slew_time GroundStation2 Star12) 34.38)
	(= (slew_time Star12 GroundStation3) 49.7)
	(= (slew_time GroundStation3 Star12) 49.7)
	(= (slew_time Star12 GroundStation4) 62.48)
	(= (slew_time GroundStation4 Star12) 62.48)
	(= (slew_time Star12 Star5) 5.529)
	(= (slew_time Star5 Star12) 5.529)
	(= (slew_time Star12 Star6) 33.24)
	(= (slew_time Star6 Star12) 33.24)
	(= (slew_time Star12 Star7) 24.8)
	(= (slew_time Star7 Star12) 24.8)
	(= (slew_time Star12 Planet8) 63.19)
	(= (slew_time Planet8 Star12) 63.19)
	(= (slew_time Star12 Planet9) 6.246)
	(= (slew_time Planet9 Star12) 6.246)
	(= (slew_time Star12 Planet10) 57.9)
	(= (slew_time Planet10 Star12) 57.9)
	(= (slew_time Star12 Star11) 4.38)
	(= (slew_time Star11 Star12) 4.38)
	(= (slew_time Planet13 Star0) 57.97)
	(= (slew_time Star0 Planet13) 57.97)
	(= (slew_time Planet13 GroundStation1) 33.06)
	(= (slew_time GroundStation1 Planet13) 33.06)
	(= (slew_time Planet13 GroundStation2) 56.94)
	(= (slew_time GroundStation2 Planet13) 56.94)
	(= (slew_time Planet13 GroundStation3) 60.35)
	(= (slew_time GroundStation3 Planet13) 60.35)
	(= (slew_time Planet13 GroundStation4) 62.91)
	(= (slew_time GroundStation4 Planet13) 62.91)
	(= (slew_time Planet13 Star5) 43.79)
	(= (slew_time Star5 Planet13) 43.79)
	(= (slew_time Planet13 Star6) 23.97)
	(= (slew_time Star6 Planet13) 23.97)
	(= (slew_time Planet13 Star7) 24.68)
	(= (slew_time Star7 Planet13) 24.68)
	(= (slew_time Planet13 Planet8) 1.978)
	(= (slew_time Planet8 Planet13) 1.978)
	(= (slew_time Planet13 Planet9) 55.09)
	(= (slew_time Planet9 Planet13) 55.09)
	(= (slew_time Planet13 Planet10) 12.66)
	(= (slew_time Planet10 Planet13) 12.66)
	(= (slew_time Planet13 Star11) 37.97)
	(= (slew_time Star11 Planet13) 37.97)
	(= (slew_time Planet13 Star12) 27.95)
	(= (slew_time Star12 Planet13) 27.95)
	(= (slew_time Planet14 Star0) 16.99)
	(= (slew_time Star0 Planet14) 16.99)
	(= (slew_time Planet14 GroundStation1) 79.67)
	(= (slew_time GroundStation1 Planet14) 79.67)
	(= (slew_time Planet14 GroundStation2) 23.07)
	(= (slew_time GroundStation2 Planet14) 23.07)
	(= (slew_time Planet14 GroundStation3) 9.241)
	(= (slew_time GroundStation3 Planet14) 9.241)
	(= (slew_time Planet14 GroundStation4) 27.75)
	(= (slew_time GroundStation4 Planet14) 27.75)
	(= (slew_time Planet14 Star5) 10.69)
	(= (slew_time Star5 Planet14) 10.69)
	(= (slew_time Planet14 Star6) 5.996)
	(= (slew_time Star6 Planet14) 5.996)
	(= (slew_time Planet14 Star7) 16.64)
	(= (slew_time Star7 Planet14) 16.64)
	(= (slew_time Planet14 Planet8) 43.26)
	(= (slew_time Planet8 Planet14) 43.26)
	(= (slew_time Planet14 Planet9) 11.79)
	(= (slew_time Planet9 Planet14) 11.79)
	(= (slew_time Planet14 Planet10) 33.85)
	(= (slew_time Planet10 Planet14) 33.85)
	(= (slew_time Planet14 Star11) 56.54)
	(= (slew_time Star11 Planet14) 56.54)
	(= (slew_time Planet14 Star12) 31.13)
	(= (slew_time Star12 Planet14) 31.13)
	(= (slew_time Planet14 Planet13) 11.08)
	(= (slew_time Planet13 Planet14) 11.08)
	(= (slew_time Phenomenon15 Star0) 50.7)
	(= (slew_time Star0 Phenomenon15) 50.7)
	(= (slew_time Phenomenon15 GroundStation1) 16.76)
	(= (slew_time GroundStation1 Phenomenon15) 16.76)
	(= (slew_time Phenomenon15 GroundStation2) 20.98)
	(= (slew_time GroundStation2 Phenomenon15) 20.98)
	(= (slew_time Phenomenon15 GroundStation3) 70.52)
	(= (slew_time GroundStation3 Phenomenon15) 70.52)
	(= (slew_time Phenomenon15 GroundStation4) 6.59)
	(= (slew_time GroundStation4 Phenomenon15) 6.59)
	(= (slew_time Phenomenon15 Star5) 53.9)
	(= (slew_time Star5 Phenomenon15) 53.9)
	(= (slew_time Phenomenon15 Star6) 8.868)
	(= (slew_time Star6 Phenomenon15) 8.868)
	(= (slew_time Phenomenon15 Star7) 82.11)
	(= (slew_time Star7 Phenomenon15) 82.11)
	(= (slew_time Phenomenon15 Planet8) 58.26)
	(= (slew_time Planet8 Phenomenon15) 58.26)
	(= (slew_time Phenomenon15 Planet9) 35.72)
	(= (slew_time Planet9 Phenomenon15) 35.72)
	(= (slew_time Phenomenon15 Planet10) 2.363)
	(= (slew_time Planet10 Phenomenon15) 2.363)
	(= (slew_time Phenomenon15 Star11) 42.74)
	(= (slew_time Star11 Phenomenon15) 42.74)
	(= (slew_time Phenomenon15 Star12) 11.98)
	(= (slew_time Star12 Phenomenon15) 11.98)
	(= (slew_time Phenomenon15 Planet13) 10.32)
	(= (slew_time Planet13 Phenomenon15) 10.32)
	(= (slew_time Phenomenon15 Planet14) 20.7)
	(= (slew_time Planet14 Phenomenon15) 20.7)
	(= (slew_time Star16 Star0) 8.06)
	(= (slew_time Star0 Star16) 8.06)
	(= (slew_time Star16 GroundStation1) 10.62)
	(= (slew_time GroundStation1 Star16) 10.62)
	(= (slew_time Star16 GroundStation2) 19.97)
	(= (slew_time GroundStation2 Star16) 19.97)
	(= (slew_time Star16 GroundStation3) 12.06)
	(= (slew_time GroundStation3 Star16) 12.06)
	(= (slew_time Star16 GroundStation4) 40.97)
	(= (slew_time GroundStation4 Star16) 40.97)
	(= (slew_time Star16 Star5) 27.65)
	(= (slew_time Star5 Star16) 27.65)
	(= (slew_time Star16 Star6) 35.59)
	(= (slew_time Star6 Star16) 35.59)
	(= (slew_time Star16 Star7) 1.336)
	(= (slew_time Star7 Star16) 1.336)
	(= (slew_time Star16 Planet8) 15.47)
	(= (slew_time Planet8 Star16) 15.47)
	(= (slew_time Star16 Planet9) 21.66)
	(= (slew_time Planet9 Star16) 21.66)
	(= (slew_time Star16 Planet10) 41.72)
	(= (slew_time Planet10 Star16) 41.72)
	(= (slew_time Star16 Star11) 57.57)
	(= (slew_time Star11 Star16) 57.57)
	(= (slew_time Star16 Star12) 12.37)
	(= (slew_time Star12 Star16) 12.37)
	(= (slew_time Star16 Planet13) 12.71)
	(= (slew_time Planet13 Star16) 12.71)
	(= (slew_time Star16 Planet14) 24.64)
	(= (slew_time Planet14 Star16) 24.64)
	(= (slew_time Star16 Phenomenon15) 35.97)
	(= (slew_time Phenomenon15 Star16) 35.97)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite3 Star5)
	(have_image Star5 thermograph3)
	(have_image Star6 image2)
	(have_image Planet8 thermograph3)
	(have_image Planet9 thermograph3)
	(have_image Planet10 image2)
	(have_image Star11 thermograph0)
	(have_image Star12 thermograph0)
	(have_image Planet13 spectrograph1)
	(have_image Planet14 thermograph0)
	(have_image Phenomenon15 image2)
	(have_image Star16 spectrograph1)
))
(:metric minimize (fuel-used))

)
