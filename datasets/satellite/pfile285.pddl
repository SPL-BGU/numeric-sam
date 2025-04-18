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
	spectrograph2 - mode
	infrared0 - mode
	infrared1 - mode
	Star1 - direction
	GroundStation0 - direction
	Star3 - direction
	Star2 - direction
	Star4 - direction
	Planet5 - direction
	Phenomenon6 - direction
	Planet7 - direction
	Planet8 - direction
	Planet9 - direction
	Star10 - direction
	Planet11 - direction
	Phenomenon12 - direction
)
(:init
	(supports instrument0 infrared0)
	(supports instrument0 infrared1)
	(calibration_target instrument0 Star2)
	(supports instrument1 spectrograph2)
	(supports instrument1 infrared1)
	(supports instrument1 infrared0)
	(calibration_target instrument1 GroundStation0)
	(supports instrument2 spectrograph2)
	(supports instrument2 infrared0)
	(supports instrument2 infrared1)
	(calibration_target instrument2 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star3)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 156)
	(supports instrument3 infrared0)
	(calibration_target instrument3 Star1)
	(supports instrument4 infrared0)
	(supports instrument4 spectrograph2)
	(calibration_target instrument4 Star1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet5)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 157)
	(supports instrument5 infrared0)
	(calibration_target instrument5 GroundStation0)
	(supports instrument6 infrared0)
	(supports instrument6 spectrograph2)
	(calibration_target instrument6 Star2)
	(supports instrument7 infrared0)
	(supports instrument7 infrared1)
	(supports instrument7 spectrograph2)
	(calibration_target instrument7 Star3)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon6)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 147)
	(supports instrument8 infrared1)
	(calibration_target instrument8 Star2)
	(supports instrument9 infrared1)
	(supports instrument9 infrared0)
	(supports instrument9 spectrograph2)
	(calibration_target instrument9 Star2)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star4)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 134)
	(= (data Star4 spectrograph2) 126)
	(= (data Planet5 spectrograph2) 154)
	(= (data Phenomenon6 spectrograph2) 21)
	(= (data Planet7 spectrograph2) 81)
	(= (data Planet8 spectrograph2) 215)
	(= (data Planet9 spectrograph2) 207)
	(= (data Star10 spectrograph2) 171)
	(= (data Planet11 spectrograph2) 59)
	(= (data Phenomenon12 spectrograph2) 84)
	(= (data Star4 infrared0) 210)
	(= (data Planet5 infrared0) 202)
	(= (data Phenomenon6 infrared0) 231)
	(= (data Planet7 infrared0) 167)
	(= (data Planet8 infrared0) 64)
	(= (data Planet9 infrared0) 50)
	(= (data Star10 infrared0) 180)
	(= (data Planet11 infrared0) 58)
	(= (data Phenomenon12 infrared0) 163)
	(= (data Star4 infrared1) 261)
	(= (data Planet5 infrared1) 180)
	(= (data Phenomenon6 infrared1) 151)
	(= (data Planet7 infrared1) 86)
	(= (data Planet8 infrared1) 195)
	(= (data Planet9 infrared1) 230)
	(= (data Star10 infrared1) 100)
	(= (data Planet11 infrared1) 52)
	(= (data Phenomenon12 infrared1) 24)
	(= (slew_time Star1 GroundStation0) 72.77)
	(= (slew_time GroundStation0 Star1) 72.77)
	(= (slew_time Star3 GroundStation0) 27.32)
	(= (slew_time GroundStation0 Star3) 27.32)
	(= (slew_time Star3 Star1) 23.97)
	(= (slew_time Star1 Star3) 23.97)
	(= (slew_time Star3 Star2) 45.66)
	(= (slew_time Star2 Star3) 45.66)
	(= (slew_time Star2 GroundStation0) 57.42)
	(= (slew_time GroundStation0 Star2) 57.42)
	(= (slew_time Star2 Star1) 36.17)
	(= (slew_time Star1 Star2) 36.17)
	(= (slew_time Star4 GroundStation0) 7.429)
	(= (slew_time GroundStation0 Star4) 7.429)
	(= (slew_time Star4 Star1) 58.39)
	(= (slew_time Star1 Star4) 58.39)
	(= (slew_time Star4 Star2) 28.09)
	(= (slew_time Star2 Star4) 28.09)
	(= (slew_time Star4 Star3) 33.3)
	(= (slew_time Star3 Star4) 33.3)
	(= (slew_time Planet5 GroundStation0) 43.28)
	(= (slew_time GroundStation0 Planet5) 43.28)
	(= (slew_time Planet5 Star1) 7.674)
	(= (slew_time Star1 Planet5) 7.674)
	(= (slew_time Planet5 Star2) 60.39)
	(= (slew_time Star2 Planet5) 60.39)
	(= (slew_time Planet5 Star3) 33.71)
	(= (slew_time Star3 Planet5) 33.71)
	(= (slew_time Planet5 Star4) 9.628)
	(= (slew_time Star4 Planet5) 9.628)
	(= (slew_time Phenomenon6 GroundStation0) 31.74)
	(= (slew_time GroundStation0 Phenomenon6) 31.74)
	(= (slew_time Phenomenon6 Star1) 16.51)
	(= (slew_time Star1 Phenomenon6) 16.51)
	(= (slew_time Phenomenon6 Star2) 44.54)
	(= (slew_time Star2 Phenomenon6) 44.54)
	(= (slew_time Phenomenon6 Star3) 87.91)
	(= (slew_time Star3 Phenomenon6) 87.91)
	(= (slew_time Phenomenon6 Star4) 33.64)
	(= (slew_time Star4 Phenomenon6) 33.64)
	(= (slew_time Phenomenon6 Planet5) 21)
	(= (slew_time Planet5 Phenomenon6) 21)
	(= (slew_time Planet7 GroundStation0) 16.4)
	(= (slew_time GroundStation0 Planet7) 16.4)
	(= (slew_time Planet7 Star1) 29.08)
	(= (slew_time Star1 Planet7) 29.08)
	(= (slew_time Planet7 Star2) 16.53)
	(= (slew_time Star2 Planet7) 16.53)
	(= (slew_time Planet7 Star3) 40.38)
	(= (slew_time Star3 Planet7) 40.38)
	(= (slew_time Planet7 Star4) 23.26)
	(= (slew_time Star4 Planet7) 23.26)
	(= (slew_time Planet7 Planet5) 21.94)
	(= (slew_time Planet5 Planet7) 21.94)
	(= (slew_time Planet7 Phenomenon6) 20.71)
	(= (slew_time Phenomenon6 Planet7) 20.71)
	(= (slew_time Planet8 GroundStation0) 2.511)
	(= (slew_time GroundStation0 Planet8) 2.511)
	(= (slew_time Planet8 Star1) 31.54)
	(= (slew_time Star1 Planet8) 31.54)
	(= (slew_time Planet8 Star2) 43.14)
	(= (slew_time Star2 Planet8) 43.14)
	(= (slew_time Planet8 Star3) 61.35)
	(= (slew_time Star3 Planet8) 61.35)
	(= (slew_time Planet8 Star4) 51.59)
	(= (slew_time Star4 Planet8) 51.59)
	(= (slew_time Planet8 Planet5) 32.9)
	(= (slew_time Planet5 Planet8) 32.9)
	(= (slew_time Planet8 Phenomenon6) 69.01)
	(= (slew_time Phenomenon6 Planet8) 69.01)
	(= (slew_time Planet8 Planet7) 8.964)
	(= (slew_time Planet7 Planet8) 8.964)
	(= (slew_time Planet9 GroundStation0) 1.535)
	(= (slew_time GroundStation0 Planet9) 1.535)
	(= (slew_time Planet9 Star1) 52.59)
	(= (slew_time Star1 Planet9) 52.59)
	(= (slew_time Planet9 Star2) 5.794)
	(= (slew_time Star2 Planet9) 5.794)
	(= (slew_time Planet9 Star3) 7.121)
	(= (slew_time Star3 Planet9) 7.121)
	(= (slew_time Planet9 Star4) 23.05)
	(= (slew_time Star4 Planet9) 23.05)
	(= (slew_time Planet9 Planet5) 47.89)
	(= (slew_time Planet5 Planet9) 47.89)
	(= (slew_time Planet9 Phenomenon6) 27.7)
	(= (slew_time Phenomenon6 Planet9) 27.7)
	(= (slew_time Planet9 Planet7) 38.67)
	(= (slew_time Planet7 Planet9) 38.67)
	(= (slew_time Planet9 Planet8) 5.563)
	(= (slew_time Planet8 Planet9) 5.563)
	(= (slew_time Star10 GroundStation0) 18.24)
	(= (slew_time GroundStation0 Star10) 18.24)
	(= (slew_time Star10 Star1) 25.59)
	(= (slew_time Star1 Star10) 25.59)
	(= (slew_time Star10 Star2) 20.55)
	(= (slew_time Star2 Star10) 20.55)
	(= (slew_time Star10 Star3) 23.95)
	(= (slew_time Star3 Star10) 23.95)
	(= (slew_time Star10 Star4) 69.89)
	(= (slew_time Star4 Star10) 69.89)
	(= (slew_time Star10 Planet5) 9.904)
	(= (slew_time Planet5 Star10) 9.904)
	(= (slew_time Star10 Phenomenon6) 39.74)
	(= (slew_time Phenomenon6 Star10) 39.74)
	(= (slew_time Star10 Planet7) 18.5)
	(= (slew_time Planet7 Star10) 18.5)
	(= (slew_time Star10 Planet8) 17.42)
	(= (slew_time Planet8 Star10) 17.42)
	(= (slew_time Star10 Planet9) 52.01)
	(= (slew_time Planet9 Star10) 52.01)
	(= (slew_time Planet11 GroundStation0) 9.359)
	(= (slew_time GroundStation0 Planet11) 9.359)
	(= (slew_time Planet11 Star1) 24.24)
	(= (slew_time Star1 Planet11) 24.24)
	(= (slew_time Planet11 Star2) 34.61)
	(= (slew_time Star2 Planet11) 34.61)
	(= (slew_time Planet11 Star3) 10.46)
	(= (slew_time Star3 Planet11) 10.46)
	(= (slew_time Planet11 Star4) 10.18)
	(= (slew_time Star4 Planet11) 10.18)
	(= (slew_time Planet11 Planet5) 14.82)
	(= (slew_time Planet5 Planet11) 14.82)
	(= (slew_time Planet11 Phenomenon6) 23.26)
	(= (slew_time Phenomenon6 Planet11) 23.26)
	(= (slew_time Planet11 Planet7) 3.833)
	(= (slew_time Planet7 Planet11) 3.833)
	(= (slew_time Planet11 Planet8) 12.82)
	(= (slew_time Planet8 Planet11) 12.82)
	(= (slew_time Planet11 Planet9) 9.316)
	(= (slew_time Planet9 Planet11) 9.316)
	(= (slew_time Planet11 Star10) 16.88)
	(= (slew_time Star10 Planet11) 16.88)
	(= (slew_time Phenomenon12 GroundStation0) 21.75)
	(= (slew_time GroundStation0 Phenomenon12) 21.75)
	(= (slew_time Phenomenon12 Star1) 57.62)
	(= (slew_time Star1 Phenomenon12) 57.62)
	(= (slew_time Phenomenon12 Star2) 61.3)
	(= (slew_time Star2 Phenomenon12) 61.3)
	(= (slew_time Phenomenon12 Star3) 29.23)
	(= (slew_time Star3 Phenomenon12) 29.23)
	(= (slew_time Phenomenon12 Star4) 4.13)
	(= (slew_time Star4 Phenomenon12) 4.13)
	(= (slew_time Phenomenon12 Planet5) 38.89)
	(= (slew_time Planet5 Phenomenon12) 38.89)
	(= (slew_time Phenomenon12 Phenomenon6) 76.46)
	(= (slew_time Phenomenon6 Phenomenon12) 76.46)
	(= (slew_time Phenomenon12 Planet7) 20.55)
	(= (slew_time Planet7 Phenomenon12) 20.55)
	(= (slew_time Phenomenon12 Planet8) 36.65)
	(= (slew_time Planet8 Phenomenon12) 36.65)
	(= (slew_time Phenomenon12 Planet9) 11.07)
	(= (slew_time Planet9 Phenomenon12) 11.07)
	(= (slew_time Phenomenon12 Star10) 42.32)
	(= (slew_time Star10 Phenomenon12) 42.32)
	(= (slew_time Phenomenon12 Planet11) 12.17)
	(= (slew_time Planet11 Phenomenon12) 12.17)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite1 Planet9)
	(pointing satellite2 Star3)
	(have_image Star4 spectrograph2)
	(have_image Planet5 infrared1)
	(have_image Phenomenon6 infrared0)
	(have_image Planet7 infrared1)
	(have_image Planet8 infrared0)
	(have_image Planet9 infrared0)
	(have_image Star10 spectrograph2)
	(have_image Planet11 infrared0)
	(have_image Phenomenon12 infrared1)
))
(:metric minimize (fuel-used))

)
