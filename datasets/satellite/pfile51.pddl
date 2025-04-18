(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	infrared2 - mode
	spectrograph0 - mode
	infrared3 - mode
	image1 - mode
	GroundStation1 - direction
	GroundStation4 - direction
	Star0 - direction
	GroundStation3 - direction
	Star2 - direction
	Star5 - direction
	Phenomenon6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Phenomenon9 - direction
	Planet10 - direction
	Planet11 - direction
	Star12 - direction
	Star13 - direction
	Phenomenon14 - direction
)
(:init
	(supports instrument0 spectrograph0)
	(calibration_target instrument0 Star2)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 Star0)
	(supports instrument2 infrared3)
	(calibration_target instrument2 GroundStation3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star5)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 166)
	(supports instrument3 image1)
	(supports instrument3 infrared3)
	(supports instrument3 spectrograph0)
	(calibration_target instrument3 Star2)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star5)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 130)
	(= (data Star5 infrared2) 271)
	(= (data Phenomenon6 infrared2) 74)
	(= (data Phenomenon7 infrared2) 239)
	(= (data Star8 infrared2) 126)
	(= (data Phenomenon9 infrared2) 250)
	(= (data Planet10 infrared2) 130)
	(= (data Planet11 infrared2) 141)
	(= (data Star12 infrared2) 110)
	(= (data Star13 infrared2) 278)
	(= (data Phenomenon14 infrared2) 98)
	(= (data Star5 spectrograph0) 16)
	(= (data Phenomenon6 spectrograph0) 117)
	(= (data Phenomenon7 spectrograph0) 229)
	(= (data Star8 spectrograph0) 226)
	(= (data Phenomenon9 spectrograph0) 195)
	(= (data Planet10 spectrograph0) 180)
	(= (data Planet11 spectrograph0) 111)
	(= (data Star12 spectrograph0) 19)
	(= (data Star13 spectrograph0) 88)
	(= (data Phenomenon14 spectrograph0) 244)
	(= (data Star5 infrared3) 196)
	(= (data Phenomenon6 infrared3) 175)
	(= (data Phenomenon7 infrared3) 6)
	(= (data Star8 infrared3) 71)
	(= (data Phenomenon9 infrared3) 16)
	(= (data Planet10 infrared3) 74)
	(= (data Planet11 infrared3) 240)
	(= (data Star12 infrared3) 165)
	(= (data Star13 infrared3) 188)
	(= (data Phenomenon14 infrared3) 299)
	(= (data Star5 image1) 45)
	(= (data Phenomenon6 image1) 183)
	(= (data Phenomenon7 image1) 240)
	(= (data Star8 image1) 3)
	(= (data Phenomenon9 image1) 52)
	(= (data Planet10 image1) 249)
	(= (data Planet11 image1) 73)
	(= (data Star12 image1) 164)
	(= (data Star13 image1) 114)
	(= (data Phenomenon14 image1) 233)
	(= (slew_time GroundStation1 Star0) 36.41)
	(= (slew_time Star0 GroundStation1) 36.41)
	(= (slew_time GroundStation4 Star0) 24.87)
	(= (slew_time Star0 GroundStation4) 24.87)
	(= (slew_time GroundStation4 GroundStation1) 3.979)
	(= (slew_time GroundStation1 GroundStation4) 3.979)
	(= (slew_time GroundStation4 Star2) 21.41)
	(= (slew_time Star2 GroundStation4) 21.41)
	(= (slew_time GroundStation4 GroundStation3) 32.73)
	(= (slew_time GroundStation3 GroundStation4) 32.73)
	(= (slew_time GroundStation3 Star0) 0.3706)
	(= (slew_time Star0 GroundStation3) 0.3706)
	(= (slew_time GroundStation3 GroundStation1) 8.112)
	(= (slew_time GroundStation1 GroundStation3) 8.112)
	(= (slew_time GroundStation3 Star2) 39.4)
	(= (slew_time Star2 GroundStation3) 39.4)
	(= (slew_time Star2 Star0) 67.15)
	(= (slew_time Star0 Star2) 67.15)
	(= (slew_time Star2 GroundStation1) 65.01)
	(= (slew_time GroundStation1 Star2) 65.01)
	(= (slew_time Star5 Star0) 40.59)
	(= (slew_time Star0 Star5) 40.59)
	(= (slew_time Star5 GroundStation1) 38.92)
	(= (slew_time GroundStation1 Star5) 38.92)
	(= (slew_time Star5 Star2) 22.79)
	(= (slew_time Star2 Star5) 22.79)
	(= (slew_time Star5 GroundStation3) 73.07)
	(= (slew_time GroundStation3 Star5) 73.07)
	(= (slew_time Star5 GroundStation4) 63.98)
	(= (slew_time GroundStation4 Star5) 63.98)
	(= (slew_time Phenomenon6 Star0) 10.9)
	(= (slew_time Star0 Phenomenon6) 10.9)
	(= (slew_time Phenomenon6 GroundStation1) 40.49)
	(= (slew_time GroundStation1 Phenomenon6) 40.49)
	(= (slew_time Phenomenon6 Star2) 10.95)
	(= (slew_time Star2 Phenomenon6) 10.95)
	(= (slew_time Phenomenon6 GroundStation3) 63.63)
	(= (slew_time GroundStation3 Phenomenon6) 63.63)
	(= (slew_time Phenomenon6 GroundStation4) 80.86)
	(= (slew_time GroundStation4 Phenomenon6) 80.86)
	(= (slew_time Phenomenon6 Star5) 19.93)
	(= (slew_time Star5 Phenomenon6) 19.93)
	(= (slew_time Phenomenon7 Star0) 49.79)
	(= (slew_time Star0 Phenomenon7) 49.79)
	(= (slew_time Phenomenon7 GroundStation1) 4.996)
	(= (slew_time GroundStation1 Phenomenon7) 4.996)
	(= (slew_time Phenomenon7 Star2) 69.11)
	(= (slew_time Star2 Phenomenon7) 69.11)
	(= (slew_time Phenomenon7 GroundStation3) 5.659)
	(= (slew_time GroundStation3 Phenomenon7) 5.659)
	(= (slew_time Phenomenon7 GroundStation4) 55.02)
	(= (slew_time GroundStation4 Phenomenon7) 55.02)
	(= (slew_time Phenomenon7 Star5) 42.39)
	(= (slew_time Star5 Phenomenon7) 42.39)
	(= (slew_time Phenomenon7 Phenomenon6) 5.372)
	(= (slew_time Phenomenon6 Phenomenon7) 5.372)
	(= (slew_time Star8 Star0) 12.88)
	(= (slew_time Star0 Star8) 12.88)
	(= (slew_time Star8 GroundStation1) 2.789)
	(= (slew_time GroundStation1 Star8) 2.789)
	(= (slew_time Star8 Star2) 18)
	(= (slew_time Star2 Star8) 18)
	(= (slew_time Star8 GroundStation3) 17.75)
	(= (slew_time GroundStation3 Star8) 17.75)
	(= (slew_time Star8 GroundStation4) 20.09)
	(= (slew_time GroundStation4 Star8) 20.09)
	(= (slew_time Star8 Star5) 15.08)
	(= (slew_time Star5 Star8) 15.08)
	(= (slew_time Star8 Phenomenon6) 28.3)
	(= (slew_time Phenomenon6 Star8) 28.3)
	(= (slew_time Star8 Phenomenon7) 4.902)
	(= (slew_time Phenomenon7 Star8) 4.902)
	(= (slew_time Phenomenon9 Star0) 42.71)
	(= (slew_time Star0 Phenomenon9) 42.71)
	(= (slew_time Phenomenon9 GroundStation1) 56.51)
	(= (slew_time GroundStation1 Phenomenon9) 56.51)
	(= (slew_time Phenomenon9 Star2) 62.13)
	(= (slew_time Star2 Phenomenon9) 62.13)
	(= (slew_time Phenomenon9 GroundStation3) 15.74)
	(= (slew_time GroundStation3 Phenomenon9) 15.74)
	(= (slew_time Phenomenon9 GroundStation4) 11.54)
	(= (slew_time GroundStation4 Phenomenon9) 11.54)
	(= (slew_time Phenomenon9 Star5) 28.93)
	(= (slew_time Star5 Phenomenon9) 28.93)
	(= (slew_time Phenomenon9 Phenomenon6) 11.96)
	(= (slew_time Phenomenon6 Phenomenon9) 11.96)
	(= (slew_time Phenomenon9 Phenomenon7) 91.01)
	(= (slew_time Phenomenon7 Phenomenon9) 91.01)
	(= (slew_time Phenomenon9 Star8) 14.63)
	(= (slew_time Star8 Phenomenon9) 14.63)
	(= (slew_time Planet10 Star0) 34.87)
	(= (slew_time Star0 Planet10) 34.87)
	(= (slew_time Planet10 GroundStation1) 28.92)
	(= (slew_time GroundStation1 Planet10) 28.92)
	(= (slew_time Planet10 Star2) 7.133)
	(= (slew_time Star2 Planet10) 7.133)
	(= (slew_time Planet10 GroundStation3) 9.286)
	(= (slew_time GroundStation3 Planet10) 9.286)
	(= (slew_time Planet10 GroundStation4) 47.02)
	(= (slew_time GroundStation4 Planet10) 47.02)
	(= (slew_time Planet10 Star5) 57.51)
	(= (slew_time Star5 Planet10) 57.51)
	(= (slew_time Planet10 Phenomenon6) 46.43)
	(= (slew_time Phenomenon6 Planet10) 46.43)
	(= (slew_time Planet10 Phenomenon7) 18.34)
	(= (slew_time Phenomenon7 Planet10) 18.34)
	(= (slew_time Planet10 Star8) 47.57)
	(= (slew_time Star8 Planet10) 47.57)
	(= (slew_time Planet10 Phenomenon9) 22.03)
	(= (slew_time Phenomenon9 Planet10) 22.03)
	(= (slew_time Planet11 Star0) 26.42)
	(= (slew_time Star0 Planet11) 26.42)
	(= (slew_time Planet11 GroundStation1) 63.31)
	(= (slew_time GroundStation1 Planet11) 63.31)
	(= (slew_time Planet11 Star2) 48.79)
	(= (slew_time Star2 Planet11) 48.79)
	(= (slew_time Planet11 GroundStation3) 38.45)
	(= (slew_time GroundStation3 Planet11) 38.45)
	(= (slew_time Planet11 GroundStation4) 21.55)
	(= (slew_time GroundStation4 Planet11) 21.55)
	(= (slew_time Planet11 Star5) 22)
	(= (slew_time Star5 Planet11) 22)
	(= (slew_time Planet11 Phenomenon6) 80.85)
	(= (slew_time Phenomenon6 Planet11) 80.85)
	(= (slew_time Planet11 Phenomenon7) 43.24)
	(= (slew_time Phenomenon7 Planet11) 43.24)
	(= (slew_time Planet11 Star8) 18.52)
	(= (slew_time Star8 Planet11) 18.52)
	(= (slew_time Planet11 Phenomenon9) 59.06)
	(= (slew_time Phenomenon9 Planet11) 59.06)
	(= (slew_time Planet11 Planet10) 5.407)
	(= (slew_time Planet10 Planet11) 5.407)
	(= (slew_time Star12 Star0) 2.013)
	(= (slew_time Star0 Star12) 2.013)
	(= (slew_time Star12 GroundStation1) 72.15)
	(= (slew_time GroundStation1 Star12) 72.15)
	(= (slew_time Star12 Star2) 51.28)
	(= (slew_time Star2 Star12) 51.28)
	(= (slew_time Star12 GroundStation3) 53.54)
	(= (slew_time GroundStation3 Star12) 53.54)
	(= (slew_time Star12 GroundStation4) 18.28)
	(= (slew_time GroundStation4 Star12) 18.28)
	(= (slew_time Star12 Star5) 62.54)
	(= (slew_time Star5 Star12) 62.54)
	(= (slew_time Star12 Phenomenon6) 57.47)
	(= (slew_time Phenomenon6 Star12) 57.47)
	(= (slew_time Star12 Phenomenon7) 68.2)
	(= (slew_time Phenomenon7 Star12) 68.2)
	(= (slew_time Star12 Star8) 22.2)
	(= (slew_time Star8 Star12) 22.2)
	(= (slew_time Star12 Phenomenon9) 10.67)
	(= (slew_time Phenomenon9 Star12) 10.67)
	(= (slew_time Star12 Planet10) 47.2)
	(= (slew_time Planet10 Star12) 47.2)
	(= (slew_time Star12 Planet11) 26.12)
	(= (slew_time Planet11 Star12) 26.12)
	(= (slew_time Star13 Star0) 41.62)
	(= (slew_time Star0 Star13) 41.62)
	(= (slew_time Star13 GroundStation1) 7.681)
	(= (slew_time GroundStation1 Star13) 7.681)
	(= (slew_time Star13 Star2) 13.95)
	(= (slew_time Star2 Star13) 13.95)
	(= (slew_time Star13 GroundStation3) 82.63)
	(= (slew_time GroundStation3 Star13) 82.63)
	(= (slew_time Star13 GroundStation4) 6.787)
	(= (slew_time GroundStation4 Star13) 6.787)
	(= (slew_time Star13 Star5) 0.6187)
	(= (slew_time Star5 Star13) 0.6187)
	(= (slew_time Star13 Phenomenon6) 23.29)
	(= (slew_time Phenomenon6 Star13) 23.29)
	(= (slew_time Star13 Phenomenon7) 35.09)
	(= (slew_time Phenomenon7 Star13) 35.09)
	(= (slew_time Star13 Star8) 45.71)
	(= (slew_time Star8 Star13) 45.71)
	(= (slew_time Star13 Phenomenon9) 37.95)
	(= (slew_time Phenomenon9 Star13) 37.95)
	(= (slew_time Star13 Planet10) 48.98)
	(= (slew_time Planet10 Star13) 48.98)
	(= (slew_time Star13 Planet11) 17.46)
	(= (slew_time Planet11 Star13) 17.46)
	(= (slew_time Star13 Star12) 13.93)
	(= (slew_time Star12 Star13) 13.93)
	(= (slew_time Phenomenon14 Star0) 52.49)
	(= (slew_time Star0 Phenomenon14) 52.49)
	(= (slew_time Phenomenon14 GroundStation1) 77.61)
	(= (slew_time GroundStation1 Phenomenon14) 77.61)
	(= (slew_time Phenomenon14 Star2) 79.82)
	(= (slew_time Star2 Phenomenon14) 79.82)
	(= (slew_time Phenomenon14 GroundStation3) 49.77)
	(= (slew_time GroundStation3 Phenomenon14) 49.77)
	(= (slew_time Phenomenon14 GroundStation4) 78.5)
	(= (slew_time GroundStation4 Phenomenon14) 78.5)
	(= (slew_time Phenomenon14 Star5) 46.78)
	(= (slew_time Star5 Phenomenon14) 46.78)
	(= (slew_time Phenomenon14 Phenomenon6) 74.15)
	(= (slew_time Phenomenon6 Phenomenon14) 74.15)
	(= (slew_time Phenomenon14 Phenomenon7) 40.64)
	(= (slew_time Phenomenon7 Phenomenon14) 40.64)
	(= (slew_time Phenomenon14 Star8) 8.156)
	(= (slew_time Star8 Phenomenon14) 8.156)
	(= (slew_time Phenomenon14 Phenomenon9) 23.93)
	(= (slew_time Phenomenon9 Phenomenon14) 23.93)
	(= (slew_time Phenomenon14 Planet10) 1.102)
	(= (slew_time Planet10 Phenomenon14) 1.102)
	(= (slew_time Phenomenon14 Planet11) 78.2)
	(= (slew_time Planet11 Phenomenon14) 78.2)
	(= (slew_time Phenomenon14 Star12) 47.67)
	(= (slew_time Star12 Phenomenon14) 47.67)
	(= (slew_time Phenomenon14 Star13) 58.09)
	(= (slew_time Star13 Phenomenon14) 58.09)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 GroundStation3)
	(have_image Star5 spectrograph0)
	(have_image Phenomenon6 spectrograph0)
	(have_image Phenomenon7 spectrograph0)
	(have_image Star8 spectrograph0)
	(have_image Phenomenon9 image1)
	(have_image Planet10 infrared3)
	(have_image Star12 infrared3)
	(have_image Star13 spectrograph0)
	(have_image Phenomenon14 image1)
))
(:metric minimize (fuel-used))

)
