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
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	thermograph0 - mode
	thermograph2 - mode
	spectrograph3 - mode
	infrared1 - mode
	thermograph4 - mode
	GroundStation1 - direction
	Star2 - direction
	Star0 - direction
	Planet3 - direction
	Planet4 - direction
	Star5 - direction
	Phenomenon6 - direction
	Planet7 - direction
	Planet8 - direction
	Planet9 - direction
	Planet10 - direction
	Phenomenon11 - direction
	Planet12 - direction
	Planet13 - direction
)
(:init
	(supports instrument0 thermograph0)
	(calibration_target instrument0 Star2)
	(supports instrument1 thermograph0)
	(supports instrument1 infrared1)
	(calibration_target instrument1 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 GroundStation1)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 112)
	(supports instrument2 thermograph4)
	(supports instrument2 spectrograph3)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 GroundStation1)
	(supports instrument3 spectrograph3)
	(supports instrument3 thermograph2)
	(supports instrument3 infrared1)
	(calibration_target instrument3 GroundStation1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet12)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 109)
	(supports instrument4 spectrograph3)
	(supports instrument4 thermograph4)
	(calibration_target instrument4 GroundStation1)
	(supports instrument5 thermograph2)
	(supports instrument5 infrared1)
	(calibration_target instrument5 Star2)
	(supports instrument6 thermograph0)
	(calibration_target instrument6 Star0)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon11)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 135)
	(supports instrument7 infrared1)
	(calibration_target instrument7 Star0)
	(supports instrument8 thermograph2)
	(supports instrument8 thermograph4)
	(calibration_target instrument8 Star0)
	(supports instrument9 spectrograph3)
	(calibration_target instrument9 Star0)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star0)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 177)
	(supports instrument10 thermograph4)
	(supports instrument10 infrared1)
	(calibration_target instrument10 Star0)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon6)
	(= (data_capacity satellite4) 1000)
	(= (fuel satellite4) 128)
	(= (data Planet3 thermograph0) 283)
	(= (data Planet4 thermograph0) 209)
	(= (data Star5 thermograph0) 166)
	(= (data Phenomenon6 thermograph0) 192)
	(= (data Planet7 thermograph0) 67)
	(= (data Planet8 thermograph0) 8)
	(= (data Planet9 thermograph0) 249)
	(= (data Planet10 thermograph0) 237)
	(= (data Phenomenon11 thermograph0) 11)
	(= (data Planet12 thermograph0) 163)
	(= (data Planet13 thermograph0) 283)
	(= (data Planet3 thermograph2) 66)
	(= (data Planet4 thermograph2) 145)
	(= (data Star5 thermograph2) 30)
	(= (data Phenomenon6 thermograph2) 254)
	(= (data Planet7 thermograph2) 33)
	(= (data Planet8 thermograph2) 19)
	(= (data Planet9 thermograph2) 182)
	(= (data Planet10 thermograph2) 182)
	(= (data Phenomenon11 thermograph2) 222)
	(= (data Planet12 thermograph2) 127)
	(= (data Planet13 thermograph2) 239)
	(= (data Planet3 spectrograph3) 256)
	(= (data Planet4 spectrograph3) 245)
	(= (data Star5 spectrograph3) 235)
	(= (data Phenomenon6 spectrograph3) 184)
	(= (data Planet7 spectrograph3) 41)
	(= (data Planet8 spectrograph3) 185)
	(= (data Planet9 spectrograph3) 64)
	(= (data Planet10 spectrograph3) 252)
	(= (data Phenomenon11 spectrograph3) 263)
	(= (data Planet12 spectrograph3) 30)
	(= (data Planet13 spectrograph3) 14)
	(= (data Planet3 infrared1) 50)
	(= (data Planet4 infrared1) 99)
	(= (data Star5 infrared1) 2)
	(= (data Phenomenon6 infrared1) 144)
	(= (data Planet7 infrared1) 249)
	(= (data Planet8 infrared1) 179)
	(= (data Planet9 infrared1) 16)
	(= (data Planet10 infrared1) 189)
	(= (data Phenomenon11 infrared1) 207)
	(= (data Planet12 infrared1) 278)
	(= (data Planet13 infrared1) 175)
	(= (data Planet3 thermograph4) 168)
	(= (data Planet4 thermograph4) 84)
	(= (data Star5 thermograph4) 282)
	(= (data Phenomenon6 thermograph4) 229)
	(= (data Planet7 thermograph4) 70)
	(= (data Planet8 thermograph4) 150)
	(= (data Planet9 thermograph4) 23)
	(= (data Planet10 thermograph4) 71)
	(= (data Phenomenon11 thermograph4) 277)
	(= (data Planet12 thermograph4) 214)
	(= (data Planet13 thermograph4) 257)
	(= (slew_time GroundStation1 Star0) 2.779)
	(= (slew_time Star0 GroundStation1) 2.779)
	(= (slew_time Star2 Star0) 9.006)
	(= (slew_time Star0 Star2) 9.006)
	(= (slew_time Star2 GroundStation1) 60.12)
	(= (slew_time GroundStation1 Star2) 60.12)
	(= (slew_time Planet3 Star0) 4.669)
	(= (slew_time Star0 Planet3) 4.669)
	(= (slew_time Planet3 GroundStation1) 54.19)
	(= (slew_time GroundStation1 Planet3) 54.19)
	(= (slew_time Planet3 Star2) 42.05)
	(= (slew_time Star2 Planet3) 42.05)
	(= (slew_time Planet4 Star0) 93.93)
	(= (slew_time Star0 Planet4) 93.93)
	(= (slew_time Planet4 GroundStation1) 17.2)
	(= (slew_time GroundStation1 Planet4) 17.2)
	(= (slew_time Planet4 Star2) 2.579)
	(= (slew_time Star2 Planet4) 2.579)
	(= (slew_time Planet4 Planet3) 19.73)
	(= (slew_time Planet3 Planet4) 19.73)
	(= (slew_time Star5 Star0) 36.94)
	(= (slew_time Star0 Star5) 36.94)
	(= (slew_time Star5 GroundStation1) 63.57)
	(= (slew_time GroundStation1 Star5) 63.57)
	(= (slew_time Star5 Star2) 54.61)
	(= (slew_time Star2 Star5) 54.61)
	(= (slew_time Star5 Planet3) 75.38)
	(= (slew_time Planet3 Star5) 75.38)
	(= (slew_time Star5 Planet4) 12.03)
	(= (slew_time Planet4 Star5) 12.03)
	(= (slew_time Phenomenon6 Star0) 95.9)
	(= (slew_time Star0 Phenomenon6) 95.9)
	(= (slew_time Phenomenon6 GroundStation1) 58.96)
	(= (slew_time GroundStation1 Phenomenon6) 58.96)
	(= (slew_time Phenomenon6 Star2) 18.97)
	(= (slew_time Star2 Phenomenon6) 18.97)
	(= (slew_time Phenomenon6 Planet3) 36.46)
	(= (slew_time Planet3 Phenomenon6) 36.46)
	(= (slew_time Phenomenon6 Planet4) 29.35)
	(= (slew_time Planet4 Phenomenon6) 29.35)
	(= (slew_time Phenomenon6 Star5) 28.79)
	(= (slew_time Star5 Phenomenon6) 28.79)
	(= (slew_time Planet7 Star0) 74.46)
	(= (slew_time Star0 Planet7) 74.46)
	(= (slew_time Planet7 GroundStation1) 23.94)
	(= (slew_time GroundStation1 Planet7) 23.94)
	(= (slew_time Planet7 Star2) 36.73)
	(= (slew_time Star2 Planet7) 36.73)
	(= (slew_time Planet7 Planet3) 51.65)
	(= (slew_time Planet3 Planet7) 51.65)
	(= (slew_time Planet7 Planet4) 37.09)
	(= (slew_time Planet4 Planet7) 37.09)
	(= (slew_time Planet7 Star5) 0.9635)
	(= (slew_time Star5 Planet7) 0.9635)
	(= (slew_time Planet7 Phenomenon6) 17.18)
	(= (slew_time Phenomenon6 Planet7) 17.18)
	(= (slew_time Planet8 Star0) 32.01)
	(= (slew_time Star0 Planet8) 32.01)
	(= (slew_time Planet8 GroundStation1) 63.87)
	(= (slew_time GroundStation1 Planet8) 63.87)
	(= (slew_time Planet8 Star2) 32.24)
	(= (slew_time Star2 Planet8) 32.24)
	(= (slew_time Planet8 Planet3) 69.07)
	(= (slew_time Planet3 Planet8) 69.07)
	(= (slew_time Planet8 Planet4) 12.44)
	(= (slew_time Planet4 Planet8) 12.44)
	(= (slew_time Planet8 Star5) 32.93)
	(= (slew_time Star5 Planet8) 32.93)
	(= (slew_time Planet8 Phenomenon6) 18.86)
	(= (slew_time Phenomenon6 Planet8) 18.86)
	(= (slew_time Planet8 Planet7) 18.29)
	(= (slew_time Planet7 Planet8) 18.29)
	(= (slew_time Planet9 Star0) 29.24)
	(= (slew_time Star0 Planet9) 29.24)
	(= (slew_time Planet9 GroundStation1) 32.5)
	(= (slew_time GroundStation1 Planet9) 32.5)
	(= (slew_time Planet9 Star2) 41.13)
	(= (slew_time Star2 Planet9) 41.13)
	(= (slew_time Planet9 Planet3) 63.88)
	(= (slew_time Planet3 Planet9) 63.88)
	(= (slew_time Planet9 Planet4) 3.177)
	(= (slew_time Planet4 Planet9) 3.177)
	(= (slew_time Planet9 Star5) 13.3)
	(= (slew_time Star5 Planet9) 13.3)
	(= (slew_time Planet9 Phenomenon6) 10.8)
	(= (slew_time Phenomenon6 Planet9) 10.8)
	(= (slew_time Planet9 Planet7) 3.838)
	(= (slew_time Planet7 Planet9) 3.838)
	(= (slew_time Planet9 Planet8) 23.5)
	(= (slew_time Planet8 Planet9) 23.5)
	(= (slew_time Planet10 Star0) 7.126)
	(= (slew_time Star0 Planet10) 7.126)
	(= (slew_time Planet10 GroundStation1) 1.003)
	(= (slew_time GroundStation1 Planet10) 1.003)
	(= (slew_time Planet10 Star2) 29.11)
	(= (slew_time Star2 Planet10) 29.11)
	(= (slew_time Planet10 Planet3) 44.26)
	(= (slew_time Planet3 Planet10) 44.26)
	(= (slew_time Planet10 Planet4) 8.863)
	(= (slew_time Planet4 Planet10) 8.863)
	(= (slew_time Planet10 Star5) 33.36)
	(= (slew_time Star5 Planet10) 33.36)
	(= (slew_time Planet10 Phenomenon6) 85.52)
	(= (slew_time Phenomenon6 Planet10) 85.52)
	(= (slew_time Planet10 Planet7) 49.98)
	(= (slew_time Planet7 Planet10) 49.98)
	(= (slew_time Planet10 Planet8) 57.31)
	(= (slew_time Planet8 Planet10) 57.31)
	(= (slew_time Planet10 Planet9) 65.4)
	(= (slew_time Planet9 Planet10) 65.4)
	(= (slew_time Phenomenon11 Star0) 9.541)
	(= (slew_time Star0 Phenomenon11) 9.541)
	(= (slew_time Phenomenon11 GroundStation1) 34.55)
	(= (slew_time GroundStation1 Phenomenon11) 34.55)
	(= (slew_time Phenomenon11 Star2) 46.73)
	(= (slew_time Star2 Phenomenon11) 46.73)
	(= (slew_time Phenomenon11 Planet3) 77.91)
	(= (slew_time Planet3 Phenomenon11) 77.91)
	(= (slew_time Phenomenon11 Planet4) 21.47)
	(= (slew_time Planet4 Phenomenon11) 21.47)
	(= (slew_time Phenomenon11 Star5) 12.13)
	(= (slew_time Star5 Phenomenon11) 12.13)
	(= (slew_time Phenomenon11 Phenomenon6) 91.49)
	(= (slew_time Phenomenon6 Phenomenon11) 91.49)
	(= (slew_time Phenomenon11 Planet7) 52.74)
	(= (slew_time Planet7 Phenomenon11) 52.74)
	(= (slew_time Phenomenon11 Planet8) 25.46)
	(= (slew_time Planet8 Phenomenon11) 25.46)
	(= (slew_time Phenomenon11 Planet9) 4.688)
	(= (slew_time Planet9 Phenomenon11) 4.688)
	(= (slew_time Phenomenon11 Planet10) 12.61)
	(= (slew_time Planet10 Phenomenon11) 12.61)
	(= (slew_time Planet12 Star0) 22.92)
	(= (slew_time Star0 Planet12) 22.92)
	(= (slew_time Planet12 GroundStation1) 29.06)
	(= (slew_time GroundStation1 Planet12) 29.06)
	(= (slew_time Planet12 Star2) 10.39)
	(= (slew_time Star2 Planet12) 10.39)
	(= (slew_time Planet12 Planet3) 3.799)
	(= (slew_time Planet3 Planet12) 3.799)
	(= (slew_time Planet12 Planet4) 27.75)
	(= (slew_time Planet4 Planet12) 27.75)
	(= (slew_time Planet12 Star5) 25.78)
	(= (slew_time Star5 Planet12) 25.78)
	(= (slew_time Planet12 Phenomenon6) 12.55)
	(= (slew_time Phenomenon6 Planet12) 12.55)
	(= (slew_time Planet12 Planet7) 7.787)
	(= (slew_time Planet7 Planet12) 7.787)
	(= (slew_time Planet12 Planet8) 26.69)
	(= (slew_time Planet8 Planet12) 26.69)
	(= (slew_time Planet12 Planet9) 54.14)
	(= (slew_time Planet9 Planet12) 54.14)
	(= (slew_time Planet12 Planet10) 1.579)
	(= (slew_time Planet10 Planet12) 1.579)
	(= (slew_time Planet12 Phenomenon11) 65.12)
	(= (slew_time Phenomenon11 Planet12) 65.12)
	(= (slew_time Planet13 Star0) 3.059)
	(= (slew_time Star0 Planet13) 3.059)
	(= (slew_time Planet13 GroundStation1) 17.11)
	(= (slew_time GroundStation1 Planet13) 17.11)
	(= (slew_time Planet13 Star2) 31.58)
	(= (slew_time Star2 Planet13) 31.58)
	(= (slew_time Planet13 Planet3) 69.04)
	(= (slew_time Planet3 Planet13) 69.04)
	(= (slew_time Planet13 Planet4) 43.45)
	(= (slew_time Planet4 Planet13) 43.45)
	(= (slew_time Planet13 Star5) 65.18)
	(= (slew_time Star5 Planet13) 65.18)
	(= (slew_time Planet13 Phenomenon6) 0.731)
	(= (slew_time Phenomenon6 Planet13) 0.731)
	(= (slew_time Planet13 Planet7) 15.53)
	(= (slew_time Planet7 Planet13) 15.53)
	(= (slew_time Planet13 Planet8) 61.6)
	(= (slew_time Planet8 Planet13) 61.6)
	(= (slew_time Planet13 Planet9) 16.5)
	(= (slew_time Planet9 Planet13) 16.5)
	(= (slew_time Planet13 Planet10) 34.91)
	(= (slew_time Planet10 Planet13) 34.91)
	(= (slew_time Planet13 Phenomenon11) 48.02)
	(= (slew_time Phenomenon11 Planet13) 48.02)
	(= (slew_time Planet13 Planet12) 7.774)
	(= (slew_time Planet12 Planet13) 7.774)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite2 Planet8)
	(have_image Planet3 thermograph2)
	(have_image Planet4 spectrograph3)
	(have_image Star5 thermograph2)
	(have_image Phenomenon6 spectrograph3)
	(have_image Planet7 thermograph4)
	(have_image Planet8 infrared1)
	(have_image Planet9 spectrograph3)
	(have_image Planet10 infrared1)
	(have_image Phenomenon11 thermograph0)
	(have_image Planet12 spectrograph3)
	(have_image Planet13 thermograph2)
))
(:metric minimize (fuel-used))

)
