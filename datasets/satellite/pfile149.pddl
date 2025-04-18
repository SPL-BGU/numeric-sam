(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	spectrograph0 - mode
	spectrograph1 - mode
	infrared2 - mode
	GroundStation2 - direction
	GroundStation1 - direction
	Star3 - direction
	GroundStation0 - direction
	Star4 - direction
	Planet5 - direction
	Star6 - direction
	Planet7 - direction
	Planet8 - direction
	Phenomenon9 - direction
	Phenomenon10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Star13 - direction
	Phenomenon14 - direction
)
(:init
	(supports instrument0 infrared2)
	(supports instrument0 spectrograph1)
	(calibration_target instrument0 GroundStation1)
	(supports instrument1 infrared2)
	(calibration_target instrument1 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 GroundStation1)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 138)
	(supports instrument2 spectrograph0)
	(supports instrument2 infrared2)
	(calibration_target instrument2 GroundStation1)
	(supports instrument3 spectrograph1)
	(calibration_target instrument3 GroundStation0)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star4)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 158)
	(supports instrument4 spectrograph0)
	(supports instrument4 infrared2)
	(calibration_target instrument4 GroundStation1)
	(supports instrument5 infrared2)
	(supports instrument5 spectrograph0)
	(supports instrument5 spectrograph1)
	(calibration_target instrument5 Star3)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon14)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 138)
	(supports instrument6 infrared2)
	(supports instrument6 spectrograph0)
	(calibration_target instrument6 GroundStation0)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon10)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 134)
	(supports instrument7 spectrograph1)
	(supports instrument7 spectrograph0)
	(calibration_target instrument7 Star3)
	(supports instrument8 spectrograph0)
	(supports instrument8 infrared2)
	(calibration_target instrument8 GroundStation0)
	(supports instrument9 infrared2)
	(supports instrument9 spectrograph1)
	(calibration_target instrument9 GroundStation0)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star3)
	(= (data_capacity satellite4) 1000)
	(= (fuel satellite4) 127)
	(= (data Star4 spectrograph0) 272)
	(= (data Planet5 spectrograph0) 190)
	(= (data Star6 spectrograph0) 231)
	(= (data Planet7 spectrograph0) 19)
	(= (data Planet8 spectrograph0) 105)
	(= (data Phenomenon9 spectrograph0) 239)
	(= (data Phenomenon10 spectrograph0) 211)
	(= (data Planet11 spectrograph0) 121)
	(= (data Phenomenon12 spectrograph0) 122)
	(= (data Star13 spectrograph0) 152)
	(= (data Phenomenon14 spectrograph0) 215)
	(= (data Star4 spectrograph1) 151)
	(= (data Planet5 spectrograph1) 77)
	(= (data Star6 spectrograph1) 113)
	(= (data Planet7 spectrograph1) 222)
	(= (data Planet8 spectrograph1) 147)
	(= (data Phenomenon9 spectrograph1) 288)
	(= (data Phenomenon10 spectrograph1) 21)
	(= (data Planet11 spectrograph1) 196)
	(= (data Phenomenon12 spectrograph1) 262)
	(= (data Star13 spectrograph1) 260)
	(= (data Phenomenon14 spectrograph1) 132)
	(= (data Star4 infrared2) 136)
	(= (data Planet5 infrared2) 123)
	(= (data Star6 infrared2) 154)
	(= (data Planet7 infrared2) 237)
	(= (data Planet8 infrared2) 288)
	(= (data Phenomenon9 infrared2) 159)
	(= (data Phenomenon10 infrared2) 11)
	(= (data Planet11 infrared2) 202)
	(= (data Phenomenon12 infrared2) 46)
	(= (data Star13 infrared2) 146)
	(= (data Phenomenon14 infrared2) 175)
	(= (slew_time GroundStation2 GroundStation0) 44.75)
	(= (slew_time GroundStation0 GroundStation2) 44.75)
	(= (slew_time GroundStation2 GroundStation1) 34.35)
	(= (slew_time GroundStation1 GroundStation2) 34.35)
	(= (slew_time GroundStation1 GroundStation0) 9.375)
	(= (slew_time GroundStation0 GroundStation1) 9.375)
	(= (slew_time Star3 GroundStation0) 30.72)
	(= (slew_time GroundStation0 Star3) 30.72)
	(= (slew_time Star3 GroundStation1) 58.77)
	(= (slew_time GroundStation1 Star3) 58.77)
	(= (slew_time Star3 GroundStation2) 1.427)
	(= (slew_time GroundStation2 Star3) 1.427)
	(= (slew_time Star4 GroundStation0) 65.26)
	(= (slew_time GroundStation0 Star4) 65.26)
	(= (slew_time Star4 GroundStation1) 23.09)
	(= (slew_time GroundStation1 Star4) 23.09)
	(= (slew_time Star4 GroundStation2) 12.36)
	(= (slew_time GroundStation2 Star4) 12.36)
	(= (slew_time Star4 Star3) 4.362)
	(= (slew_time Star3 Star4) 4.362)
	(= (slew_time Planet5 GroundStation0) 46.41)
	(= (slew_time GroundStation0 Planet5) 46.41)
	(= (slew_time Planet5 GroundStation1) 31.47)
	(= (slew_time GroundStation1 Planet5) 31.47)
	(= (slew_time Planet5 GroundStation2) 48.85)
	(= (slew_time GroundStation2 Planet5) 48.85)
	(= (slew_time Planet5 Star3) 38.53)
	(= (slew_time Star3 Planet5) 38.53)
	(= (slew_time Planet5 Star4) 0.334)
	(= (slew_time Star4 Planet5) 0.334)
	(= (slew_time Star6 GroundStation0) 22.63)
	(= (slew_time GroundStation0 Star6) 22.63)
	(= (slew_time Star6 GroundStation1) 46.28)
	(= (slew_time GroundStation1 Star6) 46.28)
	(= (slew_time Star6 GroundStation2) 35.79)
	(= (slew_time GroundStation2 Star6) 35.79)
	(= (slew_time Star6 Star3) 5.412)
	(= (slew_time Star3 Star6) 5.412)
	(= (slew_time Star6 Star4) 11.47)
	(= (slew_time Star4 Star6) 11.47)
	(= (slew_time Star6 Planet5) 23.64)
	(= (slew_time Planet5 Star6) 23.64)
	(= (slew_time Planet7 GroundStation0) 17.28)
	(= (slew_time GroundStation0 Planet7) 17.28)
	(= (slew_time Planet7 GroundStation1) 11.5)
	(= (slew_time GroundStation1 Planet7) 11.5)
	(= (slew_time Planet7 GroundStation2) 5.716)
	(= (slew_time GroundStation2 Planet7) 5.716)
	(= (slew_time Planet7 Star3) 57.84)
	(= (slew_time Star3 Planet7) 57.84)
	(= (slew_time Planet7 Star4) 35.62)
	(= (slew_time Star4 Planet7) 35.62)
	(= (slew_time Planet7 Planet5) 28.2)
	(= (slew_time Planet5 Planet7) 28.2)
	(= (slew_time Planet7 Star6) 72.7)
	(= (slew_time Star6 Planet7) 72.7)
	(= (slew_time Planet8 GroundStation0) 76.88)
	(= (slew_time GroundStation0 Planet8) 76.88)
	(= (slew_time Planet8 GroundStation1) 26.43)
	(= (slew_time GroundStation1 Planet8) 26.43)
	(= (slew_time Planet8 GroundStation2) 42.05)
	(= (slew_time GroundStation2 Planet8) 42.05)
	(= (slew_time Planet8 Star3) 27.52)
	(= (slew_time Star3 Planet8) 27.52)
	(= (slew_time Planet8 Star4) 4.723)
	(= (slew_time Star4 Planet8) 4.723)
	(= (slew_time Planet8 Planet5) 1.507)
	(= (slew_time Planet5 Planet8) 1.507)
	(= (slew_time Planet8 Star6) 80.89)
	(= (slew_time Star6 Planet8) 80.89)
	(= (slew_time Planet8 Planet7) 14.6)
	(= (slew_time Planet7 Planet8) 14.6)
	(= (slew_time Phenomenon9 GroundStation0) 22.3)
	(= (slew_time GroundStation0 Phenomenon9) 22.3)
	(= (slew_time Phenomenon9 GroundStation1) 20.98)
	(= (slew_time GroundStation1 Phenomenon9) 20.98)
	(= (slew_time Phenomenon9 GroundStation2) 20.66)
	(= (slew_time GroundStation2 Phenomenon9) 20.66)
	(= (slew_time Phenomenon9 Star3) 10.82)
	(= (slew_time Star3 Phenomenon9) 10.82)
	(= (slew_time Phenomenon9 Star4) 11.81)
	(= (slew_time Star4 Phenomenon9) 11.81)
	(= (slew_time Phenomenon9 Planet5) 44.76)
	(= (slew_time Planet5 Phenomenon9) 44.76)
	(= (slew_time Phenomenon9 Star6) 2.639)
	(= (slew_time Star6 Phenomenon9) 2.639)
	(= (slew_time Phenomenon9 Planet7) 12.6)
	(= (slew_time Planet7 Phenomenon9) 12.6)
	(= (slew_time Phenomenon9 Planet8) 48.81)
	(= (slew_time Planet8 Phenomenon9) 48.81)
	(= (slew_time Phenomenon10 GroundStation0) 41.76)
	(= (slew_time GroundStation0 Phenomenon10) 41.76)
	(= (slew_time Phenomenon10 GroundStation1) 39.66)
	(= (slew_time GroundStation1 Phenomenon10) 39.66)
	(= (slew_time Phenomenon10 GroundStation2) 36.62)
	(= (slew_time GroundStation2 Phenomenon10) 36.62)
	(= (slew_time Phenomenon10 Star3) 50.31)
	(= (slew_time Star3 Phenomenon10) 50.31)
	(= (slew_time Phenomenon10 Star4) 59.98)
	(= (slew_time Star4 Phenomenon10) 59.98)
	(= (slew_time Phenomenon10 Planet5) 31.22)
	(= (slew_time Planet5 Phenomenon10) 31.22)
	(= (slew_time Phenomenon10 Star6) 66.37)
	(= (slew_time Star6 Phenomenon10) 66.37)
	(= (slew_time Phenomenon10 Planet7) 40.51)
	(= (slew_time Planet7 Phenomenon10) 40.51)
	(= (slew_time Phenomenon10 Planet8) 31.88)
	(= (slew_time Planet8 Phenomenon10) 31.88)
	(= (slew_time Phenomenon10 Phenomenon9) 3.139)
	(= (slew_time Phenomenon9 Phenomenon10) 3.139)
	(= (slew_time Planet11 GroundStation0) 39.15)
	(= (slew_time GroundStation0 Planet11) 39.15)
	(= (slew_time Planet11 GroundStation1) 99.11)
	(= (slew_time GroundStation1 Planet11) 99.11)
	(= (slew_time Planet11 GroundStation2) 28.82)
	(= (slew_time GroundStation2 Planet11) 28.82)
	(= (slew_time Planet11 Star3) 28.43)
	(= (slew_time Star3 Planet11) 28.43)
	(= (slew_time Planet11 Star4) 19.34)
	(= (slew_time Star4 Planet11) 19.34)
	(= (slew_time Planet11 Planet5) 7.134)
	(= (slew_time Planet5 Planet11) 7.134)
	(= (slew_time Planet11 Star6) 12.51)
	(= (slew_time Star6 Planet11) 12.51)
	(= (slew_time Planet11 Planet7) 63.76)
	(= (slew_time Planet7 Planet11) 63.76)
	(= (slew_time Planet11 Planet8) 85.21)
	(= (slew_time Planet8 Planet11) 85.21)
	(= (slew_time Planet11 Phenomenon9) 43.3)
	(= (slew_time Phenomenon9 Planet11) 43.3)
	(= (slew_time Planet11 Phenomenon10) 55.23)
	(= (slew_time Phenomenon10 Planet11) 55.23)
	(= (slew_time Phenomenon12 GroundStation0) 21.81)
	(= (slew_time GroundStation0 Phenomenon12) 21.81)
	(= (slew_time Phenomenon12 GroundStation1) 19.08)
	(= (slew_time GroundStation1 Phenomenon12) 19.08)
	(= (slew_time Phenomenon12 GroundStation2) 53.52)
	(= (slew_time GroundStation2 Phenomenon12) 53.52)
	(= (slew_time Phenomenon12 Star3) 5.931)
	(= (slew_time Star3 Phenomenon12) 5.931)
	(= (slew_time Phenomenon12 Star4) 15.61)
	(= (slew_time Star4 Phenomenon12) 15.61)
	(= (slew_time Phenomenon12 Planet5) 44.42)
	(= (slew_time Planet5 Phenomenon12) 44.42)
	(= (slew_time Phenomenon12 Star6) 41.97)
	(= (slew_time Star6 Phenomenon12) 41.97)
	(= (slew_time Phenomenon12 Planet7) 49.43)
	(= (slew_time Planet7 Phenomenon12) 49.43)
	(= (slew_time Phenomenon12 Planet8) 40.71)
	(= (slew_time Planet8 Phenomenon12) 40.71)
	(= (slew_time Phenomenon12 Phenomenon9) 5.182)
	(= (slew_time Phenomenon9 Phenomenon12) 5.182)
	(= (slew_time Phenomenon12 Phenomenon10) 23.46)
	(= (slew_time Phenomenon10 Phenomenon12) 23.46)
	(= (slew_time Phenomenon12 Planet11) 37.87)
	(= (slew_time Planet11 Phenomenon12) 37.87)
	(= (slew_time Star13 GroundStation0) 31.55)
	(= (slew_time GroundStation0 Star13) 31.55)
	(= (slew_time Star13 GroundStation1) 8.539)
	(= (slew_time GroundStation1 Star13) 8.539)
	(= (slew_time Star13 GroundStation2) 20.17)
	(= (slew_time GroundStation2 Star13) 20.17)
	(= (slew_time Star13 Star3) 9.136)
	(= (slew_time Star3 Star13) 9.136)
	(= (slew_time Star13 Star4) 5.753)
	(= (slew_time Star4 Star13) 5.753)
	(= (slew_time Star13 Planet5) 28.34)
	(= (slew_time Planet5 Star13) 28.34)
	(= (slew_time Star13 Star6) 0.2093)
	(= (slew_time Star6 Star13) 0.2093)
	(= (slew_time Star13 Planet7) 7.897)
	(= (slew_time Planet7 Star13) 7.897)
	(= (slew_time Star13 Planet8) 53.99)
	(= (slew_time Planet8 Star13) 53.99)
	(= (slew_time Star13 Phenomenon9) 4.218)
	(= (slew_time Phenomenon9 Star13) 4.218)
	(= (slew_time Star13 Phenomenon10) 1.877)
	(= (slew_time Phenomenon10 Star13) 1.877)
	(= (slew_time Star13 Planet11) 25.49)
	(= (slew_time Planet11 Star13) 25.49)
	(= (slew_time Star13 Phenomenon12) 29.01)
	(= (slew_time Phenomenon12 Star13) 29.01)
	(= (slew_time Phenomenon14 GroundStation0) 72.71)
	(= (slew_time GroundStation0 Phenomenon14) 72.71)
	(= (slew_time Phenomenon14 GroundStation1) 47.96)
	(= (slew_time GroundStation1 Phenomenon14) 47.96)
	(= (slew_time Phenomenon14 GroundStation2) 25.58)
	(= (slew_time GroundStation2 Phenomenon14) 25.58)
	(= (slew_time Phenomenon14 Star3) 0.1696)
	(= (slew_time Star3 Phenomenon14) 0.1696)
	(= (slew_time Phenomenon14 Star4) 35.69)
	(= (slew_time Star4 Phenomenon14) 35.69)
	(= (slew_time Phenomenon14 Planet5) 67.13)
	(= (slew_time Planet5 Phenomenon14) 67.13)
	(= (slew_time Phenomenon14 Star6) 34.61)
	(= (slew_time Star6 Phenomenon14) 34.61)
	(= (slew_time Phenomenon14 Planet7) 84.39)
	(= (slew_time Planet7 Phenomenon14) 84.39)
	(= (slew_time Phenomenon14 Planet8) 19.25)
	(= (slew_time Planet8 Phenomenon14) 19.25)
	(= (slew_time Phenomenon14 Phenomenon9) 38.18)
	(= (slew_time Phenomenon9 Phenomenon14) 38.18)
	(= (slew_time Phenomenon14 Phenomenon10) 4.471)
	(= (slew_time Phenomenon10 Phenomenon14) 4.471)
	(= (slew_time Phenomenon14 Planet11) 11.78)
	(= (slew_time Planet11 Phenomenon14) 11.78)
	(= (slew_time Phenomenon14 Phenomenon12) 27.85)
	(= (slew_time Phenomenon12 Phenomenon14) 27.85)
	(= (slew_time Phenomenon14 Star13) 54.91)
	(= (slew_time Star13 Phenomenon14) 54.91)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Planet8)
	(pointing satellite2 Planet5)
	(pointing satellite3 Phenomenon14)
	(pointing satellite4 Planet8)
	(have_image Star4 spectrograph1)
	(have_image Planet5 spectrograph1)
	(have_image Star6 spectrograph0)
	(have_image Planet7 infrared2)
	(have_image Planet8 spectrograph1)
	(have_image Phenomenon9 spectrograph1)
	(have_image Phenomenon10 spectrograph1)
	(have_image Planet11 spectrograph1)
	(have_image Phenomenon12 infrared2)
	(have_image Star13 infrared2)
	(have_image Phenomenon14 spectrograph0)
))
(:metric minimize (fuel-used))

)
