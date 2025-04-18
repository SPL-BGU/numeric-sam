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
	satellite4 - satellite
	instrument9 - instrument
	thermograph2 - mode
	image4 - mode
	image3 - mode
	spectrograph0 - mode
	thermograph1 - mode
	Star1 - direction
	Star0 - direction
	Star2 - direction
	Star3 - direction
	Star4 - direction
	Star5 - direction
	Phenomenon6 - direction
	Planet7 - direction
	Planet8 - direction
	Planet9 - direction
	Planet10 - direction
	Star11 - direction
	Planet12 - direction
	Star13 - direction
	Star14 - direction
	Planet15 - direction
	Planet16 - direction
	Star17 - direction
	Planet18 - direction
	Star19 - direction
	Phenomenon20 - direction
	Phenomenon21 - direction
	Planet22 - direction
	Planet23 - direction
	Planet24 - direction
	Planet25 - direction
	Planet26 - direction
)
(:init
	(supports instrument0 image3)
	(supports instrument0 thermograph1)
	(supports instrument0 image4)
	(calibration_target instrument0 Star3)
	(supports instrument1 spectrograph0)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet12)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 104)
	(supports instrument2 spectrograph0)
	(supports instrument2 thermograph1)
	(supports instrument2 thermograph2)
	(calibration_target instrument2 Star0)
	(supports instrument3 spectrograph0)
	(supports instrument3 thermograph1)
	(supports instrument3 image4)
	(calibration_target instrument3 Star2)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet8)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 146)
	(supports instrument4 spectrograph0)
	(calibration_target instrument4 Star4)
	(supports instrument5 thermograph1)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 Star3)
	(supports instrument6 image3)
	(supports instrument6 spectrograph0)
	(supports instrument6 image4)
	(calibration_target instrument6 Star4)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star5)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 154)
	(supports instrument7 image3)
	(calibration_target instrument7 Star3)
	(supports instrument8 spectrograph0)
	(calibration_target instrument8 Star3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star17)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 144)
	(supports instrument9 thermograph1)
	(calibration_target instrument9 Star4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star11)
	(= (data_capacity satellite4) 1000)
	(= (fuel satellite4) 110)
	(= (data Star5 thermograph2) 195)
	(= (data Phenomenon6 thermograph2) 165)
	(= (data Planet7 thermograph2) 244)
	(= (data Planet8 thermograph2) 263)
	(= (data Planet9 thermograph2) 57)
	(= (data Planet10 thermograph2) 188)
	(= (data Star11 thermograph2) 36)
	(= (data Planet12 thermograph2) 18)
	(= (data Star13 thermograph2) 194)
	(= (data Star14 thermograph2) 50)
	(= (data Planet15 thermograph2) 140)
	(= (data Planet16 thermograph2) 67)
	(= (data Star17 thermograph2) 172)
	(= (data Planet18 thermograph2) 227)
	(= (data Star19 thermograph2) 104)
	(= (data Phenomenon20 thermograph2) 203)
	(= (data Phenomenon21 thermograph2) 216)
	(= (data Planet22 thermograph2) 156)
	(= (data Planet23 thermograph2) 30)
	(= (data Planet24 thermograph2) 207)
	(= (data Planet25 thermograph2) 84)
	(= (data Planet26 thermograph2) 132)
	(= (data Star5 image4) 140)
	(= (data Phenomenon6 image4) 124)
	(= (data Planet7 image4) 281)
	(= (data Planet8 image4) 173)
	(= (data Planet9 image4) 34)
	(= (data Planet10 image4) 39)
	(= (data Star11 image4) 207)
	(= (data Planet12 image4) 135)
	(= (data Star13 image4) 52)
	(= (data Star14 image4) 136)
	(= (data Planet15 image4) 63)
	(= (data Planet16 image4) 186)
	(= (data Star17 image4) 224)
	(= (data Planet18 image4) 134)
	(= (data Star19 image4) 136)
	(= (data Phenomenon20 image4) 213)
	(= (data Phenomenon21 image4) 92)
	(= (data Planet22 image4) 269)
	(= (data Planet23 image4) 63)
	(= (data Planet24 image4) 172)
	(= (data Planet25 image4) 183)
	(= (data Planet26 image4) 72)
	(= (data Star5 image3) 118)
	(= (data Phenomenon6 image3) 73)
	(= (data Planet7 image3) 299)
	(= (data Planet8 image3) 19)
	(= (data Planet9 image3) 134)
	(= (data Planet10 image3) 293)
	(= (data Star11 image3) 162)
	(= (data Planet12 image3) 262)
	(= (data Star13 image3) 259)
	(= (data Star14 image3) 214)
	(= (data Planet15 image3) 298)
	(= (data Planet16 image3) 203)
	(= (data Star17 image3) 194)
	(= (data Planet18 image3) 128)
	(= (data Star19 image3) 164)
	(= (data Phenomenon20 image3) 171)
	(= (data Phenomenon21 image3) 10)
	(= (data Planet22 image3) 15)
	(= (data Planet23 image3) 75)
	(= (data Planet24 image3) 224)
	(= (data Planet25 image3) 200)
	(= (data Planet26 image3) 92)
	(= (data Star5 spectrograph0) 93)
	(= (data Phenomenon6 spectrograph0) 240)
	(= (data Planet7 spectrograph0) 253)
	(= (data Planet8 spectrograph0) 72)
	(= (data Planet9 spectrograph0) 110)
	(= (data Planet10 spectrograph0) 31)
	(= (data Star11 spectrograph0) 170)
	(= (data Planet12 spectrograph0) 205)
	(= (data Star13 spectrograph0) 161)
	(= (data Star14 spectrograph0) 85)
	(= (data Planet15 spectrograph0) 111)
	(= (data Planet16 spectrograph0) 192)
	(= (data Star17 spectrograph0) 199)
	(= (data Planet18 spectrograph0) 31)
	(= (data Star19 spectrograph0) 274)
	(= (data Phenomenon20 spectrograph0) 3)
	(= (data Phenomenon21 spectrograph0) 20)
	(= (data Planet22 spectrograph0) 155)
	(= (data Planet23 spectrograph0) 14)
	(= (data Planet24 spectrograph0) 26)
	(= (data Planet25 spectrograph0) 178)
	(= (data Planet26 spectrograph0) 31)
	(= (data Star5 thermograph1) 246)
	(= (data Phenomenon6 thermograph1) 131)
	(= (data Planet7 thermograph1) 131)
	(= (data Planet8 thermograph1) 191)
	(= (data Planet9 thermograph1) 262)
	(= (data Planet10 thermograph1) 283)
	(= (data Star11 thermograph1) 168)
	(= (data Planet12 thermograph1) 248)
	(= (data Star13 thermograph1) 144)
	(= (data Star14 thermograph1) 146)
	(= (data Planet15 thermograph1) 169)
	(= (data Planet16 thermograph1) 207)
	(= (data Star17 thermograph1) 193)
	(= (data Planet18 thermograph1) 21)
	(= (data Star19 thermograph1) 96)
	(= (data Phenomenon20 thermograph1) 185)
	(= (data Phenomenon21 thermograph1) 81)
	(= (data Planet22 thermograph1) 181)
	(= (data Planet23 thermograph1) 246)
	(= (data Planet24 thermograph1) 224)
	(= (data Planet25 thermograph1) 12)
	(= (data Planet26 thermograph1) 24)
	(= (slew_time Star1 Star0) 45.32)
	(= (slew_time Star0 Star1) 45.32)
	(= (slew_time Star2 Star0) 33.25)
	(= (slew_time Star0 Star2) 33.25)
	(= (slew_time Star2 Star1) 8.126)
	(= (slew_time Star1 Star2) 8.126)
	(= (slew_time Star3 Star0) 49.46)
	(= (slew_time Star0 Star3) 49.46)
	(= (slew_time Star3 Star1) 56.06)
	(= (slew_time Star1 Star3) 56.06)
	(= (slew_time Star3 Star2) 47.6)
	(= (slew_time Star2 Star3) 47.6)
	(= (slew_time Star4 Star0) 35.15)
	(= (slew_time Star0 Star4) 35.15)
	(= (slew_time Star4 Star1) 88.94)
	(= (slew_time Star1 Star4) 88.94)
	(= (slew_time Star4 Star2) 36.02)
	(= (slew_time Star2 Star4) 36.02)
	(= (slew_time Star4 Star3) 19.96)
	(= (slew_time Star3 Star4) 19.96)
	(= (slew_time Star5 Star0) 87.17)
	(= (slew_time Star0 Star5) 87.17)
	(= (slew_time Star5 Star1) 5.911)
	(= (slew_time Star1 Star5) 5.911)
	(= (slew_time Star5 Star2) 8.091)
	(= (slew_time Star2 Star5) 8.091)
	(= (slew_time Star5 Star3) 25.54)
	(= (slew_time Star3 Star5) 25.54)
	(= (slew_time Star5 Star4) 34.66)
	(= (slew_time Star4 Star5) 34.66)
	(= (slew_time Phenomenon6 Star0) 26.77)
	(= (slew_time Star0 Phenomenon6) 26.77)
	(= (slew_time Phenomenon6 Star1) 31.16)
	(= (slew_time Star1 Phenomenon6) 31.16)
	(= (slew_time Phenomenon6 Star2) 0.8973)
	(= (slew_time Star2 Phenomenon6) 0.8973)
	(= (slew_time Phenomenon6 Star3) 35.43)
	(= (slew_time Star3 Phenomenon6) 35.43)
	(= (slew_time Phenomenon6 Star4) 47.79)
	(= (slew_time Star4 Phenomenon6) 47.79)
	(= (slew_time Phenomenon6 Star5) 49.61)
	(= (slew_time Star5 Phenomenon6) 49.61)
	(= (slew_time Planet7 Star0) 10.05)
	(= (slew_time Star0 Planet7) 10.05)
	(= (slew_time Planet7 Star1) 35.48)
	(= (slew_time Star1 Planet7) 35.48)
	(= (slew_time Planet7 Star2) 23.49)
	(= (slew_time Star2 Planet7) 23.49)
	(= (slew_time Planet7 Star3) 25.83)
	(= (slew_time Star3 Planet7) 25.83)
	(= (slew_time Planet7 Star4) 22.72)
	(= (slew_time Star4 Planet7) 22.72)
	(= (slew_time Planet7 Star5) 75.36)
	(= (slew_time Star5 Planet7) 75.36)
	(= (slew_time Planet7 Phenomenon6) 69.6)
	(= (slew_time Phenomenon6 Planet7) 69.6)
	(= (slew_time Planet8 Star0) 26.23)
	(= (slew_time Star0 Planet8) 26.23)
	(= (slew_time Planet8 Star1) 16.12)
	(= (slew_time Star1 Planet8) 16.12)
	(= (slew_time Planet8 Star2) 33.76)
	(= (slew_time Star2 Planet8) 33.76)
	(= (slew_time Planet8 Star3) 54.16)
	(= (slew_time Star3 Planet8) 54.16)
	(= (slew_time Planet8 Star4) 63.24)
	(= (slew_time Star4 Planet8) 63.24)
	(= (slew_time Planet8 Star5) 24.94)
	(= (slew_time Star5 Planet8) 24.94)
	(= (slew_time Planet8 Phenomenon6) 14.7)
	(= (slew_time Phenomenon6 Planet8) 14.7)
	(= (slew_time Planet8 Planet7) 31.73)
	(= (slew_time Planet7 Planet8) 31.73)
	(= (slew_time Planet9 Star0) 86.68)
	(= (slew_time Star0 Planet9) 86.68)
	(= (slew_time Planet9 Star1) 83.23)
	(= (slew_time Star1 Planet9) 83.23)
	(= (slew_time Planet9 Star2) 5.127)
	(= (slew_time Star2 Planet9) 5.127)
	(= (slew_time Planet9 Star3) 78.83)
	(= (slew_time Star3 Planet9) 78.83)
	(= (slew_time Planet9 Star4) 7.217)
	(= (slew_time Star4 Planet9) 7.217)
	(= (slew_time Planet9 Star5) 38.78)
	(= (slew_time Star5 Planet9) 38.78)
	(= (slew_time Planet9 Phenomenon6) 29.75)
	(= (slew_time Phenomenon6 Planet9) 29.75)
	(= (slew_time Planet9 Planet7) 23.64)
	(= (slew_time Planet7 Planet9) 23.64)
	(= (slew_time Planet9 Planet8) 53.18)
	(= (slew_time Planet8 Planet9) 53.18)
	(= (slew_time Planet10 Star0) 50.29)
	(= (slew_time Star0 Planet10) 50.29)
	(= (slew_time Planet10 Star1) 22.83)
	(= (slew_time Star1 Planet10) 22.83)
	(= (slew_time Planet10 Star2) 28.2)
	(= (slew_time Star2 Planet10) 28.2)
	(= (slew_time Planet10 Star3) 21.29)
	(= (slew_time Star3 Planet10) 21.29)
	(= (slew_time Planet10 Star4) 60.84)
	(= (slew_time Star4 Planet10) 60.84)
	(= (slew_time Planet10 Star5) 55.68)
	(= (slew_time Star5 Planet10) 55.68)
	(= (slew_time Planet10 Phenomenon6) 9.264)
	(= (slew_time Phenomenon6 Planet10) 9.264)
	(= (slew_time Planet10 Planet7) 27.84)
	(= (slew_time Planet7 Planet10) 27.84)
	(= (slew_time Planet10 Planet8) 42.01)
	(= (slew_time Planet8 Planet10) 42.01)
	(= (slew_time Planet10 Planet9) 6.689)
	(= (slew_time Planet9 Planet10) 6.689)
	(= (slew_time Star11 Star0) 1.176)
	(= (slew_time Star0 Star11) 1.176)
	(= (slew_time Star11 Star1) 55.99)
	(= (slew_time Star1 Star11) 55.99)
	(= (slew_time Star11 Star2) 9.67)
	(= (slew_time Star2 Star11) 9.67)
	(= (slew_time Star11 Star3) 41.91)
	(= (slew_time Star3 Star11) 41.91)
	(= (slew_time Star11 Star4) 18.2)
	(= (slew_time Star4 Star11) 18.2)
	(= (slew_time Star11 Star5) 17.14)
	(= (slew_time Star5 Star11) 17.14)
	(= (slew_time Star11 Phenomenon6) 9.379)
	(= (slew_time Phenomenon6 Star11) 9.379)
	(= (slew_time Star11 Planet7) 70.49)
	(= (slew_time Planet7 Star11) 70.49)
	(= (slew_time Star11 Planet8) 22.69)
	(= (slew_time Planet8 Star11) 22.69)
	(= (slew_time Star11 Planet9) 4.4)
	(= (slew_time Planet9 Star11) 4.4)
	(= (slew_time Star11 Planet10) 7.513)
	(= (slew_time Planet10 Star11) 7.513)
	(= (slew_time Planet12 Star0) 43.16)
	(= (slew_time Star0 Planet12) 43.16)
	(= (slew_time Planet12 Star1) 5.807)
	(= (slew_time Star1 Planet12) 5.807)
	(= (slew_time Planet12 Star2) 11.63)
	(= (slew_time Star2 Planet12) 11.63)
	(= (slew_time Planet12 Star3) 12.45)
	(= (slew_time Star3 Planet12) 12.45)
	(= (slew_time Planet12 Star4) 48.12)
	(= (slew_time Star4 Planet12) 48.12)
	(= (slew_time Planet12 Star5) 38.18)
	(= (slew_time Star5 Planet12) 38.18)
	(= (slew_time Planet12 Phenomenon6) 13.12)
	(= (slew_time Phenomenon6 Planet12) 13.12)
	(= (slew_time Planet12 Planet7) 1.63)
	(= (slew_time Planet7 Planet12) 1.63)
	(= (slew_time Planet12 Planet8) 35.04)
	(= (slew_time Planet8 Planet12) 35.04)
	(= (slew_time Planet12 Planet9) 79.91)
	(= (slew_time Planet9 Planet12) 79.91)
	(= (slew_time Planet12 Planet10) 6.708)
	(= (slew_time Planet10 Planet12) 6.708)
	(= (slew_time Planet12 Star11) 65.21)
	(= (slew_time Star11 Planet12) 65.21)
	(= (slew_time Star13 Star0) 24.46)
	(= (slew_time Star0 Star13) 24.46)
	(= (slew_time Star13 Star1) 36.84)
	(= (slew_time Star1 Star13) 36.84)
	(= (slew_time Star13 Star2) 25.39)
	(= (slew_time Star2 Star13) 25.39)
	(= (slew_time Star13 Star3) 38.9)
	(= (slew_time Star3 Star13) 38.9)
	(= (slew_time Star13 Star4) 30.35)
	(= (slew_time Star4 Star13) 30.35)
	(= (slew_time Star13 Star5) 10.23)
	(= (slew_time Star5 Star13) 10.23)
	(= (slew_time Star13 Phenomenon6) 65.15)
	(= (slew_time Phenomenon6 Star13) 65.15)
	(= (slew_time Star13 Planet7) 82.97)
	(= (slew_time Planet7 Star13) 82.97)
	(= (slew_time Star13 Planet8) 34.36)
	(= (slew_time Planet8 Star13) 34.36)
	(= (slew_time Star13 Planet9) 28.95)
	(= (slew_time Planet9 Star13) 28.95)
	(= (slew_time Star13 Planet10) 90.05)
	(= (slew_time Planet10 Star13) 90.05)
	(= (slew_time Star13 Star11) 28.71)
	(= (slew_time Star11 Star13) 28.71)
	(= (slew_time Star13 Planet12) 45.73)
	(= (slew_time Planet12 Star13) 45.73)
	(= (slew_time Star14 Star0) 3.783)
	(= (slew_time Star0 Star14) 3.783)
	(= (slew_time Star14 Star1) 12.93)
	(= (slew_time Star1 Star14) 12.93)
	(= (slew_time Star14 Star2) 53.56)
	(= (slew_time Star2 Star14) 53.56)
	(= (slew_time Star14 Star3) 3.559)
	(= (slew_time Star3 Star14) 3.559)
	(= (slew_time Star14 Star4) 44.86)
	(= (slew_time Star4 Star14) 44.86)
	(= (slew_time Star14 Star5) 54.53)
	(= (slew_time Star5 Star14) 54.53)
	(= (slew_time Star14 Phenomenon6) 45.06)
	(= (slew_time Phenomenon6 Star14) 45.06)
	(= (slew_time Star14 Planet7) 19.74)
	(= (slew_time Planet7 Star14) 19.74)
	(= (slew_time Star14 Planet8) 30.58)
	(= (slew_time Planet8 Star14) 30.58)
	(= (slew_time Star14 Planet9) 62.93)
	(= (slew_time Planet9 Star14) 62.93)
	(= (slew_time Star14 Planet10) 3.065)
	(= (slew_time Planet10 Star14) 3.065)
	(= (slew_time Star14 Star11) 8.867)
	(= (slew_time Star11 Star14) 8.867)
	(= (slew_time Star14 Planet12) 38.16)
	(= (slew_time Planet12 Star14) 38.16)
	(= (slew_time Star14 Star13) 66.26)
	(= (slew_time Star13 Star14) 66.26)
	(= (slew_time Planet15 Star0) 58.12)
	(= (slew_time Star0 Planet15) 58.12)
	(= (slew_time Planet15 Star1) 43.4)
	(= (slew_time Star1 Planet15) 43.4)
	(= (slew_time Planet15 Star2) 0.1604)
	(= (slew_time Star2 Planet15) 0.1604)
	(= (slew_time Planet15 Star3) 2.35)
	(= (slew_time Star3 Planet15) 2.35)
	(= (slew_time Planet15 Star4) 53.94)
	(= (slew_time Star4 Planet15) 53.94)
	(= (slew_time Planet15 Star5) 48.95)
	(= (slew_time Star5 Planet15) 48.95)
	(= (slew_time Planet15 Phenomenon6) 52.22)
	(= (slew_time Phenomenon6 Planet15) 52.22)
	(= (slew_time Planet15 Planet7) 85.66)
	(= (slew_time Planet7 Planet15) 85.66)
	(= (slew_time Planet15 Planet8) 10.26)
	(= (slew_time Planet8 Planet15) 10.26)
	(= (slew_time Planet15 Planet9) 17.12)
	(= (slew_time Planet9 Planet15) 17.12)
	(= (slew_time Planet15 Planet10) 47.35)
	(= (slew_time Planet10 Planet15) 47.35)
	(= (slew_time Planet15 Star11) 1.836)
	(= (slew_time Star11 Planet15) 1.836)
	(= (slew_time Planet15 Planet12) 81.31)
	(= (slew_time Planet12 Planet15) 81.31)
	(= (slew_time Planet15 Star13) 29.53)
	(= (slew_time Star13 Planet15) 29.53)
	(= (slew_time Planet15 Star14) 13.96)
	(= (slew_time Star14 Planet15) 13.96)
	(= (slew_time Planet16 Star0) 6.473)
	(= (slew_time Star0 Planet16) 6.473)
	(= (slew_time Planet16 Star1) 18.81)
	(= (slew_time Star1 Planet16) 18.81)
	(= (slew_time Planet16 Star2) 19.68)
	(= (slew_time Star2 Planet16) 19.68)
	(= (slew_time Planet16 Star3) 32.09)
	(= (slew_time Star3 Planet16) 32.09)
	(= (slew_time Planet16 Star4) 89.42)
	(= (slew_time Star4 Planet16) 89.42)
	(= (slew_time Planet16 Star5) 7.921)
	(= (slew_time Star5 Planet16) 7.921)
	(= (slew_time Planet16 Phenomenon6) 28.86)
	(= (slew_time Phenomenon6 Planet16) 28.86)
	(= (slew_time Planet16 Planet7) 20.73)
	(= (slew_time Planet7 Planet16) 20.73)
	(= (slew_time Planet16 Planet8) 64.42)
	(= (slew_time Planet8 Planet16) 64.42)
	(= (slew_time Planet16 Planet9) 8.433)
	(= (slew_time Planet9 Planet16) 8.433)
	(= (slew_time Planet16 Planet10) 5.915)
	(= (slew_time Planet10 Planet16) 5.915)
	(= (slew_time Planet16 Star11) 26)
	(= (slew_time Star11 Planet16) 26)
	(= (slew_time Planet16 Planet12) 26.28)
	(= (slew_time Planet12 Planet16) 26.28)
	(= (slew_time Planet16 Star13) 14.35)
	(= (slew_time Star13 Planet16) 14.35)
	(= (slew_time Planet16 Star14) 3.141)
	(= (slew_time Star14 Planet16) 3.141)
	(= (slew_time Planet16 Planet15) 13.52)
	(= (slew_time Planet15 Planet16) 13.52)
	(= (slew_time Star17 Star0) 53.31)
	(= (slew_time Star0 Star17) 53.31)
	(= (slew_time Star17 Star1) 42.8)
	(= (slew_time Star1 Star17) 42.8)
	(= (slew_time Star17 Star2) 37.69)
	(= (slew_time Star2 Star17) 37.69)
	(= (slew_time Star17 Star3) 36.55)
	(= (slew_time Star3 Star17) 36.55)
	(= (slew_time Star17 Star4) 55.47)
	(= (slew_time Star4 Star17) 55.47)
	(= (slew_time Star17 Star5) 88.09)
	(= (slew_time Star5 Star17) 88.09)
	(= (slew_time Star17 Phenomenon6) 40.53)
	(= (slew_time Phenomenon6 Star17) 40.53)
	(= (slew_time Star17 Planet7) 17.86)
	(= (slew_time Planet7 Star17) 17.86)
	(= (slew_time Star17 Planet8) 63.71)
	(= (slew_time Planet8 Star17) 63.71)
	(= (slew_time Star17 Planet9) 18.28)
	(= (slew_time Planet9 Star17) 18.28)
	(= (slew_time Star17 Planet10) 20.95)
	(= (slew_time Planet10 Star17) 20.95)
	(= (slew_time Star17 Star11) 11.23)
	(= (slew_time Star11 Star17) 11.23)
	(= (slew_time Star17 Planet12) 6.129)
	(= (slew_time Planet12 Star17) 6.129)
	(= (slew_time Star17 Star13) 31.2)
	(= (slew_time Star13 Star17) 31.2)
	(= (slew_time Star17 Star14) 23.04)
	(= (slew_time Star14 Star17) 23.04)
	(= (slew_time Star17 Planet15) 30.96)
	(= (slew_time Planet15 Star17) 30.96)
	(= (slew_time Star17 Planet16) 42.55)
	(= (slew_time Planet16 Star17) 42.55)
	(= (slew_time Planet18 Star0) 52.2)
	(= (slew_time Star0 Planet18) 52.2)
	(= (slew_time Planet18 Star1) 2.567)
	(= (slew_time Star1 Planet18) 2.567)
	(= (slew_time Planet18 Star2) 51.75)
	(= (slew_time Star2 Planet18) 51.75)
	(= (slew_time Planet18 Star3) 14.37)
	(= (slew_time Star3 Planet18) 14.37)
	(= (slew_time Planet18 Star4) 42.01)
	(= (slew_time Star4 Planet18) 42.01)
	(= (slew_time Planet18 Star5) 34.17)
	(= (slew_time Star5 Planet18) 34.17)
	(= (slew_time Planet18 Phenomenon6) 5.548)
	(= (slew_time Phenomenon6 Planet18) 5.548)
	(= (slew_time Planet18 Planet7) 15.42)
	(= (slew_time Planet7 Planet18) 15.42)
	(= (slew_time Planet18 Planet8) 57.29)
	(= (slew_time Planet8 Planet18) 57.29)
	(= (slew_time Planet18 Planet9) 4.189)
	(= (slew_time Planet9 Planet18) 4.189)
	(= (slew_time Planet18 Planet10) 16.45)
	(= (slew_time Planet10 Planet18) 16.45)
	(= (slew_time Planet18 Star11) 2.287)
	(= (slew_time Star11 Planet18) 2.287)
	(= (slew_time Planet18 Planet12) 7.24)
	(= (slew_time Planet12 Planet18) 7.24)
	(= (slew_time Planet18 Star13) 38.14)
	(= (slew_time Star13 Planet18) 38.14)
	(= (slew_time Planet18 Star14) 2.309)
	(= (slew_time Star14 Planet18) 2.309)
	(= (slew_time Planet18 Planet15) 14.92)
	(= (slew_time Planet15 Planet18) 14.92)
	(= (slew_time Planet18 Planet16) 59.86)
	(= (slew_time Planet16 Planet18) 59.86)
	(= (slew_time Planet18 Star17) 17.23)
	(= (slew_time Star17 Planet18) 17.23)
	(= (slew_time Star19 Star0) 17.68)
	(= (slew_time Star0 Star19) 17.68)
	(= (slew_time Star19 Star1) 22.82)
	(= (slew_time Star1 Star19) 22.82)
	(= (slew_time Star19 Star2) 62.76)
	(= (slew_time Star2 Star19) 62.76)
	(= (slew_time Star19 Star3) 6.881)
	(= (slew_time Star3 Star19) 6.881)
	(= (slew_time Star19 Star4) 47.55)
	(= (slew_time Star4 Star19) 47.55)
	(= (slew_time Star19 Star5) 39.58)
	(= (slew_time Star5 Star19) 39.58)
	(= (slew_time Star19 Phenomenon6) 67.47)
	(= (slew_time Phenomenon6 Star19) 67.47)
	(= (slew_time Star19 Planet7) 50.2)
	(= (slew_time Planet7 Star19) 50.2)
	(= (slew_time Star19 Planet8) 25.04)
	(= (slew_time Planet8 Star19) 25.04)
	(= (slew_time Star19 Planet9) 35.79)
	(= (slew_time Planet9 Star19) 35.79)
	(= (slew_time Star19 Planet10) 17.33)
	(= (slew_time Planet10 Star19) 17.33)
	(= (slew_time Star19 Star11) 62.62)
	(= (slew_time Star11 Star19) 62.62)
	(= (slew_time Star19 Planet12) 89.62)
	(= (slew_time Planet12 Star19) 89.62)
	(= (slew_time Star19 Star13) 23.63)
	(= (slew_time Star13 Star19) 23.63)
	(= (slew_time Star19 Star14) 13.04)
	(= (slew_time Star14 Star19) 13.04)
	(= (slew_time Star19 Planet15) 13.57)
	(= (slew_time Planet15 Star19) 13.57)
	(= (slew_time Star19 Planet16) 45.43)
	(= (slew_time Planet16 Star19) 45.43)
	(= (slew_time Star19 Star17) 7.398)
	(= (slew_time Star17 Star19) 7.398)
	(= (slew_time Star19 Planet18) 59.08)
	(= (slew_time Planet18 Star19) 59.08)
	(= (slew_time Phenomenon20 Star0) 45.1)
	(= (slew_time Star0 Phenomenon20) 45.1)
	(= (slew_time Phenomenon20 Star1) 28.75)
	(= (slew_time Star1 Phenomenon20) 28.75)
	(= (slew_time Phenomenon20 Star2) 73.24)
	(= (slew_time Star2 Phenomenon20) 73.24)
	(= (slew_time Phenomenon20 Star3) 4.82)
	(= (slew_time Star3 Phenomenon20) 4.82)
	(= (slew_time Phenomenon20 Star4) 42.55)
	(= (slew_time Star4 Phenomenon20) 42.55)
	(= (slew_time Phenomenon20 Star5) 29.42)
	(= (slew_time Star5 Phenomenon20) 29.42)
	(= (slew_time Phenomenon20 Phenomenon6) 2.2)
	(= (slew_time Phenomenon6 Phenomenon20) 2.2)
	(= (slew_time Phenomenon20 Planet7) 50.13)
	(= (slew_time Planet7 Phenomenon20) 50.13)
	(= (slew_time Phenomenon20 Planet8) 46.69)
	(= (slew_time Planet8 Phenomenon20) 46.69)
	(= (slew_time Phenomenon20 Planet9) 35.92)
	(= (slew_time Planet9 Phenomenon20) 35.92)
	(= (slew_time Phenomenon20 Planet10) 18.19)
	(= (slew_time Planet10 Phenomenon20) 18.19)
	(= (slew_time Phenomenon20 Star11) 2.033)
	(= (slew_time Star11 Phenomenon20) 2.033)
	(= (slew_time Phenomenon20 Planet12) 66.28)
	(= (slew_time Planet12 Phenomenon20) 66.28)
	(= (slew_time Phenomenon20 Star13) 16.04)
	(= (slew_time Star13 Phenomenon20) 16.04)
	(= (slew_time Phenomenon20 Star14) 2.209)
	(= (slew_time Star14 Phenomenon20) 2.209)
	(= (slew_time Phenomenon20 Planet15) 56.55)
	(= (slew_time Planet15 Phenomenon20) 56.55)
	(= (slew_time Phenomenon20 Planet16) 2.73)
	(= (slew_time Planet16 Phenomenon20) 2.73)
	(= (slew_time Phenomenon20 Star17) 5.11)
	(= (slew_time Star17 Phenomenon20) 5.11)
	(= (slew_time Phenomenon20 Planet18) 38.22)
	(= (slew_time Planet18 Phenomenon20) 38.22)
	(= (slew_time Phenomenon20 Star19) 23.56)
	(= (slew_time Star19 Phenomenon20) 23.56)
	(= (slew_time Phenomenon21 Star0) 53.28)
	(= (slew_time Star0 Phenomenon21) 53.28)
	(= (slew_time Phenomenon21 Star1) 28.6)
	(= (slew_time Star1 Phenomenon21) 28.6)
	(= (slew_time Phenomenon21 Star2) 22.29)
	(= (slew_time Star2 Phenomenon21) 22.29)
	(= (slew_time Phenomenon21 Star3) 49.44)
	(= (slew_time Star3 Phenomenon21) 49.44)
	(= (slew_time Phenomenon21 Star4) 80.17)
	(= (slew_time Star4 Phenomenon21) 80.17)
	(= (slew_time Phenomenon21 Star5) 37.94)
	(= (slew_time Star5 Phenomenon21) 37.94)
	(= (slew_time Phenomenon21 Phenomenon6) 69.59)
	(= (slew_time Phenomenon6 Phenomenon21) 69.59)
	(= (slew_time Phenomenon21 Planet7) 23.8)
	(= (slew_time Planet7 Phenomenon21) 23.8)
	(= (slew_time Phenomenon21 Planet8) 85.51)
	(= (slew_time Planet8 Phenomenon21) 85.51)
	(= (slew_time Phenomenon21 Planet9) 93.11)
	(= (slew_time Planet9 Phenomenon21) 93.11)
	(= (slew_time Phenomenon21 Planet10) 17.87)
	(= (slew_time Planet10 Phenomenon21) 17.87)
	(= (slew_time Phenomenon21 Star11) 30.31)
	(= (slew_time Star11 Phenomenon21) 30.31)
	(= (slew_time Phenomenon21 Planet12) 18.1)
	(= (slew_time Planet12 Phenomenon21) 18.1)
	(= (slew_time Phenomenon21 Star13) 68.29)
	(= (slew_time Star13 Phenomenon21) 68.29)
	(= (slew_time Phenomenon21 Star14) 37.25)
	(= (slew_time Star14 Phenomenon21) 37.25)
	(= (slew_time Phenomenon21 Planet15) 65.39)
	(= (slew_time Planet15 Phenomenon21) 65.39)
	(= (slew_time Phenomenon21 Planet16) 21.56)
	(= (slew_time Planet16 Phenomenon21) 21.56)
	(= (slew_time Phenomenon21 Star17) 7.377)
	(= (slew_time Star17 Phenomenon21) 7.377)
	(= (slew_time Phenomenon21 Planet18) 67)
	(= (slew_time Planet18 Phenomenon21) 67)
	(= (slew_time Phenomenon21 Star19) 59.12)
	(= (slew_time Star19 Phenomenon21) 59.12)
	(= (slew_time Phenomenon21 Phenomenon20) 55.09)
	(= (slew_time Phenomenon20 Phenomenon21) 55.09)
	(= (slew_time Planet22 Star0) 50.65)
	(= (slew_time Star0 Planet22) 50.65)
	(= (slew_time Planet22 Star1) 9.866)
	(= (slew_time Star1 Planet22) 9.866)
	(= (slew_time Planet22 Star2) 35.35)
	(= (slew_time Star2 Planet22) 35.35)
	(= (slew_time Planet22 Star3) 48.1)
	(= (slew_time Star3 Planet22) 48.1)
	(= (slew_time Planet22 Star4) 24.58)
	(= (slew_time Star4 Planet22) 24.58)
	(= (slew_time Planet22 Star5) 57.78)
	(= (slew_time Star5 Planet22) 57.78)
	(= (slew_time Planet22 Phenomenon6) 19.34)
	(= (slew_time Phenomenon6 Planet22) 19.34)
	(= (slew_time Planet22 Planet7) 26.67)
	(= (slew_time Planet7 Planet22) 26.67)
	(= (slew_time Planet22 Planet8) 12)
	(= (slew_time Planet8 Planet22) 12)
	(= (slew_time Planet22 Planet9) 77.72)
	(= (slew_time Planet9 Planet22) 77.72)
	(= (slew_time Planet22 Planet10) 23.82)
	(= (slew_time Planet10 Planet22) 23.82)
	(= (slew_time Planet22 Star11) 11.8)
	(= (slew_time Star11 Planet22) 11.8)
	(= (slew_time Planet22 Planet12) 29.47)
	(= (slew_time Planet12 Planet22) 29.47)
	(= (slew_time Planet22 Star13) 71.93)
	(= (slew_time Star13 Planet22) 71.93)
	(= (slew_time Planet22 Star14) 43.15)
	(= (slew_time Star14 Planet22) 43.15)
	(= (slew_time Planet22 Planet15) 34.34)
	(= (slew_time Planet15 Planet22) 34.34)
	(= (slew_time Planet22 Planet16) 47.3)
	(= (slew_time Planet16 Planet22) 47.3)
	(= (slew_time Planet22 Star17) 26.39)
	(= (slew_time Star17 Planet22) 26.39)
	(= (slew_time Planet22 Planet18) 37.35)
	(= (slew_time Planet18 Planet22) 37.35)
	(= (slew_time Planet22 Star19) 88.79)
	(= (slew_time Star19 Planet22) 88.79)
	(= (slew_time Planet22 Phenomenon20) 23.92)
	(= (slew_time Phenomenon20 Planet22) 23.92)
	(= (slew_time Planet22 Phenomenon21) 4.025)
	(= (slew_time Phenomenon21 Planet22) 4.025)
	(= (slew_time Planet23 Star0) 58.97)
	(= (slew_time Star0 Planet23) 58.97)
	(= (slew_time Planet23 Star1) 20.12)
	(= (slew_time Star1 Planet23) 20.12)
	(= (slew_time Planet23 Star2) 8.235)
	(= (slew_time Star2 Planet23) 8.235)
	(= (slew_time Planet23 Star3) 23.24)
	(= (slew_time Star3 Planet23) 23.24)
	(= (slew_time Planet23 Star4) 71.02)
	(= (slew_time Star4 Planet23) 71.02)
	(= (slew_time Planet23 Star5) 60.2)
	(= (slew_time Star5 Planet23) 60.2)
	(= (slew_time Planet23 Phenomenon6) 44.16)
	(= (slew_time Phenomenon6 Planet23) 44.16)
	(= (slew_time Planet23 Planet7) 16.11)
	(= (slew_time Planet7 Planet23) 16.11)
	(= (slew_time Planet23 Planet8) 59.46)
	(= (slew_time Planet8 Planet23) 59.46)
	(= (slew_time Planet23 Planet9) 10.21)
	(= (slew_time Planet9 Planet23) 10.21)
	(= (slew_time Planet23 Planet10) 41.79)
	(= (slew_time Planet10 Planet23) 41.79)
	(= (slew_time Planet23 Star11) 18.44)
	(= (slew_time Star11 Planet23) 18.44)
	(= (slew_time Planet23 Planet12) 19.64)
	(= (slew_time Planet12 Planet23) 19.64)
	(= (slew_time Planet23 Star13) 55.82)
	(= (slew_time Star13 Planet23) 55.82)
	(= (slew_time Planet23 Star14) 49.26)
	(= (slew_time Star14 Planet23) 49.26)
	(= (slew_time Planet23 Planet15) 2.025)
	(= (slew_time Planet15 Planet23) 2.025)
	(= (slew_time Planet23 Planet16) 65.29)
	(= (slew_time Planet16 Planet23) 65.29)
	(= (slew_time Planet23 Star17) 56.67)
	(= (slew_time Star17 Planet23) 56.67)
	(= (slew_time Planet23 Planet18) 16.78)
	(= (slew_time Planet18 Planet23) 16.78)
	(= (slew_time Planet23 Star19) 18.99)
	(= (slew_time Star19 Planet23) 18.99)
	(= (slew_time Planet23 Phenomenon20) 9.359)
	(= (slew_time Phenomenon20 Planet23) 9.359)
	(= (slew_time Planet23 Phenomenon21) 0.7779)
	(= (slew_time Phenomenon21 Planet23) 0.7779)
	(= (slew_time Planet23 Planet22) 10.54)
	(= (slew_time Planet22 Planet23) 10.54)
	(= (slew_time Planet24 Star0) 65.21)
	(= (slew_time Star0 Planet24) 65.21)
	(= (slew_time Planet24 Star1) 7.47)
	(= (slew_time Star1 Planet24) 7.47)
	(= (slew_time Planet24 Star2) 58.5)
	(= (slew_time Star2 Planet24) 58.5)
	(= (slew_time Planet24 Star3) 48.19)
	(= (slew_time Star3 Planet24) 48.19)
	(= (slew_time Planet24 Star4) 1.74)
	(= (slew_time Star4 Planet24) 1.74)
	(= (slew_time Planet24 Star5) 11.55)
	(= (slew_time Star5 Planet24) 11.55)
	(= (slew_time Planet24 Phenomenon6) 12.88)
	(= (slew_time Phenomenon6 Planet24) 12.88)
	(= (slew_time Planet24 Planet7) 56.27)
	(= (slew_time Planet7 Planet24) 56.27)
	(= (slew_time Planet24 Planet8) 77.73)
	(= (slew_time Planet8 Planet24) 77.73)
	(= (slew_time Planet24 Planet9) 67.89)
	(= (slew_time Planet9 Planet24) 67.89)
	(= (slew_time Planet24 Planet10) 13.06)
	(= (slew_time Planet10 Planet24) 13.06)
	(= (slew_time Planet24 Star11) 57.75)
	(= (slew_time Star11 Planet24) 57.75)
	(= (slew_time Planet24 Planet12) 16.96)
	(= (slew_time Planet12 Planet24) 16.96)
	(= (slew_time Planet24 Star13) 13.24)
	(= (slew_time Star13 Planet24) 13.24)
	(= (slew_time Planet24 Star14) 33.05)
	(= (slew_time Star14 Planet24) 33.05)
	(= (slew_time Planet24 Planet15) 7.965)
	(= (slew_time Planet15 Planet24) 7.965)
	(= (slew_time Planet24 Planet16) 1.291)
	(= (slew_time Planet16 Planet24) 1.291)
	(= (slew_time Planet24 Star17) 52.09)
	(= (slew_time Star17 Planet24) 52.09)
	(= (slew_time Planet24 Planet18) 48.11)
	(= (slew_time Planet18 Planet24) 48.11)
	(= (slew_time Planet24 Star19) 25.43)
	(= (slew_time Star19 Planet24) 25.43)
	(= (slew_time Planet24 Phenomenon20) 33.56)
	(= (slew_time Phenomenon20 Planet24) 33.56)
	(= (slew_time Planet24 Phenomenon21) 71.11)
	(= (slew_time Phenomenon21 Planet24) 71.11)
	(= (slew_time Planet24 Planet22) 68.61)
	(= (slew_time Planet22 Planet24) 68.61)
	(= (slew_time Planet24 Planet23) 13.55)
	(= (slew_time Planet23 Planet24) 13.55)
	(= (slew_time Planet25 Star0) 18.7)
	(= (slew_time Star0 Planet25) 18.7)
	(= (slew_time Planet25 Star1) 13.03)
	(= (slew_time Star1 Planet25) 13.03)
	(= (slew_time Planet25 Star2) 64.41)
	(= (slew_time Star2 Planet25) 64.41)
	(= (slew_time Planet25 Star3) 29.04)
	(= (slew_time Star3 Planet25) 29.04)
	(= (slew_time Planet25 Star4) 62.68)
	(= (slew_time Star4 Planet25) 62.68)
	(= (slew_time Planet25 Star5) 2.919)
	(= (slew_time Star5 Planet25) 2.919)
	(= (slew_time Planet25 Phenomenon6) 46.39)
	(= (slew_time Phenomenon6 Planet25) 46.39)
	(= (slew_time Planet25 Planet7) 25.23)
	(= (slew_time Planet7 Planet25) 25.23)
	(= (slew_time Planet25 Planet8) 14.56)
	(= (slew_time Planet8 Planet25) 14.56)
	(= (slew_time Planet25 Planet9) 40.81)
	(= (slew_time Planet9 Planet25) 40.81)
	(= (slew_time Planet25 Planet10) 65.23)
	(= (slew_time Planet10 Planet25) 65.23)
	(= (slew_time Planet25 Star11) 53.26)
	(= (slew_time Star11 Planet25) 53.26)
	(= (slew_time Planet25 Planet12) 1.974)
	(= (slew_time Planet12 Planet25) 1.974)
	(= (slew_time Planet25 Star13) 49.78)
	(= (slew_time Star13 Planet25) 49.78)
	(= (slew_time Planet25 Star14) 28.31)
	(= (slew_time Star14 Planet25) 28.31)
	(= (slew_time Planet25 Planet15) 42.36)
	(= (slew_time Planet15 Planet25) 42.36)
	(= (slew_time Planet25 Planet16) 60.35)
	(= (slew_time Planet16 Planet25) 60.35)
	(= (slew_time Planet25 Star17) 74.75)
	(= (slew_time Star17 Planet25) 74.75)
	(= (slew_time Planet25 Planet18) 29.83)
	(= (slew_time Planet18 Planet25) 29.83)
	(= (slew_time Planet25 Star19) 53.03)
	(= (slew_time Star19 Planet25) 53.03)
	(= (slew_time Planet25 Phenomenon20) 24.38)
	(= (slew_time Phenomenon20 Planet25) 24.38)
	(= (slew_time Planet25 Phenomenon21) 8.369)
	(= (slew_time Phenomenon21 Planet25) 8.369)
	(= (slew_time Planet25 Planet22) 6.441)
	(= (slew_time Planet22 Planet25) 6.441)
	(= (slew_time Planet25 Planet23) 31.43)
	(= (slew_time Planet23 Planet25) 31.43)
	(= (slew_time Planet25 Planet24) 4.355)
	(= (slew_time Planet24 Planet25) 4.355)
	(= (slew_time Planet26 Star0) 33.09)
	(= (slew_time Star0 Planet26) 33.09)
	(= (slew_time Planet26 Star1) 37.23)
	(= (slew_time Star1 Planet26) 37.23)
	(= (slew_time Planet26 Star2) 12.47)
	(= (slew_time Star2 Planet26) 12.47)
	(= (slew_time Planet26 Star3) 11.33)
	(= (slew_time Star3 Planet26) 11.33)
	(= (slew_time Planet26 Star4) 11.67)
	(= (slew_time Star4 Planet26) 11.67)
	(= (slew_time Planet26 Star5) 30.45)
	(= (slew_time Star5 Planet26) 30.45)
	(= (slew_time Planet26 Phenomenon6) 31.92)
	(= (slew_time Phenomenon6 Planet26) 31.92)
	(= (slew_time Planet26 Planet7) 12.81)
	(= (slew_time Planet7 Planet26) 12.81)
	(= (slew_time Planet26 Planet8) 13.22)
	(= (slew_time Planet8 Planet26) 13.22)
	(= (slew_time Planet26 Planet9) 21.52)
	(= (slew_time Planet9 Planet26) 21.52)
	(= (slew_time Planet26 Planet10) 25.31)
	(= (slew_time Planet10 Planet26) 25.31)
	(= (slew_time Planet26 Star11) 41.15)
	(= (slew_time Star11 Planet26) 41.15)
	(= (slew_time Planet26 Planet12) 15.92)
	(= (slew_time Planet12 Planet26) 15.92)
	(= (slew_time Planet26 Star13) 30.86)
	(= (slew_time Star13 Planet26) 30.86)
	(= (slew_time Planet26 Star14) 4.518)
	(= (slew_time Star14 Planet26) 4.518)
	(= (slew_time Planet26 Planet15) 39.52)
	(= (slew_time Planet15 Planet26) 39.52)
	(= (slew_time Planet26 Planet16) 47.53)
	(= (slew_time Planet16 Planet26) 47.53)
	(= (slew_time Planet26 Star17) 23.7)
	(= (slew_time Star17 Planet26) 23.7)
	(= (slew_time Planet26 Planet18) 41.41)
	(= (slew_time Planet18 Planet26) 41.41)
	(= (slew_time Planet26 Star19) 23.47)
	(= (slew_time Star19 Planet26) 23.47)
	(= (slew_time Planet26 Phenomenon20) 57.44)
	(= (slew_time Phenomenon20 Planet26) 57.44)
	(= (slew_time Planet26 Phenomenon21) 50.91)
	(= (slew_time Phenomenon21 Planet26) 50.91)
	(= (slew_time Planet26 Planet22) 34.25)
	(= (slew_time Planet22 Planet26) 34.25)
	(= (slew_time Planet26 Planet23) 15.6)
	(= (slew_time Planet23 Planet26) 15.6)
	(= (slew_time Planet26 Planet24) 6.619)
	(= (slew_time Planet24 Planet26) 6.619)
	(= (slew_time Planet26 Planet25) 0.3083)
	(= (slew_time Planet25 Planet26) 0.3083)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite3 Planet24)
	(pointing satellite4 Star14)
	(have_image Star5 thermograph2)
	(have_image Phenomenon6 thermograph1)
	(have_image Planet7 spectrograph0)
	(have_image Planet8 image3)
	(have_image Planet9 thermograph1)
	(have_image Planet10 thermograph2)
	(have_image Star11 image3)
	(have_image Planet12 spectrograph0)
	(have_image Star13 image4)
	(have_image Star14 spectrograph0)
	(have_image Planet15 thermograph1)
	(have_image Planet16 image4)
	(have_image Star17 thermograph1)
	(have_image Star19 thermograph2)
	(have_image Phenomenon20 thermograph2)
	(have_image Phenomenon21 image3)
	(have_image Planet22 thermograph2)
	(have_image Planet23 thermograph2)
	(have_image Planet24 image4)
	(have_image Planet25 image3)
	(have_image Planet26 image4)
))
(:metric minimize (fuel-used))

)
