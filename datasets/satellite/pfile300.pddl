(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	instrument3 - instrument
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	spectrograph0 - mode
	infrared2 - mode
	spectrograph3 - mode
	spectrograph1 - mode
	GroundStation1 - direction
	GroundStation2 - direction
	GroundStation0 - direction
	Phenomenon3 - direction
	Star4 - direction
	Phenomenon5 - direction
	Star6 - direction
	Star7 - direction
	Planet8 - direction
	Planet9 - direction
	Star10 - direction
	Star11 - direction
	Planet12 - direction
	Phenomenon13 - direction
	Star14 - direction
	Phenomenon15 - direction
	Star16 - direction
	Star17 - direction
	Star18 - direction
)
(:init
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 GroundStation2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star11)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 108)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 GroundStation0)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star4)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 188)
	(supports instrument2 infrared2)
	(supports instrument2 spectrograph0)
	(calibration_target instrument2 GroundStation0)
	(supports instrument3 infrared2)
	(calibration_target instrument3 GroundStation0)
	(supports instrument4 spectrograph0)
	(calibration_target instrument4 GroundStation2)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon3)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 158)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 GroundStation2)
	(supports instrument6 spectrograph3)
	(supports instrument6 infrared2)
	(calibration_target instrument6 GroundStation0)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet9)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 135)
	(supports instrument7 spectrograph1)
	(supports instrument7 spectrograph3)
	(supports instrument7 infrared2)
	(calibration_target instrument7 GroundStation0)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 GroundStation1)
	(= (data_capacity satellite4) 1000)
	(= (fuel satellite4) 183)
	(= (data Phenomenon3 spectrograph0) 35)
	(= (data Star4 spectrograph0) 126)
	(= (data Phenomenon5 spectrograph0) 222)
	(= (data Star6 spectrograph0) 253)
	(= (data Star7 spectrograph0) 35)
	(= (data Planet8 spectrograph0) 188)
	(= (data Planet9 spectrograph0) 82)
	(= (data Star10 spectrograph0) 152)
	(= (data Star11 spectrograph0) 196)
	(= (data Planet12 spectrograph0) 300)
	(= (data Phenomenon13 spectrograph0) 72)
	(= (data Star14 spectrograph0) 23)
	(= (data Phenomenon15 spectrograph0) 42)
	(= (data Star16 spectrograph0) 65)
	(= (data Star17 spectrograph0) 96)
	(= (data Star18 spectrograph0) 99)
	(= (data Phenomenon3 infrared2) 229)
	(= (data Star4 infrared2) 4)
	(= (data Phenomenon5 infrared2) 210)
	(= (data Star6 infrared2) 32)
	(= (data Star7 infrared2) 232)
	(= (data Planet8 infrared2) 113)
	(= (data Planet9 infrared2) 280)
	(= (data Star10 infrared2) 61)
	(= (data Star11 infrared2) 193)
	(= (data Planet12 infrared2) 129)
	(= (data Phenomenon13 infrared2) 128)
	(= (data Star14 infrared2) 287)
	(= (data Phenomenon15 infrared2) 262)
	(= (data Star16 infrared2) 93)
	(= (data Star17 infrared2) 30)
	(= (data Star18 infrared2) 16)
	(= (data Phenomenon3 spectrograph3) 208)
	(= (data Star4 spectrograph3) 251)
	(= (data Phenomenon5 spectrograph3) 222)
	(= (data Star6 spectrograph3) 51)
	(= (data Star7 spectrograph3) 251)
	(= (data Planet8 spectrograph3) 277)
	(= (data Planet9 spectrograph3) 58)
	(= (data Star10 spectrograph3) 234)
	(= (data Star11 spectrograph3) 256)
	(= (data Planet12 spectrograph3) 110)
	(= (data Phenomenon13 spectrograph3) 281)
	(= (data Star14 spectrograph3) 157)
	(= (data Phenomenon15 spectrograph3) 189)
	(= (data Star16 spectrograph3) 56)
	(= (data Star17 spectrograph3) 10)
	(= (data Star18 spectrograph3) 281)
	(= (data Phenomenon3 spectrograph1) 90)
	(= (data Star4 spectrograph1) 40)
	(= (data Phenomenon5 spectrograph1) 289)
	(= (data Star6 spectrograph1) 144)
	(= (data Star7 spectrograph1) 172)
	(= (data Planet8 spectrograph1) 76)
	(= (data Planet9 spectrograph1) 99)
	(= (data Star10 spectrograph1) 119)
	(= (data Star11 spectrograph1) 177)
	(= (data Planet12 spectrograph1) 61)
	(= (data Phenomenon13 spectrograph1) 203)
	(= (data Star14 spectrograph1) 140)
	(= (data Phenomenon15 spectrograph1) 19)
	(= (data Star16 spectrograph1) 69)
	(= (data Star17 spectrograph1) 166)
	(= (data Star18 spectrograph1) 264)
	(= (slew_time GroundStation1 GroundStation0) 71.39)
	(= (slew_time GroundStation0 GroundStation1) 71.39)
	(= (slew_time GroundStation2 GroundStation0) 16.78)
	(= (slew_time GroundStation0 GroundStation2) 16.78)
	(= (slew_time GroundStation2 GroundStation1) 19.39)
	(= (slew_time GroundStation1 GroundStation2) 19.39)
	(= (slew_time Phenomenon3 GroundStation0) 68.57)
	(= (slew_time GroundStation0 Phenomenon3) 68.57)
	(= (slew_time Phenomenon3 GroundStation1) 25.39)
	(= (slew_time GroundStation1 Phenomenon3) 25.39)
	(= (slew_time Phenomenon3 GroundStation2) 31.63)
	(= (slew_time GroundStation2 Phenomenon3) 31.63)
	(= (slew_time Star4 GroundStation0) 25.2)
	(= (slew_time GroundStation0 Star4) 25.2)
	(= (slew_time Star4 GroundStation1) 81.63)
	(= (slew_time GroundStation1 Star4) 81.63)
	(= (slew_time Star4 GroundStation2) 43.22)
	(= (slew_time GroundStation2 Star4) 43.22)
	(= (slew_time Star4 Phenomenon3) 16.79)
	(= (slew_time Phenomenon3 Star4) 16.79)
	(= (slew_time Phenomenon5 GroundStation0) 58.84)
	(= (slew_time GroundStation0 Phenomenon5) 58.84)
	(= (slew_time Phenomenon5 GroundStation1) 19.61)
	(= (slew_time GroundStation1 Phenomenon5) 19.61)
	(= (slew_time Phenomenon5 GroundStation2) 11.92)
	(= (slew_time GroundStation2 Phenomenon5) 11.92)
	(= (slew_time Phenomenon5 Phenomenon3) 14.82)
	(= (slew_time Phenomenon3 Phenomenon5) 14.82)
	(= (slew_time Phenomenon5 Star4) 82.72)
	(= (slew_time Star4 Phenomenon5) 82.72)
	(= (slew_time Star6 GroundStation0) 51.08)
	(= (slew_time GroundStation0 Star6) 51.08)
	(= (slew_time Star6 GroundStation1) 25.5)
	(= (slew_time GroundStation1 Star6) 25.5)
	(= (slew_time Star6 GroundStation2) 28.61)
	(= (slew_time GroundStation2 Star6) 28.61)
	(= (slew_time Star6 Phenomenon3) 56.05)
	(= (slew_time Phenomenon3 Star6) 56.05)
	(= (slew_time Star6 Star4) 17.52)
	(= (slew_time Star4 Star6) 17.52)
	(= (slew_time Star6 Phenomenon5) 43.85)
	(= (slew_time Phenomenon5 Star6) 43.85)
	(= (slew_time Star7 GroundStation0) 91.76)
	(= (slew_time GroundStation0 Star7) 91.76)
	(= (slew_time Star7 GroundStation1) 31.22)
	(= (slew_time GroundStation1 Star7) 31.22)
	(= (slew_time Star7 GroundStation2) 59.21)
	(= (slew_time GroundStation2 Star7) 59.21)
	(= (slew_time Star7 Phenomenon3) 15.61)
	(= (slew_time Phenomenon3 Star7) 15.61)
	(= (slew_time Star7 Star4) 4.038)
	(= (slew_time Star4 Star7) 4.038)
	(= (slew_time Star7 Phenomenon5) 22.08)
	(= (slew_time Phenomenon5 Star7) 22.08)
	(= (slew_time Star7 Star6) 48.92)
	(= (slew_time Star6 Star7) 48.92)
	(= (slew_time Planet8 GroundStation0) 80.48)
	(= (slew_time GroundStation0 Planet8) 80.48)
	(= (slew_time Planet8 GroundStation1) 0.6649)
	(= (slew_time GroundStation1 Planet8) 0.6649)
	(= (slew_time Planet8 GroundStation2) 85.36)
	(= (slew_time GroundStation2 Planet8) 85.36)
	(= (slew_time Planet8 Phenomenon3) 67.43)
	(= (slew_time Phenomenon3 Planet8) 67.43)
	(= (slew_time Planet8 Star4) 41.88)
	(= (slew_time Star4 Planet8) 41.88)
	(= (slew_time Planet8 Phenomenon5) 44.52)
	(= (slew_time Phenomenon5 Planet8) 44.52)
	(= (slew_time Planet8 Star6) 9.299)
	(= (slew_time Star6 Planet8) 9.299)
	(= (slew_time Planet8 Star7) 3.327)
	(= (slew_time Star7 Planet8) 3.327)
	(= (slew_time Planet9 GroundStation0) 10.19)
	(= (slew_time GroundStation0 Planet9) 10.19)
	(= (slew_time Planet9 GroundStation1) 64.53)
	(= (slew_time GroundStation1 Planet9) 64.53)
	(= (slew_time Planet9 GroundStation2) 23.12)
	(= (slew_time GroundStation2 Planet9) 23.12)
	(= (slew_time Planet9 Phenomenon3) 62.29)
	(= (slew_time Phenomenon3 Planet9) 62.29)
	(= (slew_time Planet9 Star4) 91.39)
	(= (slew_time Star4 Planet9) 91.39)
	(= (slew_time Planet9 Phenomenon5) 33.51)
	(= (slew_time Phenomenon5 Planet9) 33.51)
	(= (slew_time Planet9 Star6) 0.2364)
	(= (slew_time Star6 Planet9) 0.2364)
	(= (slew_time Planet9 Star7) 26.98)
	(= (slew_time Star7 Planet9) 26.98)
	(= (slew_time Planet9 Planet8) 60.13)
	(= (slew_time Planet8 Planet9) 60.13)
	(= (slew_time Star10 GroundStation0) 32.31)
	(= (slew_time GroundStation0 Star10) 32.31)
	(= (slew_time Star10 GroundStation1) 18.7)
	(= (slew_time GroundStation1 Star10) 18.7)
	(= (slew_time Star10 GroundStation2) 26.13)
	(= (slew_time GroundStation2 Star10) 26.13)
	(= (slew_time Star10 Phenomenon3) 20.35)
	(= (slew_time Phenomenon3 Star10) 20.35)
	(= (slew_time Star10 Star4) 6.793)
	(= (slew_time Star4 Star10) 6.793)
	(= (slew_time Star10 Phenomenon5) 9.414)
	(= (slew_time Phenomenon5 Star10) 9.414)
	(= (slew_time Star10 Star6) 52.94)
	(= (slew_time Star6 Star10) 52.94)
	(= (slew_time Star10 Star7) 18.46)
	(= (slew_time Star7 Star10) 18.46)
	(= (slew_time Star10 Planet8) 6.836)
	(= (slew_time Planet8 Star10) 6.836)
	(= (slew_time Star10 Planet9) 18.49)
	(= (slew_time Planet9 Star10) 18.49)
	(= (slew_time Star11 GroundStation0) 59.04)
	(= (slew_time GroundStation0 Star11) 59.04)
	(= (slew_time Star11 GroundStation1) 36.39)
	(= (slew_time GroundStation1 Star11) 36.39)
	(= (slew_time Star11 GroundStation2) 28.06)
	(= (slew_time GroundStation2 Star11) 28.06)
	(= (slew_time Star11 Phenomenon3) 68.8)
	(= (slew_time Phenomenon3 Star11) 68.8)
	(= (slew_time Star11 Star4) 16.02)
	(= (slew_time Star4 Star11) 16.02)
	(= (slew_time Star11 Phenomenon5) 15.8)
	(= (slew_time Phenomenon5 Star11) 15.8)
	(= (slew_time Star11 Star6) 32.61)
	(= (slew_time Star6 Star11) 32.61)
	(= (slew_time Star11 Star7) 32.68)
	(= (slew_time Star7 Star11) 32.68)
	(= (slew_time Star11 Planet8) 5.583)
	(= (slew_time Planet8 Star11) 5.583)
	(= (slew_time Star11 Planet9) 60.25)
	(= (slew_time Planet9 Star11) 60.25)
	(= (slew_time Star11 Star10) 30.63)
	(= (slew_time Star10 Star11) 30.63)
	(= (slew_time Planet12 GroundStation0) 0.1052)
	(= (slew_time GroundStation0 Planet12) 0.1052)
	(= (slew_time Planet12 GroundStation1) 65.18)
	(= (slew_time GroundStation1 Planet12) 65.18)
	(= (slew_time Planet12 GroundStation2) 29.46)
	(= (slew_time GroundStation2 Planet12) 29.46)
	(= (slew_time Planet12 Phenomenon3) 8.627)
	(= (slew_time Phenomenon3 Planet12) 8.627)
	(= (slew_time Planet12 Star4) 47.44)
	(= (slew_time Star4 Planet12) 47.44)
	(= (slew_time Planet12 Phenomenon5) 12.59)
	(= (slew_time Phenomenon5 Planet12) 12.59)
	(= (slew_time Planet12 Star6) 47.47)
	(= (slew_time Star6 Planet12) 47.47)
	(= (slew_time Planet12 Star7) 30.37)
	(= (slew_time Star7 Planet12) 30.37)
	(= (slew_time Planet12 Planet8) 0.3)
	(= (slew_time Planet8 Planet12) 0.3)
	(= (slew_time Planet12 Planet9) 63.64)
	(= (slew_time Planet9 Planet12) 63.64)
	(= (slew_time Planet12 Star10) 26.04)
	(= (slew_time Star10 Planet12) 26.04)
	(= (slew_time Planet12 Star11) 1.713)
	(= (slew_time Star11 Planet12) 1.713)
	(= (slew_time Phenomenon13 GroundStation0) 15.71)
	(= (slew_time GroundStation0 Phenomenon13) 15.71)
	(= (slew_time Phenomenon13 GroundStation1) 15.79)
	(= (slew_time GroundStation1 Phenomenon13) 15.79)
	(= (slew_time Phenomenon13 GroundStation2) 35.27)
	(= (slew_time GroundStation2 Phenomenon13) 35.27)
	(= (slew_time Phenomenon13 Phenomenon3) 56.56)
	(= (slew_time Phenomenon3 Phenomenon13) 56.56)
	(= (slew_time Phenomenon13 Star4) 17.49)
	(= (slew_time Star4 Phenomenon13) 17.49)
	(= (slew_time Phenomenon13 Phenomenon5) 24.58)
	(= (slew_time Phenomenon5 Phenomenon13) 24.58)
	(= (slew_time Phenomenon13 Star6) 50.88)
	(= (slew_time Star6 Phenomenon13) 50.88)
	(= (slew_time Phenomenon13 Star7) 20.26)
	(= (slew_time Star7 Phenomenon13) 20.26)
	(= (slew_time Phenomenon13 Planet8) 20.25)
	(= (slew_time Planet8 Phenomenon13) 20.25)
	(= (slew_time Phenomenon13 Planet9) 10.53)
	(= (slew_time Planet9 Phenomenon13) 10.53)
	(= (slew_time Phenomenon13 Star10) 37.64)
	(= (slew_time Star10 Phenomenon13) 37.64)
	(= (slew_time Phenomenon13 Star11) 33.1)
	(= (slew_time Star11 Phenomenon13) 33.1)
	(= (slew_time Phenomenon13 Planet12) 2.639)
	(= (slew_time Planet12 Phenomenon13) 2.639)
	(= (slew_time Star14 GroundStation0) 29.9)
	(= (slew_time GroundStation0 Star14) 29.9)
	(= (slew_time Star14 GroundStation1) 20.59)
	(= (slew_time GroundStation1 Star14) 20.59)
	(= (slew_time Star14 GroundStation2) 25.86)
	(= (slew_time GroundStation2 Star14) 25.86)
	(= (slew_time Star14 Phenomenon3) 44.39)
	(= (slew_time Phenomenon3 Star14) 44.39)
	(= (slew_time Star14 Star4) 3.038)
	(= (slew_time Star4 Star14) 3.038)
	(= (slew_time Star14 Phenomenon5) 53.68)
	(= (slew_time Phenomenon5 Star14) 53.68)
	(= (slew_time Star14 Star6) 45.84)
	(= (slew_time Star6 Star14) 45.84)
	(= (slew_time Star14 Star7) 26.15)
	(= (slew_time Star7 Star14) 26.15)
	(= (slew_time Star14 Planet8) 39.22)
	(= (slew_time Planet8 Star14) 39.22)
	(= (slew_time Star14 Planet9) 31.39)
	(= (slew_time Planet9 Star14) 31.39)
	(= (slew_time Star14 Star10) 49.77)
	(= (slew_time Star10 Star14) 49.77)
	(= (slew_time Star14 Star11) 25.5)
	(= (slew_time Star11 Star14) 25.5)
	(= (slew_time Star14 Planet12) 42.93)
	(= (slew_time Planet12 Star14) 42.93)
	(= (slew_time Star14 Phenomenon13) 1.62)
	(= (slew_time Phenomenon13 Star14) 1.62)
	(= (slew_time Phenomenon15 GroundStation0) 12.98)
	(= (slew_time GroundStation0 Phenomenon15) 12.98)
	(= (slew_time Phenomenon15 GroundStation1) 11.86)
	(= (slew_time GroundStation1 Phenomenon15) 11.86)
	(= (slew_time Phenomenon15 GroundStation2) 17.08)
	(= (slew_time GroundStation2 Phenomenon15) 17.08)
	(= (slew_time Phenomenon15 Phenomenon3) 27.17)
	(= (slew_time Phenomenon3 Phenomenon15) 27.17)
	(= (slew_time Phenomenon15 Star4) 1.027)
	(= (slew_time Star4 Phenomenon15) 1.027)
	(= (slew_time Phenomenon15 Phenomenon5) 85.13)
	(= (slew_time Phenomenon5 Phenomenon15) 85.13)
	(= (slew_time Phenomenon15 Star6) 37.22)
	(= (slew_time Star6 Phenomenon15) 37.22)
	(= (slew_time Phenomenon15 Star7) 44.31)
	(= (slew_time Star7 Phenomenon15) 44.31)
	(= (slew_time Phenomenon15 Planet8) 80.3)
	(= (slew_time Planet8 Phenomenon15) 80.3)
	(= (slew_time Phenomenon15 Planet9) 7.92)
	(= (slew_time Planet9 Phenomenon15) 7.92)
	(= (slew_time Phenomenon15 Star10) 15.9)
	(= (slew_time Star10 Phenomenon15) 15.9)
	(= (slew_time Phenomenon15 Star11) 37.96)
	(= (slew_time Star11 Phenomenon15) 37.96)
	(= (slew_time Phenomenon15 Planet12) 53.63)
	(= (slew_time Planet12 Phenomenon15) 53.63)
	(= (slew_time Phenomenon15 Phenomenon13) 5.257)
	(= (slew_time Phenomenon13 Phenomenon15) 5.257)
	(= (slew_time Phenomenon15 Star14) 15.25)
	(= (slew_time Star14 Phenomenon15) 15.25)
	(= (slew_time Star16 GroundStation0) 52.14)
	(= (slew_time GroundStation0 Star16) 52.14)
	(= (slew_time Star16 GroundStation1) 35.87)
	(= (slew_time GroundStation1 Star16) 35.87)
	(= (slew_time Star16 GroundStation2) 13.06)
	(= (slew_time GroundStation2 Star16) 13.06)
	(= (slew_time Star16 Phenomenon3) 13.28)
	(= (slew_time Phenomenon3 Star16) 13.28)
	(= (slew_time Star16 Star4) 60.09)
	(= (slew_time Star4 Star16) 60.09)
	(= (slew_time Star16 Phenomenon5) 23.83)
	(= (slew_time Phenomenon5 Star16) 23.83)
	(= (slew_time Star16 Star6) 30.95)
	(= (slew_time Star6 Star16) 30.95)
	(= (slew_time Star16 Star7) 25.69)
	(= (slew_time Star7 Star16) 25.69)
	(= (slew_time Star16 Planet8) 15.26)
	(= (slew_time Planet8 Star16) 15.26)
	(= (slew_time Star16 Planet9) 64.78)
	(= (slew_time Planet9 Star16) 64.78)
	(= (slew_time Star16 Star10) 42.58)
	(= (slew_time Star10 Star16) 42.58)
	(= (slew_time Star16 Star11) 30.96)
	(= (slew_time Star11 Star16) 30.96)
	(= (slew_time Star16 Planet12) 47.27)
	(= (slew_time Planet12 Star16) 47.27)
	(= (slew_time Star16 Phenomenon13) 33.73)
	(= (slew_time Phenomenon13 Star16) 33.73)
	(= (slew_time Star16 Star14) 24.31)
	(= (slew_time Star14 Star16) 24.31)
	(= (slew_time Star16 Phenomenon15) 10.19)
	(= (slew_time Phenomenon15 Star16) 10.19)
	(= (slew_time Star17 GroundStation0) 1.717)
	(= (slew_time GroundStation0 Star17) 1.717)
	(= (slew_time Star17 GroundStation1) 73.13)
	(= (slew_time GroundStation1 Star17) 73.13)
	(= (slew_time Star17 GroundStation2) 23.9)
	(= (slew_time GroundStation2 Star17) 23.9)
	(= (slew_time Star17 Phenomenon3) 1.574)
	(= (slew_time Phenomenon3 Star17) 1.574)
	(= (slew_time Star17 Star4) 29.12)
	(= (slew_time Star4 Star17) 29.12)
	(= (slew_time Star17 Phenomenon5) 11.88)
	(= (slew_time Phenomenon5 Star17) 11.88)
	(= (slew_time Star17 Star6) 12.74)
	(= (slew_time Star6 Star17) 12.74)
	(= (slew_time Star17 Star7) 15.78)
	(= (slew_time Star7 Star17) 15.78)
	(= (slew_time Star17 Planet8) 13.88)
	(= (slew_time Planet8 Star17) 13.88)
	(= (slew_time Star17 Planet9) 14.96)
	(= (slew_time Planet9 Star17) 14.96)
	(= (slew_time Star17 Star10) 7.354)
	(= (slew_time Star10 Star17) 7.354)
	(= (slew_time Star17 Star11) 17.41)
	(= (slew_time Star11 Star17) 17.41)
	(= (slew_time Star17 Planet12) 30.45)
	(= (slew_time Planet12 Star17) 30.45)
	(= (slew_time Star17 Phenomenon13) 39.76)
	(= (slew_time Phenomenon13 Star17) 39.76)
	(= (slew_time Star17 Star14) 20.4)
	(= (slew_time Star14 Star17) 20.4)
	(= (slew_time Star17 Phenomenon15) 11.92)
	(= (slew_time Phenomenon15 Star17) 11.92)
	(= (slew_time Star17 Star16) 9.154)
	(= (slew_time Star16 Star17) 9.154)
	(= (slew_time Star18 GroundStation0) 83.05)
	(= (slew_time GroundStation0 Star18) 83.05)
	(= (slew_time Star18 GroundStation1) 69.4)
	(= (slew_time GroundStation1 Star18) 69.4)
	(= (slew_time Star18 GroundStation2) 20.4)
	(= (slew_time GroundStation2 Star18) 20.4)
	(= (slew_time Star18 Phenomenon3) 17.75)
	(= (slew_time Phenomenon3 Star18) 17.75)
	(= (slew_time Star18 Star4) 34.05)
	(= (slew_time Star4 Star18) 34.05)
	(= (slew_time Star18 Phenomenon5) 0.6712)
	(= (slew_time Phenomenon5 Star18) 0.6712)
	(= (slew_time Star18 Star6) 20.07)
	(= (slew_time Star6 Star18) 20.07)
	(= (slew_time Star18 Star7) 36.28)
	(= (slew_time Star7 Star18) 36.28)
	(= (slew_time Star18 Planet8) 58.99)
	(= (slew_time Planet8 Star18) 58.99)
	(= (slew_time Star18 Planet9) 12.95)
	(= (slew_time Planet9 Star18) 12.95)
	(= (slew_time Star18 Star10) 6.232)
	(= (slew_time Star10 Star18) 6.232)
	(= (slew_time Star18 Star11) 37.99)
	(= (slew_time Star11 Star18) 37.99)
	(= (slew_time Star18 Planet12) 7.361)
	(= (slew_time Planet12 Star18) 7.361)
	(= (slew_time Star18 Phenomenon13) 17.36)
	(= (slew_time Phenomenon13 Star18) 17.36)
	(= (slew_time Star18 Star14) 23.4)
	(= (slew_time Star14 Star18) 23.4)
	(= (slew_time Star18 Phenomenon15) 27.54)
	(= (slew_time Phenomenon15 Star18) 27.54)
	(= (slew_time Star18 Star16) 9.078)
	(= (slew_time Star16 Star18) 9.078)
	(= (slew_time Star18 Star17) 73.09)
	(= (slew_time Star17 Star18) 73.09)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite4 Star10)
	(have_image Phenomenon3 spectrograph0)
	(have_image Star4 spectrograph0)
	(have_image Phenomenon5 infrared2)
	(have_image Star6 infrared2)
	(have_image Star7 spectrograph3)
	(have_image Planet8 infrared2)
	(have_image Planet9 spectrograph1)
	(have_image Star10 spectrograph0)
	(have_image Star11 spectrograph3)
	(have_image Planet12 spectrograph0)
	(have_image Phenomenon13 infrared2)
	(have_image Star14 spectrograph3)
	(have_image Phenomenon15 spectrograph1)
	(have_image Star16 spectrograph1)
	(have_image Star17 spectrograph1)
	(have_image Star18 spectrograph1)
))
(:metric minimize (fuel-used))

)
