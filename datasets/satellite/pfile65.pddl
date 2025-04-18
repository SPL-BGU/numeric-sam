(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	spectrograph1 - mode
	infrared2 - mode
	image3 - mode
	infrared0 - mode
	GroundStation0 - direction
	GroundStation1 - direction
	GroundStation3 - direction
	Star2 - direction
	Planet4 - direction
	Planet5 - direction
	Star6 - direction
	Phenomenon7 - direction
	Phenomenon8 - direction
	Planet9 - direction
	Phenomenon10 - direction
)
(:init
	(supports instrument0 infrared2)
	(supports instrument0 infrared0)
	(supports instrument0 spectrograph1)
	(calibration_target instrument0 GroundStation3)
	(supports instrument1 infrared0)
	(supports instrument1 image3)
	(supports instrument1 infrared2)
	(calibration_target instrument1 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 GroundStation1)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 119)
	(= (data Planet4 spectrograph1) 43)
	(= (data Planet5 spectrograph1) 168)
	(= (data Star6 spectrograph1) 212)
	(= (data Phenomenon7 spectrograph1) 83)
	(= (data Phenomenon8 spectrograph1) 278)
	(= (data Planet9 spectrograph1) 167)
	(= (data Phenomenon10 spectrograph1) 213)
	(= (data Planet4 infrared2) 93)
	(= (data Planet5 infrared2) 87)
	(= (data Star6 infrared2) 16)
	(= (data Phenomenon7 infrared2) 1)
	(= (data Phenomenon8 infrared2) 212)
	(= (data Planet9 infrared2) 290)
	(= (data Phenomenon10 infrared2) 135)
	(= (data Planet4 image3) 245)
	(= (data Planet5 image3) 205)
	(= (data Star6 image3) 63)
	(= (data Phenomenon7 image3) 153)
	(= (data Phenomenon8 image3) 105)
	(= (data Planet9 image3) 71)
	(= (data Phenomenon10 image3) 240)
	(= (data Planet4 infrared0) 279)
	(= (data Planet5 infrared0) 126)
	(= (data Star6 infrared0) 288)
	(= (data Phenomenon7 infrared0) 144)
	(= (data Phenomenon8 infrared0) 4)
	(= (data Planet9 infrared0) 286)
	(= (data Phenomenon10 infrared0) 254)
	(= (slew_time GroundStation1 GroundStation0) 25.95)
	(= (slew_time GroundStation0 GroundStation1) 25.95)
	(= (slew_time GroundStation3 GroundStation0) 4.442)
	(= (slew_time GroundStation0 GroundStation3) 4.442)
	(= (slew_time GroundStation3 GroundStation1) 0.1898)
	(= (slew_time GroundStation1 GroundStation3) 0.1898)
	(= (slew_time GroundStation3 Star2) 35.5)
	(= (slew_time Star2 GroundStation3) 35.5)
	(= (slew_time Star2 GroundStation0) 0.967)
	(= (slew_time GroundStation0 Star2) 0.967)
	(= (slew_time Star2 GroundStation1) 86.91)
	(= (slew_time GroundStation1 Star2) 86.91)
	(= (slew_time Planet4 GroundStation0) 58.03)
	(= (slew_time GroundStation0 Planet4) 58.03)
	(= (slew_time Planet4 GroundStation1) 1.141)
	(= (slew_time GroundStation1 Planet4) 1.141)
	(= (slew_time Planet4 Star2) 75.41)
	(= (slew_time Star2 Planet4) 75.41)
	(= (slew_time Planet4 GroundStation3) 36.23)
	(= (slew_time GroundStation3 Planet4) 36.23)
	(= (slew_time Planet5 GroundStation0) 57.5)
	(= (slew_time GroundStation0 Planet5) 57.5)
	(= (slew_time Planet5 GroundStation1) 11.72)
	(= (slew_time GroundStation1 Planet5) 11.72)
	(= (slew_time Planet5 Star2) 26.33)
	(= (slew_time Star2 Planet5) 26.33)
	(= (slew_time Planet5 GroundStation3) 58.56)
	(= (slew_time GroundStation3 Planet5) 58.56)
	(= (slew_time Planet5 Planet4) 29.25)
	(= (slew_time Planet4 Planet5) 29.25)
	(= (slew_time Star6 GroundStation0) 55.32)
	(= (slew_time GroundStation0 Star6) 55.32)
	(= (slew_time Star6 GroundStation1) 77.8)
	(= (slew_time GroundStation1 Star6) 77.8)
	(= (slew_time Star6 Star2) 28.99)
	(= (slew_time Star2 Star6) 28.99)
	(= (slew_time Star6 GroundStation3) 51.77)
	(= (slew_time GroundStation3 Star6) 51.77)
	(= (slew_time Star6 Planet4) 30.87)
	(= (slew_time Planet4 Star6) 30.87)
	(= (slew_time Star6 Planet5) 88.56)
	(= (slew_time Planet5 Star6) 88.56)
	(= (slew_time Phenomenon7 GroundStation0) 6.112)
	(= (slew_time GroundStation0 Phenomenon7) 6.112)
	(= (slew_time Phenomenon7 GroundStation1) 12.38)
	(= (slew_time GroundStation1 Phenomenon7) 12.38)
	(= (slew_time Phenomenon7 Star2) 18.82)
	(= (slew_time Star2 Phenomenon7) 18.82)
	(= (slew_time Phenomenon7 GroundStation3) 33.51)
	(= (slew_time GroundStation3 Phenomenon7) 33.51)
	(= (slew_time Phenomenon7 Planet4) 0.02146)
	(= (slew_time Planet4 Phenomenon7) 0.02146)
	(= (slew_time Phenomenon7 Planet5) 10.29)
	(= (slew_time Planet5 Phenomenon7) 10.29)
	(= (slew_time Phenomenon7 Star6) 63.22)
	(= (slew_time Star6 Phenomenon7) 63.22)
	(= (slew_time Phenomenon8 GroundStation0) 7.556)
	(= (slew_time GroundStation0 Phenomenon8) 7.556)
	(= (slew_time Phenomenon8 GroundStation1) 0.5909)
	(= (slew_time GroundStation1 Phenomenon8) 0.5909)
	(= (slew_time Phenomenon8 Star2) 57.04)
	(= (slew_time Star2 Phenomenon8) 57.04)
	(= (slew_time Phenomenon8 GroundStation3) 11.7)
	(= (slew_time GroundStation3 Phenomenon8) 11.7)
	(= (slew_time Phenomenon8 Planet4) 6.997)
	(= (slew_time Planet4 Phenomenon8) 6.997)
	(= (slew_time Phenomenon8 Planet5) 44.92)
	(= (slew_time Planet5 Phenomenon8) 44.92)
	(= (slew_time Phenomenon8 Star6) 64.99)
	(= (slew_time Star6 Phenomenon8) 64.99)
	(= (slew_time Phenomenon8 Phenomenon7) 46.56)
	(= (slew_time Phenomenon7 Phenomenon8) 46.56)
	(= (slew_time Planet9 GroundStation0) 14.06)
	(= (slew_time GroundStation0 Planet9) 14.06)
	(= (slew_time Planet9 GroundStation1) 94.3)
	(= (slew_time GroundStation1 Planet9) 94.3)
	(= (slew_time Planet9 Star2) 59.77)
	(= (slew_time Star2 Planet9) 59.77)
	(= (slew_time Planet9 GroundStation3) 34.09)
	(= (slew_time GroundStation3 Planet9) 34.09)
	(= (slew_time Planet9 Planet4) 47.26)
	(= (slew_time Planet4 Planet9) 47.26)
	(= (slew_time Planet9 Planet5) 13.79)
	(= (slew_time Planet5 Planet9) 13.79)
	(= (slew_time Planet9 Star6) 7.429)
	(= (slew_time Star6 Planet9) 7.429)
	(= (slew_time Planet9 Phenomenon7) 51.21)
	(= (slew_time Phenomenon7 Planet9) 51.21)
	(= (slew_time Planet9 Phenomenon8) 56.7)
	(= (slew_time Phenomenon8 Planet9) 56.7)
	(= (slew_time Phenomenon10 GroundStation0) 72.65)
	(= (slew_time GroundStation0 Phenomenon10) 72.65)
	(= (slew_time Phenomenon10 GroundStation1) 79.76)
	(= (slew_time GroundStation1 Phenomenon10) 79.76)
	(= (slew_time Phenomenon10 Star2) 35.15)
	(= (slew_time Star2 Phenomenon10) 35.15)
	(= (slew_time Phenomenon10 GroundStation3) 4.276)
	(= (slew_time GroundStation3 Phenomenon10) 4.276)
	(= (slew_time Phenomenon10 Planet4) 31.43)
	(= (slew_time Planet4 Phenomenon10) 31.43)
	(= (slew_time Phenomenon10 Planet5) 25.85)
	(= (slew_time Planet5 Phenomenon10) 25.85)
	(= (slew_time Phenomenon10 Star6) 22.82)
	(= (slew_time Star6 Phenomenon10) 22.82)
	(= (slew_time Phenomenon10 Phenomenon7) 0.9681)
	(= (slew_time Phenomenon7 Phenomenon10) 0.9681)
	(= (slew_time Phenomenon10 Phenomenon8) 11.63)
	(= (slew_time Phenomenon8 Phenomenon10) 11.63)
	(= (slew_time Phenomenon10 Planet9) 37.91)
	(= (slew_time Planet9 Phenomenon10) 37.91)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Star2)
	(have_image Planet4 image3)
	(have_image Planet5 infrared2)
	(have_image Star6 image3)
	(have_image Phenomenon7 infrared2)
	(have_image Phenomenon8 image3)
	(have_image Planet9 infrared0)
	(have_image Phenomenon10 infrared2)
))
(:metric minimize (fuel-used))

)
