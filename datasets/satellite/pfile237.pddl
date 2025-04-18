(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	spectrograph3 - mode
	infrared1 - mode
	image2 - mode
	spectrograph0 - mode
	GroundStation1 - direction
	Star3 - direction
	Star0 - direction
	Star2 - direction
	Planet4 - direction
	Planet5 - direction
	Phenomenon6 - direction
	Phenomenon7 - direction
	Phenomenon8 - direction
	Planet9 - direction
	Star10 - direction
	Planet11 - direction
	Planet12 - direction
	Planet13 - direction
)
(:init
	(supports instrument0 infrared1)
	(supports instrument0 spectrograph3)
	(supports instrument0 spectrograph0)
	(calibration_target instrument0 Star0)
	(supports instrument1 image2)
	(calibration_target instrument1 Star2)
	(supports instrument2 spectrograph0)
	(supports instrument2 image2)
	(calibration_target instrument2 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 GroundStation1)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 164)
	(= (data Planet4 spectrograph3) 70)
	(= (data Planet5 spectrograph3) 271)
	(= (data Phenomenon6 spectrograph3) 102)
	(= (data Phenomenon7 spectrograph3) 26)
	(= (data Phenomenon8 spectrograph3) 236)
	(= (data Planet9 spectrograph3) 51)
	(= (data Star10 spectrograph3) 69)
	(= (data Planet11 spectrograph3) 59)
	(= (data Planet12 spectrograph3) 87)
	(= (data Planet13 spectrograph3) 81)
	(= (data Planet4 infrared1) 48)
	(= (data Planet5 infrared1) 77)
	(= (data Phenomenon6 infrared1) 22)
	(= (data Phenomenon7 infrared1) 270)
	(= (data Phenomenon8 infrared1) 270)
	(= (data Planet9 infrared1) 256)
	(= (data Star10 infrared1) 69)
	(= (data Planet11 infrared1) 144)
	(= (data Planet12 infrared1) 13)
	(= (data Planet13 infrared1) 215)
	(= (data Planet4 image2) 15)
	(= (data Planet5 image2) 198)
	(= (data Phenomenon6 image2) 184)
	(= (data Phenomenon7 image2) 46)
	(= (data Phenomenon8 image2) 116)
	(= (data Planet9 image2) 20)
	(= (data Star10 image2) 16)
	(= (data Planet11 image2) 290)
	(= (data Planet12 image2) 23)
	(= (data Planet13 image2) 72)
	(= (data Planet4 spectrograph0) 43)
	(= (data Planet5 spectrograph0) 214)
	(= (data Phenomenon6 spectrograph0) 97)
	(= (data Phenomenon7 spectrograph0) 57)
	(= (data Phenomenon8 spectrograph0) 100)
	(= (data Planet9 spectrograph0) 242)
	(= (data Star10 spectrograph0) 128)
	(= (data Planet11 spectrograph0) 43)
	(= (data Planet12 spectrograph0) 175)
	(= (data Planet13 spectrograph0) 263)
	(= (slew_time GroundStation1 Star0) 55.84)
	(= (slew_time Star0 GroundStation1) 55.84)
	(= (slew_time Star3 Star0) 23.43)
	(= (slew_time Star0 Star3) 23.43)
	(= (slew_time Star3 GroundStation1) 16.04)
	(= (slew_time GroundStation1 Star3) 16.04)
	(= (slew_time Star3 Star2) 99.69)
	(= (slew_time Star2 Star3) 99.69)
	(= (slew_time Star2 Star0) 64.04)
	(= (slew_time Star0 Star2) 64.04)
	(= (slew_time Star2 GroundStation1) 19.9)
	(= (slew_time GroundStation1 Star2) 19.9)
	(= (slew_time Planet4 Star0) 13.59)
	(= (slew_time Star0 Planet4) 13.59)
	(= (slew_time Planet4 GroundStation1) 53.11)
	(= (slew_time GroundStation1 Planet4) 53.11)
	(= (slew_time Planet4 Star2) 26.06)
	(= (slew_time Star2 Planet4) 26.06)
	(= (slew_time Planet4 Star3) 19.4)
	(= (slew_time Star3 Planet4) 19.4)
	(= (slew_time Planet5 Star0) 66.94)
	(= (slew_time Star0 Planet5) 66.94)
	(= (slew_time Planet5 GroundStation1) 24.37)
	(= (slew_time GroundStation1 Planet5) 24.37)
	(= (slew_time Planet5 Star2) 28.23)
	(= (slew_time Star2 Planet5) 28.23)
	(= (slew_time Planet5 Star3) 71.39)
	(= (slew_time Star3 Planet5) 71.39)
	(= (slew_time Planet5 Planet4) 18.96)
	(= (slew_time Planet4 Planet5) 18.96)
	(= (slew_time Phenomenon6 Star0) 57.27)
	(= (slew_time Star0 Phenomenon6) 57.27)
	(= (slew_time Phenomenon6 GroundStation1) 9.186)
	(= (slew_time GroundStation1 Phenomenon6) 9.186)
	(= (slew_time Phenomenon6 Star2) 68.58)
	(= (slew_time Star2 Phenomenon6) 68.58)
	(= (slew_time Phenomenon6 Star3) 45.96)
	(= (slew_time Star3 Phenomenon6) 45.96)
	(= (slew_time Phenomenon6 Planet4) 15.71)
	(= (slew_time Planet4 Phenomenon6) 15.71)
	(= (slew_time Phenomenon6 Planet5) 27.24)
	(= (slew_time Planet5 Phenomenon6) 27.24)
	(= (slew_time Phenomenon7 Star0) 8.141)
	(= (slew_time Star0 Phenomenon7) 8.141)
	(= (slew_time Phenomenon7 GroundStation1) 0.01922)
	(= (slew_time GroundStation1 Phenomenon7) 0.01922)
	(= (slew_time Phenomenon7 Star2) 83.99)
	(= (slew_time Star2 Phenomenon7) 83.99)
	(= (slew_time Phenomenon7 Star3) 33.19)
	(= (slew_time Star3 Phenomenon7) 33.19)
	(= (slew_time Phenomenon7 Planet4) 5.391)
	(= (slew_time Planet4 Phenomenon7) 5.391)
	(= (slew_time Phenomenon7 Planet5) 54.66)
	(= (slew_time Planet5 Phenomenon7) 54.66)
	(= (slew_time Phenomenon7 Phenomenon6) 44.24)
	(= (slew_time Phenomenon6 Phenomenon7) 44.24)
	(= (slew_time Phenomenon8 Star0) 28.23)
	(= (slew_time Star0 Phenomenon8) 28.23)
	(= (slew_time Phenomenon8 GroundStation1) 50.39)
	(= (slew_time GroundStation1 Phenomenon8) 50.39)
	(= (slew_time Phenomenon8 Star2) 28.08)
	(= (slew_time Star2 Phenomenon8) 28.08)
	(= (slew_time Phenomenon8 Star3) 64.83)
	(= (slew_time Star3 Phenomenon8) 64.83)
	(= (slew_time Phenomenon8 Planet4) 29.3)
	(= (slew_time Planet4 Phenomenon8) 29.3)
	(= (slew_time Phenomenon8 Planet5) 63.67)
	(= (slew_time Planet5 Phenomenon8) 63.67)
	(= (slew_time Phenomenon8 Phenomenon6) 2.263)
	(= (slew_time Phenomenon6 Phenomenon8) 2.263)
	(= (slew_time Phenomenon8 Phenomenon7) 75.17)
	(= (slew_time Phenomenon7 Phenomenon8) 75.17)
	(= (slew_time Planet9 Star0) 35.87)
	(= (slew_time Star0 Planet9) 35.87)
	(= (slew_time Planet9 GroundStation1) 1.669)
	(= (slew_time GroundStation1 Planet9) 1.669)
	(= (slew_time Planet9 Star2) 6.754)
	(= (slew_time Star2 Planet9) 6.754)
	(= (slew_time Planet9 Star3) 49.31)
	(= (slew_time Star3 Planet9) 49.31)
	(= (slew_time Planet9 Planet4) 10.45)
	(= (slew_time Planet4 Planet9) 10.45)
	(= (slew_time Planet9 Planet5) 45.63)
	(= (slew_time Planet5 Planet9) 45.63)
	(= (slew_time Planet9 Phenomenon6) 24.75)
	(= (slew_time Phenomenon6 Planet9) 24.75)
	(= (slew_time Planet9 Phenomenon7) 6.119)
	(= (slew_time Phenomenon7 Planet9) 6.119)
	(= (slew_time Planet9 Phenomenon8) 32.85)
	(= (slew_time Phenomenon8 Planet9) 32.85)
	(= (slew_time Star10 Star0) 24.93)
	(= (slew_time Star0 Star10) 24.93)
	(= (slew_time Star10 GroundStation1) 46.52)
	(= (slew_time GroundStation1 Star10) 46.52)
	(= (slew_time Star10 Star2) 23.44)
	(= (slew_time Star2 Star10) 23.44)
	(= (slew_time Star10 Star3) 46.03)
	(= (slew_time Star3 Star10) 46.03)
	(= (slew_time Star10 Planet4) 10.71)
	(= (slew_time Planet4 Star10) 10.71)
	(= (slew_time Star10 Planet5) 19.93)
	(= (slew_time Planet5 Star10) 19.93)
	(= (slew_time Star10 Phenomenon6) 12.23)
	(= (slew_time Phenomenon6 Star10) 12.23)
	(= (slew_time Star10 Phenomenon7) 59.72)
	(= (slew_time Phenomenon7 Star10) 59.72)
	(= (slew_time Star10 Phenomenon8) 29.05)
	(= (slew_time Phenomenon8 Star10) 29.05)
	(= (slew_time Star10 Planet9) 43.86)
	(= (slew_time Planet9 Star10) 43.86)
	(= (slew_time Planet11 Star0) 3.456)
	(= (slew_time Star0 Planet11) 3.456)
	(= (slew_time Planet11 GroundStation1) 16.9)
	(= (slew_time GroundStation1 Planet11) 16.9)
	(= (slew_time Planet11 Star2) 4.739)
	(= (slew_time Star2 Planet11) 4.739)
	(= (slew_time Planet11 Star3) 6.769)
	(= (slew_time Star3 Planet11) 6.769)
	(= (slew_time Planet11 Planet4) 87.99)
	(= (slew_time Planet4 Planet11) 87.99)
	(= (slew_time Planet11 Planet5) 43.8)
	(= (slew_time Planet5 Planet11) 43.8)
	(= (slew_time Planet11 Phenomenon6) 7.964)
	(= (slew_time Phenomenon6 Planet11) 7.964)
	(= (slew_time Planet11 Phenomenon7) 41.28)
	(= (slew_time Phenomenon7 Planet11) 41.28)
	(= (slew_time Planet11 Phenomenon8) 26.79)
	(= (slew_time Phenomenon8 Planet11) 26.79)
	(= (slew_time Planet11 Planet9) 13.2)
	(= (slew_time Planet9 Planet11) 13.2)
	(= (slew_time Planet11 Star10) 53.41)
	(= (slew_time Star10 Planet11) 53.41)
	(= (slew_time Planet12 Star0) 66.22)
	(= (slew_time Star0 Planet12) 66.22)
	(= (slew_time Planet12 GroundStation1) 20.57)
	(= (slew_time GroundStation1 Planet12) 20.57)
	(= (slew_time Planet12 Star2) 54.87)
	(= (slew_time Star2 Planet12) 54.87)
	(= (slew_time Planet12 Star3) 53.5)
	(= (slew_time Star3 Planet12) 53.5)
	(= (slew_time Planet12 Planet4) 6.612)
	(= (slew_time Planet4 Planet12) 6.612)
	(= (slew_time Planet12 Planet5) 87.36)
	(= (slew_time Planet5 Planet12) 87.36)
	(= (slew_time Planet12 Phenomenon6) 59.81)
	(= (slew_time Phenomenon6 Planet12) 59.81)
	(= (slew_time Planet12 Phenomenon7) 0.922)
	(= (slew_time Phenomenon7 Planet12) 0.922)
	(= (slew_time Planet12 Phenomenon8) 40.8)
	(= (slew_time Phenomenon8 Planet12) 40.8)
	(= (slew_time Planet12 Planet9) 82.65)
	(= (slew_time Planet9 Planet12) 82.65)
	(= (slew_time Planet12 Star10) 18.3)
	(= (slew_time Star10 Planet12) 18.3)
	(= (slew_time Planet12 Planet11) 29.46)
	(= (slew_time Planet11 Planet12) 29.46)
	(= (slew_time Planet13 Star0) 29.79)
	(= (slew_time Star0 Planet13) 29.79)
	(= (slew_time Planet13 GroundStation1) 3.312)
	(= (slew_time GroundStation1 Planet13) 3.312)
	(= (slew_time Planet13 Star2) 75.53)
	(= (slew_time Star2 Planet13) 75.53)
	(= (slew_time Planet13 Star3) 32.77)
	(= (slew_time Star3 Planet13) 32.77)
	(= (slew_time Planet13 Planet4) 1.7)
	(= (slew_time Planet4 Planet13) 1.7)
	(= (slew_time Planet13 Planet5) 6.111)
	(= (slew_time Planet5 Planet13) 6.111)
	(= (slew_time Planet13 Phenomenon6) 0.4763)
	(= (slew_time Phenomenon6 Planet13) 0.4763)
	(= (slew_time Planet13 Phenomenon7) 62.6)
	(= (slew_time Phenomenon7 Planet13) 62.6)
	(= (slew_time Planet13 Phenomenon8) 18.83)
	(= (slew_time Phenomenon8 Planet13) 18.83)
	(= (slew_time Planet13 Planet9) 68.88)
	(= (slew_time Planet9 Planet13) 68.88)
	(= (slew_time Planet13 Star10) 74.5)
	(= (slew_time Star10 Planet13) 74.5)
	(= (slew_time Planet13 Planet11) 38.99)
	(= (slew_time Planet11 Planet13) 38.99)
	(= (slew_time Planet13 Planet12) 58.1)
	(= (slew_time Planet12 Planet13) 58.1)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 GroundStation1)
	(have_image Planet5 infrared1)
	(have_image Phenomenon6 spectrograph3)
	(have_image Phenomenon7 infrared1)
	(have_image Phenomenon8 image2)
	(have_image Planet9 image2)
	(have_image Star10 spectrograph0)
	(have_image Planet12 image2)
	(have_image Planet13 image2)
))
(:metric minimize (fuel-used))

)
