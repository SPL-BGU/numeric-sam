(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	infrared1 - mode
	spectrograph2 - mode
	infrared0 - mode
	Star2 - direction
	Star1 - direction
	GroundStation0 - direction
	Phenomenon3 - direction
	Planet4 - direction
	Phenomenon5 - direction
	Star6 - direction
	Phenomenon7 - direction
	Phenomenon8 - direction
	Phenomenon9 - direction
	Planet10 - direction
	Star11 - direction
	Phenomenon12 - direction
	Star13 - direction
	Planet14 - direction
	Star15 - direction
	Phenomenon16 - direction
	Phenomenon17 - direction
	Planet18 - direction
	Planet19 - direction
	Star20 - direction
	Planet21 - direction
	Phenomenon22 - direction
	Phenomenon23 - direction
	Star24 - direction
	Phenomenon25 - direction
	Planet26 - direction
)
(:init
	(supports instrument0 spectrograph2)
	(calibration_target instrument0 Star2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon12)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 179)
	(supports instrument1 infrared1)
	(calibration_target instrument1 Star1)
	(supports instrument2 infrared1)
	(calibration_target instrument2 GroundStation0)
	(supports instrument3 infrared1)
	(supports instrument3 infrared0)
	(supports instrument3 spectrograph2)
	(calibration_target instrument3 Star1)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon25)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 180)
	(supports instrument4 infrared1)
	(supports instrument4 infrared0)
	(supports instrument4 spectrograph2)
	(calibration_target instrument4 Star1)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star1)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 178)
	(supports instrument5 infrared0)
	(supports instrument5 spectrograph2)
	(calibration_target instrument5 GroundStation0)
	(supports instrument6 infrared0)
	(supports instrument6 spectrograph2)
	(supports instrument6 infrared1)
	(calibration_target instrument6 Star1)
	(supports instrument7 spectrograph2)
	(supports instrument7 infrared0)
	(supports instrument7 infrared1)
	(calibration_target instrument7 GroundStation0)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet21)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 155)
	(supports instrument8 infrared1)
	(supports instrument8 infrared0)
	(calibration_target instrument8 GroundStation0)
	(supports instrument9 spectrograph2)
	(supports instrument9 infrared1)
	(calibration_target instrument9 GroundStation0)
	(supports instrument10 infrared0)
	(calibration_target instrument10 GroundStation0)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star24)
	(= (data_capacity satellite4) 1000)
	(= (fuel satellite4) 160)
	(= (data Phenomenon3 infrared1) 300)
	(= (data Planet4 infrared1) 18)
	(= (data Phenomenon5 infrared1) 49)
	(= (data Star6 infrared1) 261)
	(= (data Phenomenon7 infrared1) 77)
	(= (data Phenomenon8 infrared1) 20)
	(= (data Phenomenon9 infrared1) 24)
	(= (data Planet10 infrared1) 227)
	(= (data Star11 infrared1) 173)
	(= (data Phenomenon12 infrared1) 287)
	(= (data Star13 infrared1) 72)
	(= (data Planet14 infrared1) 25)
	(= (data Star15 infrared1) 256)
	(= (data Phenomenon16 infrared1) 223)
	(= (data Phenomenon17 infrared1) 51)
	(= (data Planet18 infrared1) 283)
	(= (data Planet19 infrared1) 299)
	(= (data Star20 infrared1) 164)
	(= (data Planet21 infrared1) 97)
	(= (data Phenomenon22 infrared1) 76)
	(= (data Phenomenon23 infrared1) 215)
	(= (data Star24 infrared1) 2)
	(= (data Phenomenon25 infrared1) 224)
	(= (data Planet26 infrared1) 70)
	(= (data Phenomenon3 spectrograph2) 201)
	(= (data Planet4 spectrograph2) 225)
	(= (data Phenomenon5 spectrograph2) 299)
	(= (data Star6 spectrograph2) 274)
	(= (data Phenomenon7 spectrograph2) 179)
	(= (data Phenomenon8 spectrograph2) 296)
	(= (data Phenomenon9 spectrograph2) 211)
	(= (data Planet10 spectrograph2) 256)
	(= (data Star11 spectrograph2) 213)
	(= (data Phenomenon12 spectrograph2) 128)
	(= (data Star13 spectrograph2) 158)
	(= (data Planet14 spectrograph2) 91)
	(= (data Star15 spectrograph2) 7)
	(= (data Phenomenon16 spectrograph2) 213)
	(= (data Phenomenon17 spectrograph2) 153)
	(= (data Planet18 spectrograph2) 165)
	(= (data Planet19 spectrograph2) 184)
	(= (data Star20 spectrograph2) 137)
	(= (data Planet21 spectrograph2) 266)
	(= (data Phenomenon22 spectrograph2) 54)
	(= (data Phenomenon23 spectrograph2) 171)
	(= (data Star24 spectrograph2) 192)
	(= (data Phenomenon25 spectrograph2) 109)
	(= (data Planet26 spectrograph2) 269)
	(= (data Phenomenon3 infrared0) 68)
	(= (data Planet4 infrared0) 132)
	(= (data Phenomenon5 infrared0) 233)
	(= (data Star6 infrared0) 99)
	(= (data Phenomenon7 infrared0) 55)
	(= (data Phenomenon8 infrared0) 287)
	(= (data Phenomenon9 infrared0) 121)
	(= (data Planet10 infrared0) 148)
	(= (data Star11 infrared0) 13)
	(= (data Phenomenon12 infrared0) 8)
	(= (data Star13 infrared0) 128)
	(= (data Planet14 infrared0) 169)
	(= (data Star15 infrared0) 61)
	(= (data Phenomenon16 infrared0) 38)
	(= (data Phenomenon17 infrared0) 128)
	(= (data Planet18 infrared0) 287)
	(= (data Planet19 infrared0) 19)
	(= (data Star20 infrared0) 51)
	(= (data Planet21 infrared0) 79)
	(= (data Phenomenon22 infrared0) 3)
	(= (data Phenomenon23 infrared0) 185)
	(= (data Star24 infrared0) 145)
	(= (data Phenomenon25 infrared0) 127)
	(= (data Planet26 infrared0) 105)
	(= (slew_time Star2 GroundStation0) 25.98)
	(= (slew_time GroundStation0 Star2) 25.98)
	(= (slew_time Star2 Star1) 0.7855)
	(= (slew_time Star1 Star2) 0.7855)
	(= (slew_time Star1 GroundStation0) 6.765)
	(= (slew_time GroundStation0 Star1) 6.765)
	(= (slew_time Phenomenon3 GroundStation0) 51.82)
	(= (slew_time GroundStation0 Phenomenon3) 51.82)
	(= (slew_time Phenomenon3 Star1) 16.51)
	(= (slew_time Star1 Phenomenon3) 16.51)
	(= (slew_time Phenomenon3 Star2) 2.645)
	(= (slew_time Star2 Phenomenon3) 2.645)
	(= (slew_time Planet4 GroundStation0) 19.29)
	(= (slew_time GroundStation0 Planet4) 19.29)
	(= (slew_time Planet4 Star1) 2.319)
	(= (slew_time Star1 Planet4) 2.319)
	(= (slew_time Planet4 Star2) 6.348)
	(= (slew_time Star2 Planet4) 6.348)
	(= (slew_time Planet4 Phenomenon3) 12.66)
	(= (slew_time Phenomenon3 Planet4) 12.66)
	(= (slew_time Phenomenon5 GroundStation0) 62.86)
	(= (slew_time GroundStation0 Phenomenon5) 62.86)
	(= (slew_time Phenomenon5 Star1) 80.45)
	(= (slew_time Star1 Phenomenon5) 80.45)
	(= (slew_time Phenomenon5 Star2) 58.46)
	(= (slew_time Star2 Phenomenon5) 58.46)
	(= (slew_time Phenomenon5 Phenomenon3) 31.26)
	(= (slew_time Phenomenon3 Phenomenon5) 31.26)
	(= (slew_time Phenomenon5 Planet4) 78.43)
	(= (slew_time Planet4 Phenomenon5) 78.43)
	(= (slew_time Star6 GroundStation0) 65.01)
	(= (slew_time GroundStation0 Star6) 65.01)
	(= (slew_time Star6 Star1) 11.58)
	(= (slew_time Star1 Star6) 11.58)
	(= (slew_time Star6 Star2) 25.11)
	(= (slew_time Star2 Star6) 25.11)
	(= (slew_time Star6 Phenomenon3) 8.738)
	(= (slew_time Phenomenon3 Star6) 8.738)
	(= (slew_time Star6 Planet4) 31.7)
	(= (slew_time Planet4 Star6) 31.7)
	(= (slew_time Star6 Phenomenon5) 41.04)
	(= (slew_time Phenomenon5 Star6) 41.04)
	(= (slew_time Phenomenon7 GroundStation0) 48.75)
	(= (slew_time GroundStation0 Phenomenon7) 48.75)
	(= (slew_time Phenomenon7 Star1) 20.68)
	(= (slew_time Star1 Phenomenon7) 20.68)
	(= (slew_time Phenomenon7 Star2) 87.38)
	(= (slew_time Star2 Phenomenon7) 87.38)
	(= (slew_time Phenomenon7 Phenomenon3) 1.052)
	(= (slew_time Phenomenon3 Phenomenon7) 1.052)
	(= (slew_time Phenomenon7 Planet4) 22.06)
	(= (slew_time Planet4 Phenomenon7) 22.06)
	(= (slew_time Phenomenon7 Phenomenon5) 18.25)
	(= (slew_time Phenomenon5 Phenomenon7) 18.25)
	(= (slew_time Phenomenon7 Star6) 25.3)
	(= (slew_time Star6 Phenomenon7) 25.3)
	(= (slew_time Phenomenon8 GroundStation0) 41.72)
	(= (slew_time GroundStation0 Phenomenon8) 41.72)
	(= (slew_time Phenomenon8 Star1) 10.44)
	(= (slew_time Star1 Phenomenon8) 10.44)
	(= (slew_time Phenomenon8 Star2) 48.79)
	(= (slew_time Star2 Phenomenon8) 48.79)
	(= (slew_time Phenomenon8 Phenomenon3) 19.76)
	(= (slew_time Phenomenon3 Phenomenon8) 19.76)
	(= (slew_time Phenomenon8 Planet4) 7.94)
	(= (slew_time Planet4 Phenomenon8) 7.94)
	(= (slew_time Phenomenon8 Phenomenon5) 54.33)
	(= (slew_time Phenomenon5 Phenomenon8) 54.33)
	(= (slew_time Phenomenon8 Star6) 77.41)
	(= (slew_time Star6 Phenomenon8) 77.41)
	(= (slew_time Phenomenon8 Phenomenon7) 69.16)
	(= (slew_time Phenomenon7 Phenomenon8) 69.16)
	(= (slew_time Phenomenon9 GroundStation0) 26.22)
	(= (slew_time GroundStation0 Phenomenon9) 26.22)
	(= (slew_time Phenomenon9 Star1) 15.52)
	(= (slew_time Star1 Phenomenon9) 15.52)
	(= (slew_time Phenomenon9 Star2) 8.765)
	(= (slew_time Star2 Phenomenon9) 8.765)
	(= (slew_time Phenomenon9 Phenomenon3) 54.64)
	(= (slew_time Phenomenon3 Phenomenon9) 54.64)
	(= (slew_time Phenomenon9 Planet4) 64.55)
	(= (slew_time Planet4 Phenomenon9) 64.55)
	(= (slew_time Phenomenon9 Phenomenon5) 18.26)
	(= (slew_time Phenomenon5 Phenomenon9) 18.26)
	(= (slew_time Phenomenon9 Star6) 30.91)
	(= (slew_time Star6 Phenomenon9) 30.91)
	(= (slew_time Phenomenon9 Phenomenon7) 9.93)
	(= (slew_time Phenomenon7 Phenomenon9) 9.93)
	(= (slew_time Phenomenon9 Phenomenon8) 93.35)
	(= (slew_time Phenomenon8 Phenomenon9) 93.35)
	(= (slew_time Planet10 GroundStation0) 3.085)
	(= (slew_time GroundStation0 Planet10) 3.085)
	(= (slew_time Planet10 Star1) 20.35)
	(= (slew_time Star1 Planet10) 20.35)
	(= (slew_time Planet10 Star2) 29.78)
	(= (slew_time Star2 Planet10) 29.78)
	(= (slew_time Planet10 Phenomenon3) 18.3)
	(= (slew_time Phenomenon3 Planet10) 18.3)
	(= (slew_time Planet10 Planet4) 64.65)
	(= (slew_time Planet4 Planet10) 64.65)
	(= (slew_time Planet10 Phenomenon5) 40.93)
	(= (slew_time Phenomenon5 Planet10) 40.93)
	(= (slew_time Planet10 Star6) 38.51)
	(= (slew_time Star6 Planet10) 38.51)
	(= (slew_time Planet10 Phenomenon7) 22.71)
	(= (slew_time Phenomenon7 Planet10) 22.71)
	(= (slew_time Planet10 Phenomenon8) 6.032)
	(= (slew_time Phenomenon8 Planet10) 6.032)
	(= (slew_time Planet10 Phenomenon9) 72.1)
	(= (slew_time Phenomenon9 Planet10) 72.1)
	(= (slew_time Star11 GroundStation0) 62.94)
	(= (slew_time GroundStation0 Star11) 62.94)
	(= (slew_time Star11 Star1) 44.11)
	(= (slew_time Star1 Star11) 44.11)
	(= (slew_time Star11 Star2) 25.86)
	(= (slew_time Star2 Star11) 25.86)
	(= (slew_time Star11 Phenomenon3) 47.03)
	(= (slew_time Phenomenon3 Star11) 47.03)
	(= (slew_time Star11 Planet4) 4.381)
	(= (slew_time Planet4 Star11) 4.381)
	(= (slew_time Star11 Phenomenon5) 63.75)
	(= (slew_time Phenomenon5 Star11) 63.75)
	(= (slew_time Star11 Star6) 8.144)
	(= (slew_time Star6 Star11) 8.144)
	(= (slew_time Star11 Phenomenon7) 4.999)
	(= (slew_time Phenomenon7 Star11) 4.999)
	(= (slew_time Star11 Phenomenon8) 4.589)
	(= (slew_time Phenomenon8 Star11) 4.589)
	(= (slew_time Star11 Phenomenon9) 10.97)
	(= (slew_time Phenomenon9 Star11) 10.97)
	(= (slew_time Star11 Planet10) 1.197)
	(= (slew_time Planet10 Star11) 1.197)
	(= (slew_time Phenomenon12 GroundStation0) 37.13)
	(= (slew_time GroundStation0 Phenomenon12) 37.13)
	(= (slew_time Phenomenon12 Star1) 45.79)
	(= (slew_time Star1 Phenomenon12) 45.79)
	(= (slew_time Phenomenon12 Star2) 63.12)
	(= (slew_time Star2 Phenomenon12) 63.12)
	(= (slew_time Phenomenon12 Phenomenon3) 14.23)
	(= (slew_time Phenomenon3 Phenomenon12) 14.23)
	(= (slew_time Phenomenon12 Planet4) 68.62)
	(= (slew_time Planet4 Phenomenon12) 68.62)
	(= (slew_time Phenomenon12 Phenomenon5) 1.662)
	(= (slew_time Phenomenon5 Phenomenon12) 1.662)
	(= (slew_time Phenomenon12 Star6) 60.04)
	(= (slew_time Star6 Phenomenon12) 60.04)
	(= (slew_time Phenomenon12 Phenomenon7) 12.33)
	(= (slew_time Phenomenon7 Phenomenon12) 12.33)
	(= (slew_time Phenomenon12 Phenomenon8) 49.26)
	(= (slew_time Phenomenon8 Phenomenon12) 49.26)
	(= (slew_time Phenomenon12 Phenomenon9) 87.64)
	(= (slew_time Phenomenon9 Phenomenon12) 87.64)
	(= (slew_time Phenomenon12 Planet10) 32.34)
	(= (slew_time Planet10 Phenomenon12) 32.34)
	(= (slew_time Phenomenon12 Star11) 59.16)
	(= (slew_time Star11 Phenomenon12) 59.16)
	(= (slew_time Star13 GroundStation0) 44.07)
	(= (slew_time GroundStation0 Star13) 44.07)
	(= (slew_time Star13 Star1) 14.63)
	(= (slew_time Star1 Star13) 14.63)
	(= (slew_time Star13 Star2) 17.4)
	(= (slew_time Star2 Star13) 17.4)
	(= (slew_time Star13 Phenomenon3) 10.26)
	(= (slew_time Phenomenon3 Star13) 10.26)
	(= (slew_time Star13 Planet4) 4.831)
	(= (slew_time Planet4 Star13) 4.831)
	(= (slew_time Star13 Phenomenon5) 16.35)
	(= (slew_time Phenomenon5 Star13) 16.35)
	(= (slew_time Star13 Star6) 33.42)
	(= (slew_time Star6 Star13) 33.42)
	(= (slew_time Star13 Phenomenon7) 11.68)
	(= (slew_time Phenomenon7 Star13) 11.68)
	(= (slew_time Star13 Phenomenon8) 22.82)
	(= (slew_time Phenomenon8 Star13) 22.82)
	(= (slew_time Star13 Phenomenon9) 4.117)
	(= (slew_time Phenomenon9 Star13) 4.117)
	(= (slew_time Star13 Planet10) 57.98)
	(= (slew_time Planet10 Star13) 57.98)
	(= (slew_time Star13 Star11) 39.95)
	(= (slew_time Star11 Star13) 39.95)
	(= (slew_time Star13 Phenomenon12) 11.14)
	(= (slew_time Phenomenon12 Star13) 11.14)
	(= (slew_time Planet14 GroundStation0) 33.04)
	(= (slew_time GroundStation0 Planet14) 33.04)
	(= (slew_time Planet14 Star1) 0.6174)
	(= (slew_time Star1 Planet14) 0.6174)
	(= (slew_time Planet14 Star2) 34.96)
	(= (slew_time Star2 Planet14) 34.96)
	(= (slew_time Planet14 Phenomenon3) 25.92)
	(= (slew_time Phenomenon3 Planet14) 25.92)
	(= (slew_time Planet14 Planet4) 69.59)
	(= (slew_time Planet4 Planet14) 69.59)
	(= (slew_time Planet14 Phenomenon5) 8.083)
	(= (slew_time Phenomenon5 Planet14) 8.083)
	(= (slew_time Planet14 Star6) 36.94)
	(= (slew_time Star6 Planet14) 36.94)
	(= (slew_time Planet14 Phenomenon7) 25.31)
	(= (slew_time Phenomenon7 Planet14) 25.31)
	(= (slew_time Planet14 Phenomenon8) 12.51)
	(= (slew_time Phenomenon8 Planet14) 12.51)
	(= (slew_time Planet14 Phenomenon9) 85.24)
	(= (slew_time Phenomenon9 Planet14) 85.24)
	(= (slew_time Planet14 Planet10) 46.04)
	(= (slew_time Planet10 Planet14) 46.04)
	(= (slew_time Planet14 Star11) 61.09)
	(= (slew_time Star11 Planet14) 61.09)
	(= (slew_time Planet14 Phenomenon12) 13.11)
	(= (slew_time Phenomenon12 Planet14) 13.11)
	(= (slew_time Planet14 Star13) 1.515)
	(= (slew_time Star13 Planet14) 1.515)
	(= (slew_time Star15 GroundStation0) 86.83)
	(= (slew_time GroundStation0 Star15) 86.83)
	(= (slew_time Star15 Star1) 8.314)
	(= (slew_time Star1 Star15) 8.314)
	(= (slew_time Star15 Star2) 33.35)
	(= (slew_time Star2 Star15) 33.35)
	(= (slew_time Star15 Phenomenon3) 63.58)
	(= (slew_time Phenomenon3 Star15) 63.58)
	(= (slew_time Star15 Planet4) 29.47)
	(= (slew_time Planet4 Star15) 29.47)
	(= (slew_time Star15 Phenomenon5) 5.542)
	(= (slew_time Phenomenon5 Star15) 5.542)
	(= (slew_time Star15 Star6) 15.52)
	(= (slew_time Star6 Star15) 15.52)
	(= (slew_time Star15 Phenomenon7) 16.98)
	(= (slew_time Phenomenon7 Star15) 16.98)
	(= (slew_time Star15 Phenomenon8) 46.6)
	(= (slew_time Phenomenon8 Star15) 46.6)
	(= (slew_time Star15 Phenomenon9) 73.44)
	(= (slew_time Phenomenon9 Star15) 73.44)
	(= (slew_time Star15 Planet10) 71.41)
	(= (slew_time Planet10 Star15) 71.41)
	(= (slew_time Star15 Star11) 29.18)
	(= (slew_time Star11 Star15) 29.18)
	(= (slew_time Star15 Phenomenon12) 85.66)
	(= (slew_time Phenomenon12 Star15) 85.66)
	(= (slew_time Star15 Star13) 92.2)
	(= (slew_time Star13 Star15) 92.2)
	(= (slew_time Star15 Planet14) 50.15)
	(= (slew_time Planet14 Star15) 50.15)
	(= (slew_time Phenomenon16 GroundStation0) 1.434)
	(= (slew_time GroundStation0 Phenomenon16) 1.434)
	(= (slew_time Phenomenon16 Star1) 39.2)
	(= (slew_time Star1 Phenomenon16) 39.2)
	(= (slew_time Phenomenon16 Star2) 19.12)
	(= (slew_time Star2 Phenomenon16) 19.12)
	(= (slew_time Phenomenon16 Phenomenon3) 44.98)
	(= (slew_time Phenomenon3 Phenomenon16) 44.98)
	(= (slew_time Phenomenon16 Planet4) 41.61)
	(= (slew_time Planet4 Phenomenon16) 41.61)
	(= (slew_time Phenomenon16 Phenomenon5) 71.97)
	(= (slew_time Phenomenon5 Phenomenon16) 71.97)
	(= (slew_time Phenomenon16 Star6) 63)
	(= (slew_time Star6 Phenomenon16) 63)
	(= (slew_time Phenomenon16 Phenomenon7) 85.68)
	(= (slew_time Phenomenon7 Phenomenon16) 85.68)
	(= (slew_time Phenomenon16 Phenomenon8) 28.82)
	(= (slew_time Phenomenon8 Phenomenon16) 28.82)
	(= (slew_time Phenomenon16 Phenomenon9) 19.01)
	(= (slew_time Phenomenon9 Phenomenon16) 19.01)
	(= (slew_time Phenomenon16 Planet10) 47.29)
	(= (slew_time Planet10 Phenomenon16) 47.29)
	(= (slew_time Phenomenon16 Star11) 19.02)
	(= (slew_time Star11 Phenomenon16) 19.02)
	(= (slew_time Phenomenon16 Phenomenon12) 4.643)
	(= (slew_time Phenomenon12 Phenomenon16) 4.643)
	(= (slew_time Phenomenon16 Star13) 12.28)
	(= (slew_time Star13 Phenomenon16) 12.28)
	(= (slew_time Phenomenon16 Planet14) 20.72)
	(= (slew_time Planet14 Phenomenon16) 20.72)
	(= (slew_time Phenomenon16 Star15) 57.67)
	(= (slew_time Star15 Phenomenon16) 57.67)
	(= (slew_time Phenomenon17 GroundStation0) 3.331)
	(= (slew_time GroundStation0 Phenomenon17) 3.331)
	(= (slew_time Phenomenon17 Star1) 6.315)
	(= (slew_time Star1 Phenomenon17) 6.315)
	(= (slew_time Phenomenon17 Star2) 44.04)
	(= (slew_time Star2 Phenomenon17) 44.04)
	(= (slew_time Phenomenon17 Phenomenon3) 53.89)
	(= (slew_time Phenomenon3 Phenomenon17) 53.89)
	(= (slew_time Phenomenon17 Planet4) 22.14)
	(= (slew_time Planet4 Phenomenon17) 22.14)
	(= (slew_time Phenomenon17 Phenomenon5) 8.311)
	(= (slew_time Phenomenon5 Phenomenon17) 8.311)
	(= (slew_time Phenomenon17 Star6) 51.51)
	(= (slew_time Star6 Phenomenon17) 51.51)
	(= (slew_time Phenomenon17 Phenomenon7) 33.96)
	(= (slew_time Phenomenon7 Phenomenon17) 33.96)
	(= (slew_time Phenomenon17 Phenomenon8) 34.02)
	(= (slew_time Phenomenon8 Phenomenon17) 34.02)
	(= (slew_time Phenomenon17 Phenomenon9) 22.44)
	(= (slew_time Phenomenon9 Phenomenon17) 22.44)
	(= (slew_time Phenomenon17 Planet10) 57.54)
	(= (slew_time Planet10 Phenomenon17) 57.54)
	(= (slew_time Phenomenon17 Star11) 71.6)
	(= (slew_time Star11 Phenomenon17) 71.6)
	(= (slew_time Phenomenon17 Phenomenon12) 32.03)
	(= (slew_time Phenomenon12 Phenomenon17) 32.03)
	(= (slew_time Phenomenon17 Star13) 16.23)
	(= (slew_time Star13 Phenomenon17) 16.23)
	(= (slew_time Phenomenon17 Planet14) 6.751)
	(= (slew_time Planet14 Phenomenon17) 6.751)
	(= (slew_time Phenomenon17 Star15) 43.11)
	(= (slew_time Star15 Phenomenon17) 43.11)
	(= (slew_time Phenomenon17 Phenomenon16) 80.14)
	(= (slew_time Phenomenon16 Phenomenon17) 80.14)
	(= (slew_time Planet18 GroundStation0) 33.72)
	(= (slew_time GroundStation0 Planet18) 33.72)
	(= (slew_time Planet18 Star1) 52.8)
	(= (slew_time Star1 Planet18) 52.8)
	(= (slew_time Planet18 Star2) 52.98)
	(= (slew_time Star2 Planet18) 52.98)
	(= (slew_time Planet18 Phenomenon3) 61.03)
	(= (slew_time Phenomenon3 Planet18) 61.03)
	(= (slew_time Planet18 Planet4) 14.61)
	(= (slew_time Planet4 Planet18) 14.61)
	(= (slew_time Planet18 Phenomenon5) 11.21)
	(= (slew_time Phenomenon5 Planet18) 11.21)
	(= (slew_time Planet18 Star6) 53.45)
	(= (slew_time Star6 Planet18) 53.45)
	(= (slew_time Planet18 Phenomenon7) 5.35)
	(= (slew_time Phenomenon7 Planet18) 5.35)
	(= (slew_time Planet18 Phenomenon8) 7.948)
	(= (slew_time Phenomenon8 Planet18) 7.948)
	(= (slew_time Planet18 Phenomenon9) 78.23)
	(= (slew_time Phenomenon9 Planet18) 78.23)
	(= (slew_time Planet18 Planet10) 13.29)
	(= (slew_time Planet10 Planet18) 13.29)
	(= (slew_time Planet18 Star11) 75.27)
	(= (slew_time Star11 Planet18) 75.27)
	(= (slew_time Planet18 Phenomenon12) 68.19)
	(= (slew_time Phenomenon12 Planet18) 68.19)
	(= (slew_time Planet18 Star13) 81.18)
	(= (slew_time Star13 Planet18) 81.18)
	(= (slew_time Planet18 Planet14) 36.78)
	(= (slew_time Planet14 Planet18) 36.78)
	(= (slew_time Planet18 Star15) 60.77)
	(= (slew_time Star15 Planet18) 60.77)
	(= (slew_time Planet18 Phenomenon16) 33.76)
	(= (slew_time Phenomenon16 Planet18) 33.76)
	(= (slew_time Planet18 Phenomenon17) 34.45)
	(= (slew_time Phenomenon17 Planet18) 34.45)
	(= (slew_time Planet19 GroundStation0) 51.92)
	(= (slew_time GroundStation0 Planet19) 51.92)
	(= (slew_time Planet19 Star1) 16.91)
	(= (slew_time Star1 Planet19) 16.91)
	(= (slew_time Planet19 Star2) 28.62)
	(= (slew_time Star2 Planet19) 28.62)
	(= (slew_time Planet19 Phenomenon3) 15.13)
	(= (slew_time Phenomenon3 Planet19) 15.13)
	(= (slew_time Planet19 Planet4) 33.44)
	(= (slew_time Planet4 Planet19) 33.44)
	(= (slew_time Planet19 Phenomenon5) 58.22)
	(= (slew_time Phenomenon5 Planet19) 58.22)
	(= (slew_time Planet19 Star6) 21.75)
	(= (slew_time Star6 Planet19) 21.75)
	(= (slew_time Planet19 Phenomenon7) 51.91)
	(= (slew_time Phenomenon7 Planet19) 51.91)
	(= (slew_time Planet19 Phenomenon8) 10.06)
	(= (slew_time Phenomenon8 Planet19) 10.06)
	(= (slew_time Planet19 Phenomenon9) 4.093)
	(= (slew_time Phenomenon9 Planet19) 4.093)
	(= (slew_time Planet19 Planet10) 34.64)
	(= (slew_time Planet10 Planet19) 34.64)
	(= (slew_time Planet19 Star11) 25.98)
	(= (slew_time Star11 Planet19) 25.98)
	(= (slew_time Planet19 Phenomenon12) 42.92)
	(= (slew_time Phenomenon12 Planet19) 42.92)
	(= (slew_time Planet19 Star13) 35.06)
	(= (slew_time Star13 Planet19) 35.06)
	(= (slew_time Planet19 Planet14) 54.09)
	(= (slew_time Planet14 Planet19) 54.09)
	(= (slew_time Planet19 Star15) 38.98)
	(= (slew_time Star15 Planet19) 38.98)
	(= (slew_time Planet19 Phenomenon16) 62.25)
	(= (slew_time Phenomenon16 Planet19) 62.25)
	(= (slew_time Planet19 Phenomenon17) 34.73)
	(= (slew_time Phenomenon17 Planet19) 34.73)
	(= (slew_time Planet19 Planet18) 2.612)
	(= (slew_time Planet18 Planet19) 2.612)
	(= (slew_time Star20 GroundStation0) 58.68)
	(= (slew_time GroundStation0 Star20) 58.68)
	(= (slew_time Star20 Star1) 39.5)
	(= (slew_time Star1 Star20) 39.5)
	(= (slew_time Star20 Star2) 14.11)
	(= (slew_time Star2 Star20) 14.11)
	(= (slew_time Star20 Phenomenon3) 23.17)
	(= (slew_time Phenomenon3 Star20) 23.17)
	(= (slew_time Star20 Planet4) 53.08)
	(= (slew_time Planet4 Star20) 53.08)
	(= (slew_time Star20 Phenomenon5) 44.97)
	(= (slew_time Phenomenon5 Star20) 44.97)
	(= (slew_time Star20 Star6) 42.82)
	(= (slew_time Star6 Star20) 42.82)
	(= (slew_time Star20 Phenomenon7) 53.57)
	(= (slew_time Phenomenon7 Star20) 53.57)
	(= (slew_time Star20 Phenomenon8) 89.27)
	(= (slew_time Phenomenon8 Star20) 89.27)
	(= (slew_time Star20 Phenomenon9) 45.12)
	(= (slew_time Phenomenon9 Star20) 45.12)
	(= (slew_time Star20 Planet10) 21.01)
	(= (slew_time Planet10 Star20) 21.01)
	(= (slew_time Star20 Star11) 30.78)
	(= (slew_time Star11 Star20) 30.78)
	(= (slew_time Star20 Phenomenon12) 39.63)
	(= (slew_time Phenomenon12 Star20) 39.63)
	(= (slew_time Star20 Star13) 31.38)
	(= (slew_time Star13 Star20) 31.38)
	(= (slew_time Star20 Planet14) 12.06)
	(= (slew_time Planet14 Star20) 12.06)
	(= (slew_time Star20 Star15) 27.6)
	(= (slew_time Star15 Star20) 27.6)
	(= (slew_time Star20 Phenomenon16) 51.63)
	(= (slew_time Phenomenon16 Star20) 51.63)
	(= (slew_time Star20 Phenomenon17) 28.55)
	(= (slew_time Phenomenon17 Star20) 28.55)
	(= (slew_time Star20 Planet18) 9.033)
	(= (slew_time Planet18 Star20) 9.033)
	(= (slew_time Star20 Planet19) 64.53)
	(= (slew_time Planet19 Star20) 64.53)
	(= (slew_time Planet21 GroundStation0) 27.02)
	(= (slew_time GroundStation0 Planet21) 27.02)
	(= (slew_time Planet21 Star1) 74.31)
	(= (slew_time Star1 Planet21) 74.31)
	(= (slew_time Planet21 Star2) 14.25)
	(= (slew_time Star2 Planet21) 14.25)
	(= (slew_time Planet21 Phenomenon3) 8.813)
	(= (slew_time Phenomenon3 Planet21) 8.813)
	(= (slew_time Planet21 Planet4) 77.95)
	(= (slew_time Planet4 Planet21) 77.95)
	(= (slew_time Planet21 Phenomenon5) 88.29)
	(= (slew_time Phenomenon5 Planet21) 88.29)
	(= (slew_time Planet21 Star6) 26.15)
	(= (slew_time Star6 Planet21) 26.15)
	(= (slew_time Planet21 Phenomenon7) 62.59)
	(= (slew_time Phenomenon7 Planet21) 62.59)
	(= (slew_time Planet21 Phenomenon8) 9.76)
	(= (slew_time Phenomenon8 Planet21) 9.76)
	(= (slew_time Planet21 Phenomenon9) 25.43)
	(= (slew_time Phenomenon9 Planet21) 25.43)
	(= (slew_time Planet21 Planet10) 59.73)
	(= (slew_time Planet10 Planet21) 59.73)
	(= (slew_time Planet21 Star11) 17.26)
	(= (slew_time Star11 Planet21) 17.26)
	(= (slew_time Planet21 Phenomenon12) 36.63)
	(= (slew_time Phenomenon12 Planet21) 36.63)
	(= (slew_time Planet21 Star13) 28.9)
	(= (slew_time Star13 Planet21) 28.9)
	(= (slew_time Planet21 Planet14) 35.49)
	(= (slew_time Planet14 Planet21) 35.49)
	(= (slew_time Planet21 Star15) 41.63)
	(= (slew_time Star15 Planet21) 41.63)
	(= (slew_time Planet21 Phenomenon16) 44.83)
	(= (slew_time Phenomenon16 Planet21) 44.83)
	(= (slew_time Planet21 Phenomenon17) 48.06)
	(= (slew_time Phenomenon17 Planet21) 48.06)
	(= (slew_time Planet21 Planet18) 71)
	(= (slew_time Planet18 Planet21) 71)
	(= (slew_time Planet21 Planet19) 12.51)
	(= (slew_time Planet19 Planet21) 12.51)
	(= (slew_time Planet21 Star20) 29.03)
	(= (slew_time Star20 Planet21) 29.03)
	(= (slew_time Phenomenon22 GroundStation0) 19.43)
	(= (slew_time GroundStation0 Phenomenon22) 19.43)
	(= (slew_time Phenomenon22 Star1) 56.95)
	(= (slew_time Star1 Phenomenon22) 56.95)
	(= (slew_time Phenomenon22 Star2) 26.31)
	(= (slew_time Star2 Phenomenon22) 26.31)
	(= (slew_time Phenomenon22 Phenomenon3) 33.21)
	(= (slew_time Phenomenon3 Phenomenon22) 33.21)
	(= (slew_time Phenomenon22 Planet4) 56.27)
	(= (slew_time Planet4 Phenomenon22) 56.27)
	(= (slew_time Phenomenon22 Phenomenon5) 82.42)
	(= (slew_time Phenomenon5 Phenomenon22) 82.42)
	(= (slew_time Phenomenon22 Star6) 30.52)
	(= (slew_time Star6 Phenomenon22) 30.52)
	(= (slew_time Phenomenon22 Phenomenon7) 31.35)
	(= (slew_time Phenomenon7 Phenomenon22) 31.35)
	(= (slew_time Phenomenon22 Phenomenon8) 61.04)
	(= (slew_time Phenomenon8 Phenomenon22) 61.04)
	(= (slew_time Phenomenon22 Phenomenon9) 34.19)
	(= (slew_time Phenomenon9 Phenomenon22) 34.19)
	(= (slew_time Phenomenon22 Planet10) 13.28)
	(= (slew_time Planet10 Phenomenon22) 13.28)
	(= (slew_time Phenomenon22 Star11) 66.8)
	(= (slew_time Star11 Phenomenon22) 66.8)
	(= (slew_time Phenomenon22 Phenomenon12) 32.93)
	(= (slew_time Phenomenon12 Phenomenon22) 32.93)
	(= (slew_time Phenomenon22 Star13) 3.596)
	(= (slew_time Star13 Phenomenon22) 3.596)
	(= (slew_time Phenomenon22 Planet14) 42.1)
	(= (slew_time Planet14 Phenomenon22) 42.1)
	(= (slew_time Phenomenon22 Star15) 10.81)
	(= (slew_time Star15 Phenomenon22) 10.81)
	(= (slew_time Phenomenon22 Phenomenon16) 31.01)
	(= (slew_time Phenomenon16 Phenomenon22) 31.01)
	(= (slew_time Phenomenon22 Phenomenon17) 26.09)
	(= (slew_time Phenomenon17 Phenomenon22) 26.09)
	(= (slew_time Phenomenon22 Planet18) 40.39)
	(= (slew_time Planet18 Phenomenon22) 40.39)
	(= (slew_time Phenomenon22 Planet19) 48.37)
	(= (slew_time Planet19 Phenomenon22) 48.37)
	(= (slew_time Phenomenon22 Star20) 20.73)
	(= (slew_time Star20 Phenomenon22) 20.73)
	(= (slew_time Phenomenon22 Planet21) 7.932)
	(= (slew_time Planet21 Phenomenon22) 7.932)
	(= (slew_time Phenomenon23 GroundStation0) 37.47)
	(= (slew_time GroundStation0 Phenomenon23) 37.47)
	(= (slew_time Phenomenon23 Star1) 73.47)
	(= (slew_time Star1 Phenomenon23) 73.47)
	(= (slew_time Phenomenon23 Star2) 42.63)
	(= (slew_time Star2 Phenomenon23) 42.63)
	(= (slew_time Phenomenon23 Phenomenon3) 78.56)
	(= (slew_time Phenomenon3 Phenomenon23) 78.56)
	(= (slew_time Phenomenon23 Planet4) 51.66)
	(= (slew_time Planet4 Phenomenon23) 51.66)
	(= (slew_time Phenomenon23 Phenomenon5) 18.22)
	(= (slew_time Phenomenon5 Phenomenon23) 18.22)
	(= (slew_time Phenomenon23 Star6) 92.52)
	(= (slew_time Star6 Phenomenon23) 92.52)
	(= (slew_time Phenomenon23 Phenomenon7) 0.4156)
	(= (slew_time Phenomenon7 Phenomenon23) 0.4156)
	(= (slew_time Phenomenon23 Phenomenon8) 10.07)
	(= (slew_time Phenomenon8 Phenomenon23) 10.07)
	(= (slew_time Phenomenon23 Phenomenon9) 48.84)
	(= (slew_time Phenomenon9 Phenomenon23) 48.84)
	(= (slew_time Phenomenon23 Planet10) 14.02)
	(= (slew_time Planet10 Phenomenon23) 14.02)
	(= (slew_time Phenomenon23 Star11) 18.03)
	(= (slew_time Star11 Phenomenon23) 18.03)
	(= (slew_time Phenomenon23 Phenomenon12) 7.834)
	(= (slew_time Phenomenon12 Phenomenon23) 7.834)
	(= (slew_time Phenomenon23 Star13) 31.25)
	(= (slew_time Star13 Phenomenon23) 31.25)
	(= (slew_time Phenomenon23 Planet14) 34.37)
	(= (slew_time Planet14 Phenomenon23) 34.37)
	(= (slew_time Phenomenon23 Star15) 31.47)
	(= (slew_time Star15 Phenomenon23) 31.47)
	(= (slew_time Phenomenon23 Phenomenon16) 33.78)
	(= (slew_time Phenomenon16 Phenomenon23) 33.78)
	(= (slew_time Phenomenon23 Phenomenon17) 78.07)
	(= (slew_time Phenomenon17 Phenomenon23) 78.07)
	(= (slew_time Phenomenon23 Planet18) 48.43)
	(= (slew_time Planet18 Phenomenon23) 48.43)
	(= (slew_time Phenomenon23 Planet19) 5.439)
	(= (slew_time Planet19 Phenomenon23) 5.439)
	(= (slew_time Phenomenon23 Star20) 4.876)
	(= (slew_time Star20 Phenomenon23) 4.876)
	(= (slew_time Phenomenon23 Planet21) 77.55)
	(= (slew_time Planet21 Phenomenon23) 77.55)
	(= (slew_time Phenomenon23 Phenomenon22) 25.88)
	(= (slew_time Phenomenon22 Phenomenon23) 25.88)
	(= (slew_time Star24 GroundStation0) 28.18)
	(= (slew_time GroundStation0 Star24) 28.18)
	(= (slew_time Star24 Star1) 34.18)
	(= (slew_time Star1 Star24) 34.18)
	(= (slew_time Star24 Star2) 79.23)
	(= (slew_time Star2 Star24) 79.23)
	(= (slew_time Star24 Phenomenon3) 64.74)
	(= (slew_time Phenomenon3 Star24) 64.74)
	(= (slew_time Star24 Planet4) 37.38)
	(= (slew_time Planet4 Star24) 37.38)
	(= (slew_time Star24 Phenomenon5) 21.37)
	(= (slew_time Phenomenon5 Star24) 21.37)
	(= (slew_time Star24 Star6) 16.43)
	(= (slew_time Star6 Star24) 16.43)
	(= (slew_time Star24 Phenomenon7) 56.2)
	(= (slew_time Phenomenon7 Star24) 56.2)
	(= (slew_time Star24 Phenomenon8) 39.52)
	(= (slew_time Phenomenon8 Star24) 39.52)
	(= (slew_time Star24 Phenomenon9) 31.82)
	(= (slew_time Phenomenon9 Star24) 31.82)
	(= (slew_time Star24 Planet10) 36.98)
	(= (slew_time Planet10 Star24) 36.98)
	(= (slew_time Star24 Star11) 41.75)
	(= (slew_time Star11 Star24) 41.75)
	(= (slew_time Star24 Phenomenon12) 76.18)
	(= (slew_time Phenomenon12 Star24) 76.18)
	(= (slew_time Star24 Star13) 13.8)
	(= (slew_time Star13 Star24) 13.8)
	(= (slew_time Star24 Planet14) 47.4)
	(= (slew_time Planet14 Star24) 47.4)
	(= (slew_time Star24 Star15) 6.384)
	(= (slew_time Star15 Star24) 6.384)
	(= (slew_time Star24 Phenomenon16) 39)
	(= (slew_time Phenomenon16 Star24) 39)
	(= (slew_time Star24 Phenomenon17) 49.59)
	(= (slew_time Phenomenon17 Star24) 49.59)
	(= (slew_time Star24 Planet18) 66.3)
	(= (slew_time Planet18 Star24) 66.3)
	(= (slew_time Star24 Planet19) 73.37)
	(= (slew_time Planet19 Star24) 73.37)
	(= (slew_time Star24 Star20) 24.04)
	(= (slew_time Star20 Star24) 24.04)
	(= (slew_time Star24 Planet21) 66.45)
	(= (slew_time Planet21 Star24) 66.45)
	(= (slew_time Star24 Phenomenon22) 39.71)
	(= (slew_time Phenomenon22 Star24) 39.71)
	(= (slew_time Star24 Phenomenon23) 86.47)
	(= (slew_time Phenomenon23 Star24) 86.47)
	(= (slew_time Phenomenon25 GroundStation0) 28.67)
	(= (slew_time GroundStation0 Phenomenon25) 28.67)
	(= (slew_time Phenomenon25 Star1) 12.7)
	(= (slew_time Star1 Phenomenon25) 12.7)
	(= (slew_time Phenomenon25 Star2) 41.79)
	(= (slew_time Star2 Phenomenon25) 41.79)
	(= (slew_time Phenomenon25 Phenomenon3) 32.22)
	(= (slew_time Phenomenon3 Phenomenon25) 32.22)
	(= (slew_time Phenomenon25 Planet4) 19.78)
	(= (slew_time Planet4 Phenomenon25) 19.78)
	(= (slew_time Phenomenon25 Phenomenon5) 10.59)
	(= (slew_time Phenomenon5 Phenomenon25) 10.59)
	(= (slew_time Phenomenon25 Star6) 6.289)
	(= (slew_time Star6 Phenomenon25) 6.289)
	(= (slew_time Phenomenon25 Phenomenon7) 28.18)
	(= (slew_time Phenomenon7 Phenomenon25) 28.18)
	(= (slew_time Phenomenon25 Phenomenon8) 0.8773)
	(= (slew_time Phenomenon8 Phenomenon25) 0.8773)
	(= (slew_time Phenomenon25 Phenomenon9) 31.24)
	(= (slew_time Phenomenon9 Phenomenon25) 31.24)
	(= (slew_time Phenomenon25 Planet10) 6.263)
	(= (slew_time Planet10 Phenomenon25) 6.263)
	(= (slew_time Phenomenon25 Star11) 46.88)
	(= (slew_time Star11 Phenomenon25) 46.88)
	(= (slew_time Phenomenon25 Phenomenon12) 7.691)
	(= (slew_time Phenomenon12 Phenomenon25) 7.691)
	(= (slew_time Phenomenon25 Star13) 19.41)
	(= (slew_time Star13 Phenomenon25) 19.41)
	(= (slew_time Phenomenon25 Planet14) 12.68)
	(= (slew_time Planet14 Phenomenon25) 12.68)
	(= (slew_time Phenomenon25 Star15) 5.062)
	(= (slew_time Star15 Phenomenon25) 5.062)
	(= (slew_time Phenomenon25 Phenomenon16) 11.82)
	(= (slew_time Phenomenon16 Phenomenon25) 11.82)
	(= (slew_time Phenomenon25 Phenomenon17) 22.61)
	(= (slew_time Phenomenon17 Phenomenon25) 22.61)
	(= (slew_time Phenomenon25 Planet18) 41.02)
	(= (slew_time Planet18 Phenomenon25) 41.02)
	(= (slew_time Phenomenon25 Planet19) 14.62)
	(= (slew_time Planet19 Phenomenon25) 14.62)
	(= (slew_time Phenomenon25 Star20) 14.83)
	(= (slew_time Star20 Phenomenon25) 14.83)
	(= (slew_time Phenomenon25 Planet21) 37.64)
	(= (slew_time Planet21 Phenomenon25) 37.64)
	(= (slew_time Phenomenon25 Phenomenon22) 49.87)
	(= (slew_time Phenomenon22 Phenomenon25) 49.87)
	(= (slew_time Phenomenon25 Phenomenon23) 26.67)
	(= (slew_time Phenomenon23 Phenomenon25) 26.67)
	(= (slew_time Phenomenon25 Star24) 23.99)
	(= (slew_time Star24 Phenomenon25) 23.99)
	(= (slew_time Planet26 GroundStation0) 51.64)
	(= (slew_time GroundStation0 Planet26) 51.64)
	(= (slew_time Planet26 Star1) 63.84)
	(= (slew_time Star1 Planet26) 63.84)
	(= (slew_time Planet26 Star2) 50.42)
	(= (slew_time Star2 Planet26) 50.42)
	(= (slew_time Planet26 Phenomenon3) 22.39)
	(= (slew_time Phenomenon3 Planet26) 22.39)
	(= (slew_time Planet26 Planet4) 57.22)
	(= (slew_time Planet4 Planet26) 57.22)
	(= (slew_time Planet26 Phenomenon5) 26.32)
	(= (slew_time Phenomenon5 Planet26) 26.32)
	(= (slew_time Planet26 Star6) 54.15)
	(= (slew_time Star6 Planet26) 54.15)
	(= (slew_time Planet26 Phenomenon7) 12.43)
	(= (slew_time Phenomenon7 Planet26) 12.43)
	(= (slew_time Planet26 Phenomenon8) 3.156)
	(= (slew_time Phenomenon8 Planet26) 3.156)
	(= (slew_time Planet26 Phenomenon9) 21.21)
	(= (slew_time Phenomenon9 Planet26) 21.21)
	(= (slew_time Planet26 Planet10) 5.692)
	(= (slew_time Planet10 Planet26) 5.692)
	(= (slew_time Planet26 Star11) 11.38)
	(= (slew_time Star11 Planet26) 11.38)
	(= (slew_time Planet26 Phenomenon12) 83.64)
	(= (slew_time Phenomenon12 Planet26) 83.64)
	(= (slew_time Planet26 Star13) 55.07)
	(= (slew_time Star13 Planet26) 55.07)
	(= (slew_time Planet26 Planet14) 38.66)
	(= (slew_time Planet14 Planet26) 38.66)
	(= (slew_time Planet26 Star15) 34.58)
	(= (slew_time Star15 Planet26) 34.58)
	(= (slew_time Planet26 Phenomenon16) 27.8)
	(= (slew_time Phenomenon16 Planet26) 27.8)
	(= (slew_time Planet26 Phenomenon17) 52.8)
	(= (slew_time Phenomenon17 Planet26) 52.8)
	(= (slew_time Planet26 Planet18) 21.76)
	(= (slew_time Planet18 Planet26) 21.76)
	(= (slew_time Planet26 Planet19) 44.73)
	(= (slew_time Planet19 Planet26) 44.73)
	(= (slew_time Planet26 Star20) 38.35)
	(= (slew_time Star20 Planet26) 38.35)
	(= (slew_time Planet26 Planet21) 37.86)
	(= (slew_time Planet21 Planet26) 37.86)
	(= (slew_time Planet26 Phenomenon22) 36.57)
	(= (slew_time Phenomenon22 Planet26) 36.57)
	(= (slew_time Planet26 Phenomenon23) 21.43)
	(= (slew_time Phenomenon23 Planet26) 21.43)
	(= (slew_time Planet26 Star24) 4.45)
	(= (slew_time Star24 Planet26) 4.45)
	(= (slew_time Planet26 Phenomenon25) 47.66)
	(= (slew_time Phenomenon25 Planet26) 47.66)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Phenomenon17)
	(have_image Phenomenon3 infrared1)
	(have_image Planet4 infrared1)
	(have_image Phenomenon5 spectrograph2)
	(have_image Star6 spectrograph2)
	(have_image Phenomenon7 infrared0)
	(have_image Phenomenon8 infrared0)
	(have_image Phenomenon9 infrared1)
	(have_image Planet10 infrared1)
	(have_image Planet14 infrared1)
	(have_image Star15 infrared0)
	(have_image Phenomenon16 spectrograph2)
	(have_image Phenomenon17 infrared0)
	(have_image Planet18 spectrograph2)
	(have_image Planet19 infrared1)
	(have_image Star20 infrared0)
	(have_image Planet21 infrared0)
	(have_image Phenomenon22 infrared1)
	(have_image Phenomenon23 spectrograph2)
	(have_image Star24 infrared1)
	(have_image Phenomenon25 infrared0)
	(have_image Planet26 infrared0)
))
(:metric minimize (fuel-used))

)
