(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	thermograph1 - mode
	spectrograph0 - mode
	thermograph2 - mode
	image3 - mode
	GroundStation1 - direction
	Star2 - direction
	Star0 - direction
	Phenomenon3 - direction
	Phenomenon4 - direction
	Phenomenon5 - direction
	Star6 - direction
	Star7 - direction
	Planet8 - direction
	Planet9 - direction
	Star10 - direction
	Phenomenon11 - direction
	Star12 - direction
)
(:init
	(supports instrument0 thermograph1)
	(supports instrument0 image3)
	(supports instrument0 thermograph2)
	(calibration_target instrument0 Star0)
	(supports instrument1 spectrograph0)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 Star2)
	(supports instrument2 image3)
	(supports instrument2 thermograph2)
	(supports instrument2 spectrograph0)
	(calibration_target instrument2 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star7)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 167)
	(= (data Phenomenon3 thermograph1) 16)
	(= (data Phenomenon4 thermograph1) 12)
	(= (data Phenomenon5 thermograph1) 149)
	(= (data Star6 thermograph1) 105)
	(= (data Star7 thermograph1) 276)
	(= (data Planet8 thermograph1) 55)
	(= (data Planet9 thermograph1) 22)
	(= (data Star10 thermograph1) 77)
	(= (data Phenomenon11 thermograph1) 176)
	(= (data Star12 thermograph1) 98)
	(= (data Phenomenon3 spectrograph0) 282)
	(= (data Phenomenon4 spectrograph0) 189)
	(= (data Phenomenon5 spectrograph0) 6)
	(= (data Star6 spectrograph0) 112)
	(= (data Star7 spectrograph0) 114)
	(= (data Planet8 spectrograph0) 285)
	(= (data Planet9 spectrograph0) 107)
	(= (data Star10 spectrograph0) 118)
	(= (data Phenomenon11 spectrograph0) 193)
	(= (data Star12 spectrograph0) 137)
	(= (data Phenomenon3 thermograph2) 236)
	(= (data Phenomenon4 thermograph2) 72)
	(= (data Phenomenon5 thermograph2) 196)
	(= (data Star6 thermograph2) 174)
	(= (data Star7 thermograph2) 8)
	(= (data Planet8 thermograph2) 291)
	(= (data Planet9 thermograph2) 124)
	(= (data Star10 thermograph2) 106)
	(= (data Phenomenon11 thermograph2) 264)
	(= (data Star12 thermograph2) 209)
	(= (data Phenomenon3 image3) 128)
	(= (data Phenomenon4 image3) 35)
	(= (data Phenomenon5 image3) 47)
	(= (data Star6 image3) 289)
	(= (data Star7 image3) 197)
	(= (data Planet8 image3) 74)
	(= (data Planet9 image3) 60)
	(= (data Star10 image3) 225)
	(= (data Phenomenon11 image3) 299)
	(= (data Star12 image3) 236)
	(= (slew_time GroundStation1 Star0) 15.59)
	(= (slew_time Star0 GroundStation1) 15.59)
	(= (slew_time Star2 Star0) 15.21)
	(= (slew_time Star0 Star2) 15.21)
	(= (slew_time Star2 GroundStation1) 22.4)
	(= (slew_time GroundStation1 Star2) 22.4)
	(= (slew_time Phenomenon3 Star0) 63.33)
	(= (slew_time Star0 Phenomenon3) 63.33)
	(= (slew_time Phenomenon3 GroundStation1) 12.07)
	(= (slew_time GroundStation1 Phenomenon3) 12.07)
	(= (slew_time Phenomenon3 Star2) 29.46)
	(= (slew_time Star2 Phenomenon3) 29.46)
	(= (slew_time Phenomenon4 Star0) 19.96)
	(= (slew_time Star0 Phenomenon4) 19.96)
	(= (slew_time Phenomenon4 GroundStation1) 13.47)
	(= (slew_time GroundStation1 Phenomenon4) 13.47)
	(= (slew_time Phenomenon4 Star2) 5.01)
	(= (slew_time Star2 Phenomenon4) 5.01)
	(= (slew_time Phenomenon4 Phenomenon3) 58.87)
	(= (slew_time Phenomenon3 Phenomenon4) 58.87)
	(= (slew_time Phenomenon5 Star0) 13.56)
	(= (slew_time Star0 Phenomenon5) 13.56)
	(= (slew_time Phenomenon5 GroundStation1) 16.84)
	(= (slew_time GroundStation1 Phenomenon5) 16.84)
	(= (slew_time Phenomenon5 Star2) 7.13)
	(= (slew_time Star2 Phenomenon5) 7.13)
	(= (slew_time Phenomenon5 Phenomenon3) 26.77)
	(= (slew_time Phenomenon3 Phenomenon5) 26.77)
	(= (slew_time Phenomenon5 Phenomenon4) 31.16)
	(= (slew_time Phenomenon4 Phenomenon5) 31.16)
	(= (slew_time Star6 Star0) 2.641)
	(= (slew_time Star0 Star6) 2.641)
	(= (slew_time Star6 GroundStation1) 28.41)
	(= (slew_time GroundStation1 Star6) 28.41)
	(= (slew_time Star6 Star2) 36.51)
	(= (slew_time Star2 Star6) 36.51)
	(= (slew_time Star6 Phenomenon3) 30.69)
	(= (slew_time Phenomenon3 Star6) 30.69)
	(= (slew_time Star6 Phenomenon4) 23.22)
	(= (slew_time Phenomenon4 Star6) 23.22)
	(= (slew_time Star6 Phenomenon5) 37.05)
	(= (slew_time Phenomenon5 Star6) 37.05)
	(= (slew_time Star7 Star0) 2.211)
	(= (slew_time Star0 Star7) 2.211)
	(= (slew_time Star7 GroundStation1) 13.43)
	(= (slew_time GroundStation1 Star7) 13.43)
	(= (slew_time Star7 Star2) 11.82)
	(= (slew_time Star2 Star7) 11.82)
	(= (slew_time Star7 Phenomenon3) 67.99)
	(= (slew_time Phenomenon3 Star7) 67.99)
	(= (slew_time Star7 Phenomenon4) 37.47)
	(= (slew_time Phenomenon4 Star7) 37.47)
	(= (slew_time Star7 Phenomenon5) 6.075)
	(= (slew_time Phenomenon5 Star7) 6.075)
	(= (slew_time Star7 Star6) 26.23)
	(= (slew_time Star6 Star7) 26.23)
	(= (slew_time Planet8 Star0) 24.94)
	(= (slew_time Star0 Planet8) 24.94)
	(= (slew_time Planet8 GroundStation1) 14.7)
	(= (slew_time GroundStation1 Planet8) 14.7)
	(= (slew_time Planet8 Star2) 31.73)
	(= (slew_time Star2 Planet8) 31.73)
	(= (slew_time Planet8 Phenomenon3) 86.63)
	(= (slew_time Phenomenon3 Planet8) 86.63)
	(= (slew_time Planet8 Phenomenon4) 62.79)
	(= (slew_time Phenomenon4 Planet8) 62.79)
	(= (slew_time Planet8 Phenomenon5) 39.77)
	(= (slew_time Phenomenon5 Planet8) 39.77)
	(= (slew_time Planet8 Star6) 81.31)
	(= (slew_time Star6 Planet8) 81.31)
	(= (slew_time Planet8 Star7) 54.23)
	(= (slew_time Star7 Planet8) 54.23)
	(= (slew_time Planet9 Star0) 16.09)
	(= (slew_time Star0 Planet9) 16.09)
	(= (slew_time Planet9 GroundStation1) 60.4)
	(= (slew_time GroundStation1 Planet9) 60.4)
	(= (slew_time Planet9 Star2) 28.24)
	(= (slew_time Star2 Planet9) 28.24)
	(= (slew_time Planet9 Phenomenon3) 61.46)
	(= (slew_time Phenomenon3 Planet9) 61.46)
	(= (slew_time Planet9 Phenomenon4) 29.55)
	(= (slew_time Phenomenon4 Planet9) 29.55)
	(= (slew_time Planet9 Phenomenon5) 37.47)
	(= (slew_time Phenomenon5 Planet9) 37.47)
	(= (slew_time Planet9 Star6) 11.27)
	(= (slew_time Star6 Planet9) 11.27)
	(= (slew_time Planet9 Star7) 68.54)
	(= (slew_time Star7 Planet9) 68.54)
	(= (slew_time Planet9 Planet8) 33.57)
	(= (slew_time Planet8 Planet9) 33.57)
	(= (slew_time Star10 Star0) 60.84)
	(= (slew_time Star0 Star10) 60.84)
	(= (slew_time Star10 GroundStation1) 55.68)
	(= (slew_time GroundStation1 Star10) 55.68)
	(= (slew_time Star10 Star2) 9.264)
	(= (slew_time Star2 Star10) 9.264)
	(= (slew_time Star10 Phenomenon3) 27.84)
	(= (slew_time Phenomenon3 Star10) 27.84)
	(= (slew_time Star10 Phenomenon4) 42.01)
	(= (slew_time Phenomenon4 Star10) 42.01)
	(= (slew_time Star10 Phenomenon5) 6.689)
	(= (slew_time Phenomenon5 Star10) 6.689)
	(= (slew_time Star10 Star6) 53.57)
	(= (slew_time Star6 Star10) 53.57)
	(= (slew_time Star10 Star7) 20.36)
	(= (slew_time Star7 Star10) 20.36)
	(= (slew_time Star10 Planet8) 84.15)
	(= (slew_time Planet8 Star10) 84.15)
	(= (slew_time Star10 Planet9) 34.75)
	(= (slew_time Planet9 Star10) 34.75)
	(= (slew_time Phenomenon11 Star0) 43.7)
	(= (slew_time Star0 Phenomenon11) 43.7)
	(= (slew_time Phenomenon11 GroundStation1) 65.06)
	(= (slew_time GroundStation1 Phenomenon11) 65.06)
	(= (slew_time Phenomenon11 Star2) 20.24)
	(= (slew_time Star2 Phenomenon11) 20.24)
	(= (slew_time Phenomenon11 Phenomenon3) 49.47)
	(= (slew_time Phenomenon3 Phenomenon11) 49.47)
	(= (slew_time Phenomenon11 Phenomenon4) 62.39)
	(= (slew_time Phenomenon4 Phenomenon11) 62.39)
	(= (slew_time Phenomenon11 Phenomenon5) 0.8246)
	(= (slew_time Phenomenon5 Phenomenon11) 0.8246)
	(= (slew_time Phenomenon11 Star6) 23.09)
	(= (slew_time Star6 Phenomenon11) 23.09)
	(= (slew_time Phenomenon11 Star7) 7.873)
	(= (slew_time Star7 Phenomenon11) 7.873)
	(= (slew_time Phenomenon11 Planet8) 15.35)
	(= (slew_time Planet8 Phenomenon11) 15.35)
	(= (slew_time Phenomenon11 Planet9) 7.239)
	(= (slew_time Planet9 Phenomenon11) 7.239)
	(= (slew_time Phenomenon11 Star10) 44.12)
	(= (slew_time Star10 Phenomenon11) 44.12)
	(= (slew_time Star12 Star0) 12.45)
	(= (slew_time Star0 Star12) 12.45)
	(= (slew_time Star12 GroundStation1) 48.12)
	(= (slew_time GroundStation1 Star12) 48.12)
	(= (slew_time Star12 Star2) 38.18)
	(= (slew_time Star2 Star12) 38.18)
	(= (slew_time Star12 Phenomenon3) 13.12)
	(= (slew_time Phenomenon3 Star12) 13.12)
	(= (slew_time Star12 Phenomenon4) 1.63)
	(= (slew_time Phenomenon4 Star12) 1.63)
	(= (slew_time Star12 Phenomenon5) 35.04)
	(= (slew_time Phenomenon5 Star12) 35.04)
	(= (slew_time Star12 Star6) 79.91)
	(= (slew_time Star6 Star12) 79.91)
	(= (slew_time Star12 Star7) 6.708)
	(= (slew_time Star7 Star12) 6.708)
	(= (slew_time Star12 Planet8) 65.21)
	(= (slew_time Planet8 Star12) 65.21)
	(= (slew_time Star12 Planet9) 24.71)
	(= (slew_time Planet9 Star12) 24.71)
	(= (slew_time Star12 Star10) 8.144)
	(= (slew_time Star10 Star12) 8.144)
	(= (slew_time Star12 Phenomenon11) 14.44)
	(= (slew_time Phenomenon11 Star12) 14.44)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Star0)
	(have_image Phenomenon3 thermograph2)
	(have_image Phenomenon4 thermograph2)
	(have_image Phenomenon5 thermograph1)
	(have_image Star6 spectrograph0)
	(have_image Star7 spectrograph0)
	(have_image Planet8 spectrograph0)
	(have_image Planet9 thermograph2)
	(have_image Star10 thermograph2)
	(have_image Phenomenon11 spectrograph0)
	(have_image Star12 thermograph2)
))
(:metric minimize (fuel-used))

)
