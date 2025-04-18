(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	infrared4 - mode
	infrared1 - mode
	thermograph2 - mode
	image3 - mode
	infrared0 - mode
	Star2 - direction
	GroundStation3 - direction
	Star0 - direction
	Star1 - direction
	Phenomenon4 - direction
	Phenomenon5 - direction
	Phenomenon6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Phenomenon9 - direction
	Phenomenon10 - direction
	Phenomenon11 - direction
	Phenomenon12 - direction
	Phenomenon13 - direction
	Planet14 - direction
	Star15 - direction
	Phenomenon16 - direction
	Star17 - direction
	Phenomenon18 - direction
)
(:init
	(supports instrument0 infrared1)
	(supports instrument0 thermograph2)
	(calibration_target instrument0 Star2)
	(supports instrument1 image3)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 Star0)
	(supports instrument2 thermograph2)
	(supports instrument2 infrared1)
	(calibration_target instrument2 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon5)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 164)
	(supports instrument3 infrared1)
	(supports instrument3 infrared4)
	(calibration_target instrument3 GroundStation3)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star2)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 198)
	(supports instrument4 thermograph2)
	(supports instrument4 image3)
	(calibration_target instrument4 GroundStation3)
	(supports instrument5 infrared1)
	(calibration_target instrument5 GroundStation3)
	(supports instrument6 image3)
	(supports instrument6 thermograph2)
	(supports instrument6 infrared0)
	(calibration_target instrument6 Star0)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon7)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 102)
	(supports instrument7 infrared4)
	(supports instrument7 thermograph2)
	(calibration_target instrument7 Star1)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon6)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 135)
	(supports instrument8 thermograph2)
	(supports instrument8 infrared0)
	(supports instrument8 infrared1)
	(calibration_target instrument8 Star1)
	(supports instrument9 infrared0)
	(supports instrument9 image3)
	(calibration_target instrument9 Star1)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star0)
	(= (data_capacity satellite4) 1000)
	(= (fuel satellite4) 192)
	(= (data Phenomenon4 infrared4) 107)
	(= (data Phenomenon5 infrared4) 16)
	(= (data Phenomenon6 infrared4) 226)
	(= (data Phenomenon7 infrared4) 242)
	(= (data Star8 infrared4) 142)
	(= (data Phenomenon9 infrared4) 4)
	(= (data Phenomenon10 infrared4) 255)
	(= (data Phenomenon11 infrared4) 17)
	(= (data Phenomenon12 infrared4) 113)
	(= (data Phenomenon13 infrared4) 193)
	(= (data Planet14 infrared4) 102)
	(= (data Star15 infrared4) 270)
	(= (data Phenomenon16 infrared4) 23)
	(= (data Star17 infrared4) 299)
	(= (data Phenomenon18 infrared4) 168)
	(= (data Phenomenon4 infrared1) 31)
	(= (data Phenomenon5 infrared1) 247)
	(= (data Phenomenon6 infrared1) 253)
	(= (data Phenomenon7 infrared1) 77)
	(= (data Star8 infrared1) 122)
	(= (data Phenomenon9 infrared1) 210)
	(= (data Phenomenon10 infrared1) 41)
	(= (data Phenomenon11 infrared1) 63)
	(= (data Phenomenon12 infrared1) 201)
	(= (data Phenomenon13 infrared1) 96)
	(= (data Planet14 infrared1) 6)
	(= (data Star15 infrared1) 132)
	(= (data Phenomenon16 infrared1) 30)
	(= (data Star17 infrared1) 207)
	(= (data Phenomenon18 infrared1) 219)
	(= (data Phenomenon4 thermograph2) 257)
	(= (data Phenomenon5 thermograph2) 18)
	(= (data Phenomenon6 thermograph2) 30)
	(= (data Phenomenon7 thermograph2) 170)
	(= (data Star8 thermograph2) 38)
	(= (data Phenomenon9 thermograph2) 214)
	(= (data Phenomenon10 thermograph2) 288)
	(= (data Phenomenon11 thermograph2) 30)
	(= (data Phenomenon12 thermograph2) 219)
	(= (data Phenomenon13 thermograph2) 211)
	(= (data Planet14 thermograph2) 205)
	(= (data Star15 thermograph2) 13)
	(= (data Phenomenon16 thermograph2) 43)
	(= (data Star17 thermograph2) 34)
	(= (data Phenomenon18 thermograph2) 75)
	(= (data Phenomenon4 image3) 37)
	(= (data Phenomenon5 image3) 143)
	(= (data Phenomenon6 image3) 226)
	(= (data Phenomenon7 image3) 69)
	(= (data Star8 image3) 80)
	(= (data Phenomenon9 image3) 52)
	(= (data Phenomenon10 image3) 109)
	(= (data Phenomenon11 image3) 100)
	(= (data Phenomenon12 image3) 228)
	(= (data Phenomenon13 image3) 41)
	(= (data Planet14 image3) 141)
	(= (data Star15 image3) 199)
	(= (data Phenomenon16 image3) 263)
	(= (data Star17 image3) 243)
	(= (data Phenomenon18 image3) 236)
	(= (data Phenomenon4 infrared0) 191)
	(= (data Phenomenon5 infrared0) 219)
	(= (data Phenomenon6 infrared0) 34)
	(= (data Phenomenon7 infrared0) 124)
	(= (data Star8 infrared0) 94)
	(= (data Phenomenon9 infrared0) 121)
	(= (data Phenomenon10 infrared0) 199)
	(= (data Phenomenon11 infrared0) 292)
	(= (data Phenomenon12 infrared0) 160)
	(= (data Phenomenon13 infrared0) 123)
	(= (data Planet14 infrared0) 172)
	(= (data Star15 infrared0) 124)
	(= (data Phenomenon16 infrared0) 123)
	(= (data Star17 infrared0) 163)
	(= (data Phenomenon18 infrared0) 251)
	(= (slew_time Star2 Star0) 55.74)
	(= (slew_time Star0 Star2) 55.74)
	(= (slew_time Star2 Star1) 13.66)
	(= (slew_time Star1 Star2) 13.66)
	(= (slew_time GroundStation3 Star0) 59.1)
	(= (slew_time Star0 GroundStation3) 59.1)
	(= (slew_time GroundStation3 Star1) 30.91)
	(= (slew_time Star1 GroundStation3) 30.91)
	(= (slew_time GroundStation3 Star2) 43.08)
	(= (slew_time Star2 GroundStation3) 43.08)
	(= (slew_time Star1 Star0) 25.59)
	(= (slew_time Star0 Star1) 25.59)
	(= (slew_time Phenomenon4 Star0) 4.817)
	(= (slew_time Star0 Phenomenon4) 4.817)
	(= (slew_time Phenomenon4 Star1) 18.55)
	(= (slew_time Star1 Phenomenon4) 18.55)
	(= (slew_time Phenomenon4 Star2) 16.75)
	(= (slew_time Star2 Phenomenon4) 16.75)
	(= (slew_time Phenomenon4 GroundStation3) 0.7719)
	(= (slew_time GroundStation3 Phenomenon4) 0.7719)
	(= (slew_time Phenomenon5 Star0) 11.99)
	(= (slew_time Star0 Phenomenon5) 11.99)
	(= (slew_time Phenomenon5 Star1) 45.2)
	(= (slew_time Star1 Phenomenon5) 45.2)
	(= (slew_time Phenomenon5 Star2) 14.08)
	(= (slew_time Star2 Phenomenon5) 14.08)
	(= (slew_time Phenomenon5 GroundStation3) 24.55)
	(= (slew_time GroundStation3 Phenomenon5) 24.55)
	(= (slew_time Phenomenon5 Phenomenon4) 38.66)
	(= (slew_time Phenomenon4 Phenomenon5) 38.66)
	(= (slew_time Phenomenon6 Star0) 7.26)
	(= (slew_time Star0 Phenomenon6) 7.26)
	(= (slew_time Phenomenon6 Star1) 9.262)
	(= (slew_time Star1 Phenomenon6) 9.262)
	(= (slew_time Phenomenon6 Star2) 55.33)
	(= (slew_time Star2 Phenomenon6) 55.33)
	(= (slew_time Phenomenon6 GroundStation3) 21.41)
	(= (slew_time GroundStation3 Phenomenon6) 21.41)
	(= (slew_time Phenomenon6 Phenomenon4) 27.35)
	(= (slew_time Phenomenon4 Phenomenon6) 27.35)
	(= (slew_time Phenomenon6 Phenomenon5) 14.88)
	(= (slew_time Phenomenon5 Phenomenon6) 14.88)
	(= (slew_time Phenomenon7 Star0) 28.14)
	(= (slew_time Star0 Phenomenon7) 28.14)
	(= (slew_time Phenomenon7 Star1) 8.734)
	(= (slew_time Star1 Phenomenon7) 8.734)
	(= (slew_time Phenomenon7 Star2) 7.726)
	(= (slew_time Star2 Phenomenon7) 7.726)
	(= (slew_time Phenomenon7 GroundStation3) 2.249)
	(= (slew_time GroundStation3 Phenomenon7) 2.249)
	(= (slew_time Phenomenon7 Phenomenon4) 58.24)
	(= (slew_time Phenomenon4 Phenomenon7) 58.24)
	(= (slew_time Phenomenon7 Phenomenon5) 41.98)
	(= (slew_time Phenomenon5 Phenomenon7) 41.98)
	(= (slew_time Phenomenon7 Phenomenon6) 14.2)
	(= (slew_time Phenomenon6 Phenomenon7) 14.2)
	(= (slew_time Star8 Star0) 46.57)
	(= (slew_time Star0 Star8) 46.57)
	(= (slew_time Star8 Star1) 81.18)
	(= (slew_time Star1 Star8) 81.18)
	(= (slew_time Star8 Star2) 2.041)
	(= (slew_time Star2 Star8) 2.041)
	(= (slew_time Star8 GroundStation3) 26.34)
	(= (slew_time GroundStation3 Star8) 26.34)
	(= (slew_time Star8 Phenomenon4) 18.55)
	(= (slew_time Phenomenon4 Star8) 18.55)
	(= (slew_time Star8 Phenomenon5) 80.15)
	(= (slew_time Phenomenon5 Star8) 80.15)
	(= (slew_time Star8 Phenomenon6) 18.82)
	(= (slew_time Phenomenon6 Star8) 18.82)
	(= (slew_time Star8 Phenomenon7) 9.889)
	(= (slew_time Phenomenon7 Star8) 9.889)
	(= (slew_time Phenomenon9 Star0) 65.39)
	(= (slew_time Star0 Phenomenon9) 65.39)
	(= (slew_time Phenomenon9 Star1) 13.67)
	(= (slew_time Star1 Phenomenon9) 13.67)
	(= (slew_time Phenomenon9 Star2) 37.36)
	(= (slew_time Star2 Phenomenon9) 37.36)
	(= (slew_time Phenomenon9 GroundStation3) 14.89)
	(= (slew_time GroundStation3 Phenomenon9) 14.89)
	(= (slew_time Phenomenon9 Phenomenon4) 41.37)
	(= (slew_time Phenomenon4 Phenomenon9) 41.37)
	(= (slew_time Phenomenon9 Phenomenon5) 41.21)
	(= (slew_time Phenomenon5 Phenomenon9) 41.21)
	(= (slew_time Phenomenon9 Phenomenon6) 62.08)
	(= (slew_time Phenomenon6 Phenomenon9) 62.08)
	(= (slew_time Phenomenon9 Phenomenon7) 23.87)
	(= (slew_time Phenomenon7 Phenomenon9) 23.87)
	(= (slew_time Phenomenon9 Star8) 10.25)
	(= (slew_time Star8 Phenomenon9) 10.25)
	(= (slew_time Phenomenon10 Star0) 17.83)
	(= (slew_time Star0 Phenomenon10) 17.83)
	(= (slew_time Phenomenon10 Star1) 31.41)
	(= (slew_time Star1 Phenomenon10) 31.41)
	(= (slew_time Phenomenon10 Star2) 63.26)
	(= (slew_time Star2 Phenomenon10) 63.26)
	(= (slew_time Phenomenon10 GroundStation3) 59.29)
	(= (slew_time GroundStation3 Phenomenon10) 59.29)
	(= (slew_time Phenomenon10 Phenomenon4) 1.046)
	(= (slew_time Phenomenon4 Phenomenon10) 1.046)
	(= (slew_time Phenomenon10 Phenomenon5) 19.94)
	(= (slew_time Phenomenon5 Phenomenon10) 19.94)
	(= (slew_time Phenomenon10 Phenomenon6) 4.622)
	(= (slew_time Phenomenon6 Phenomenon10) 4.622)
	(= (slew_time Phenomenon10 Phenomenon7) 20.66)
	(= (slew_time Phenomenon7 Phenomenon10) 20.66)
	(= (slew_time Phenomenon10 Star8) 29.57)
	(= (slew_time Star8 Phenomenon10) 29.57)
	(= (slew_time Phenomenon10 Phenomenon9) 24.57)
	(= (slew_time Phenomenon9 Phenomenon10) 24.57)
	(= (slew_time Phenomenon11 Star0) 24.29)
	(= (slew_time Star0 Phenomenon11) 24.29)
	(= (slew_time Phenomenon11 Star1) 53.88)
	(= (slew_time Star1 Phenomenon11) 53.88)
	(= (slew_time Phenomenon11 Star2) 9.404)
	(= (slew_time Star2 Phenomenon11) 9.404)
	(= (slew_time Phenomenon11 GroundStation3) 14.58)
	(= (slew_time GroundStation3 Phenomenon11) 14.58)
	(= (slew_time Phenomenon11 Phenomenon4) 21.62)
	(= (slew_time Phenomenon4 Phenomenon11) 21.62)
	(= (slew_time Phenomenon11 Phenomenon5) 25.86)
	(= (slew_time Phenomenon5 Phenomenon11) 25.86)
	(= (slew_time Phenomenon11 Phenomenon6) 39.58)
	(= (slew_time Phenomenon6 Phenomenon11) 39.58)
	(= (slew_time Phenomenon11 Phenomenon7) 10.51)
	(= (slew_time Phenomenon7 Phenomenon11) 10.51)
	(= (slew_time Phenomenon11 Star8) 56.68)
	(= (slew_time Star8 Phenomenon11) 56.68)
	(= (slew_time Phenomenon11 Phenomenon9) 18.37)
	(= (slew_time Phenomenon9 Phenomenon11) 18.37)
	(= (slew_time Phenomenon11 Phenomenon10) 35.77)
	(= (slew_time Phenomenon10 Phenomenon11) 35.77)
	(= (slew_time Phenomenon12 Star0) 47.72)
	(= (slew_time Star0 Phenomenon12) 47.72)
	(= (slew_time Phenomenon12 Star1) 63.43)
	(= (slew_time Star1 Phenomenon12) 63.43)
	(= (slew_time Phenomenon12 Star2) 22.03)
	(= (slew_time Star2 Phenomenon12) 22.03)
	(= (slew_time Phenomenon12 GroundStation3) 55.31)
	(= (slew_time GroundStation3 Phenomenon12) 55.31)
	(= (slew_time Phenomenon12 Phenomenon4) 39.1)
	(= (slew_time Phenomenon4 Phenomenon12) 39.1)
	(= (slew_time Phenomenon12 Phenomenon5) 25.2)
	(= (slew_time Phenomenon5 Phenomenon12) 25.2)
	(= (slew_time Phenomenon12 Phenomenon6) 3.912)
	(= (slew_time Phenomenon6 Phenomenon12) 3.912)
	(= (slew_time Phenomenon12 Phenomenon7) 13.46)
	(= (slew_time Phenomenon7 Phenomenon12) 13.46)
	(= (slew_time Phenomenon12 Star8) 17.89)
	(= (slew_time Star8 Phenomenon12) 17.89)
	(= (slew_time Phenomenon12 Phenomenon9) 29.78)
	(= (slew_time Phenomenon9 Phenomenon12) 29.78)
	(= (slew_time Phenomenon12 Phenomenon10) 33.52)
	(= (slew_time Phenomenon10 Phenomenon12) 33.52)
	(= (slew_time Phenomenon12 Phenomenon11) 7.318)
	(= (slew_time Phenomenon11 Phenomenon12) 7.318)
	(= (slew_time Phenomenon13 Star0) 33.57)
	(= (slew_time Star0 Phenomenon13) 33.57)
	(= (slew_time Phenomenon13 Star1) 40.51)
	(= (slew_time Star1 Phenomenon13) 40.51)
	(= (slew_time Phenomenon13 Star2) 13.29)
	(= (slew_time Star2 Phenomenon13) 13.29)
	(= (slew_time Phenomenon13 GroundStation3) 9.857)
	(= (slew_time GroundStation3 Phenomenon13) 9.857)
	(= (slew_time Phenomenon13 Phenomenon4) 83.23)
	(= (slew_time Phenomenon4 Phenomenon13) 83.23)
	(= (slew_time Phenomenon13 Phenomenon5) 18.46)
	(= (slew_time Phenomenon5 Phenomenon13) 18.46)
	(= (slew_time Phenomenon13 Phenomenon6) 72.43)
	(= (slew_time Phenomenon6 Phenomenon13) 72.43)
	(= (slew_time Phenomenon13 Phenomenon7) 4.127)
	(= (slew_time Phenomenon7 Phenomenon13) 4.127)
	(= (slew_time Phenomenon13 Star8) 3.603)
	(= (slew_time Star8 Phenomenon13) 3.603)
	(= (slew_time Phenomenon13 Phenomenon9) 3.689)
	(= (slew_time Phenomenon9 Phenomenon13) 3.689)
	(= (slew_time Phenomenon13 Phenomenon10) 53.68)
	(= (slew_time Phenomenon10 Phenomenon13) 53.68)
	(= (slew_time Phenomenon13 Phenomenon11) 16.92)
	(= (slew_time Phenomenon11 Phenomenon13) 16.92)
	(= (slew_time Phenomenon13 Phenomenon12) 47.57)
	(= (slew_time Phenomenon12 Phenomenon13) 47.57)
	(= (slew_time Planet14 Star0) 30.08)
	(= (slew_time Star0 Planet14) 30.08)
	(= (slew_time Planet14 Star1) 3.005)
	(= (slew_time Star1 Planet14) 3.005)
	(= (slew_time Planet14 Star2) 57.77)
	(= (slew_time Star2 Planet14) 57.77)
	(= (slew_time Planet14 GroundStation3) 70.92)
	(= (slew_time GroundStation3 Planet14) 70.92)
	(= (slew_time Planet14 Phenomenon4) 44.69)
	(= (slew_time Phenomenon4 Planet14) 44.69)
	(= (slew_time Planet14 Phenomenon5) 31.63)
	(= (slew_time Phenomenon5 Planet14) 31.63)
	(= (slew_time Planet14 Phenomenon6) 33.93)
	(= (slew_time Phenomenon6 Planet14) 33.93)
	(= (slew_time Planet14 Phenomenon7) 70.82)
	(= (slew_time Phenomenon7 Planet14) 70.82)
	(= (slew_time Planet14 Star8) 53.68)
	(= (slew_time Star8 Planet14) 53.68)
	(= (slew_time Planet14 Phenomenon9) 3.414)
	(= (slew_time Phenomenon9 Planet14) 3.414)
	(= (slew_time Planet14 Phenomenon10) 9.481)
	(= (slew_time Phenomenon10 Planet14) 9.481)
	(= (slew_time Planet14 Phenomenon11) 59.18)
	(= (slew_time Phenomenon11 Planet14) 59.18)
	(= (slew_time Planet14 Phenomenon12) 56.07)
	(= (slew_time Phenomenon12 Planet14) 56.07)
	(= (slew_time Planet14 Phenomenon13) 35.2)
	(= (slew_time Phenomenon13 Planet14) 35.2)
	(= (slew_time Star15 Star0) 50.36)
	(= (slew_time Star0 Star15) 50.36)
	(= (slew_time Star15 Star1) 4.447)
	(= (slew_time Star1 Star15) 4.447)
	(= (slew_time Star15 Star2) 19.61)
	(= (slew_time Star2 Star15) 19.61)
	(= (slew_time Star15 GroundStation3) 21.11)
	(= (slew_time GroundStation3 Star15) 21.11)
	(= (slew_time Star15 Phenomenon4) 40.89)
	(= (slew_time Phenomenon4 Star15) 40.89)
	(= (slew_time Star15 Phenomenon5) 19.34)
	(= (slew_time Phenomenon5 Star15) 19.34)
	(= (slew_time Star15 Phenomenon6) 55.13)
	(= (slew_time Phenomenon6 Star15) 55.13)
	(= (slew_time Star15 Phenomenon7) 7.421)
	(= (slew_time Phenomenon7 Star15) 7.421)
	(= (slew_time Star15 Star8) 11.84)
	(= (slew_time Star8 Star15) 11.84)
	(= (slew_time Star15 Phenomenon9) 60.97)
	(= (slew_time Phenomenon9 Star15) 60.97)
	(= (slew_time Star15 Phenomenon10) 28.09)
	(= (slew_time Phenomenon10 Star15) 28.09)
	(= (slew_time Star15 Phenomenon11) 39.19)
	(= (slew_time Phenomenon11 Star15) 39.19)
	(= (slew_time Star15 Phenomenon12) 87.66)
	(= (slew_time Phenomenon12 Star15) 87.66)
	(= (slew_time Star15 Phenomenon13) 2.448)
	(= (slew_time Phenomenon13 Star15) 2.448)
	(= (slew_time Star15 Planet14) 34.2)
	(= (slew_time Planet14 Star15) 34.2)
	(= (slew_time Phenomenon16 Star0) 21.21)
	(= (slew_time Star0 Phenomenon16) 21.21)
	(= (slew_time Phenomenon16 Star1) 32.08)
	(= (slew_time Star1 Phenomenon16) 32.08)
	(= (slew_time Phenomenon16 Star2) 10.06)
	(= (slew_time Star2 Phenomenon16) 10.06)
	(= (slew_time Phenomenon16 GroundStation3) 15.85)
	(= (slew_time GroundStation3 Phenomenon16) 15.85)
	(= (slew_time Phenomenon16 Phenomenon4) 50.77)
	(= (slew_time Phenomenon4 Phenomenon16) 50.77)
	(= (slew_time Phenomenon16 Phenomenon5) 11.93)
	(= (slew_time Phenomenon5 Phenomenon16) 11.93)
	(= (slew_time Phenomenon16 Phenomenon6) 24.46)
	(= (slew_time Phenomenon6 Phenomenon16) 24.46)
	(= (slew_time Phenomenon16 Phenomenon7) 76.22)
	(= (slew_time Phenomenon7 Phenomenon16) 76.22)
	(= (slew_time Phenomenon16 Star8) 56.51)
	(= (slew_time Star8 Phenomenon16) 56.51)
	(= (slew_time Phenomenon16 Phenomenon9) 15.41)
	(= (slew_time Phenomenon9 Phenomenon16) 15.41)
	(= (slew_time Phenomenon16 Phenomenon10) 70.91)
	(= (slew_time Phenomenon10 Phenomenon16) 70.91)
	(= (slew_time Phenomenon16 Phenomenon11) 50.2)
	(= (slew_time Phenomenon11 Phenomenon16) 50.2)
	(= (slew_time Phenomenon16 Phenomenon12) 14.71)
	(= (slew_time Phenomenon12 Phenomenon16) 14.71)
	(= (slew_time Phenomenon16 Phenomenon13) 52.84)
	(= (slew_time Phenomenon13 Phenomenon16) 52.84)
	(= (slew_time Phenomenon16 Planet14) 55.93)
	(= (slew_time Planet14 Phenomenon16) 55.93)
	(= (slew_time Phenomenon16 Star15) 62.26)
	(= (slew_time Star15 Phenomenon16) 62.26)
	(= (slew_time Star17 Star0) 38.7)
	(= (slew_time Star0 Star17) 38.7)
	(= (slew_time Star17 Star1) 18.58)
	(= (slew_time Star1 Star17) 18.58)
	(= (slew_time Star17 Star2) 11.5)
	(= (slew_time Star2 Star17) 11.5)
	(= (slew_time Star17 GroundStation3) 35.95)
	(= (slew_time GroundStation3 Star17) 35.95)
	(= (slew_time Star17 Phenomenon4) 48.15)
	(= (slew_time Phenomenon4 Star17) 48.15)
	(= (slew_time Star17 Phenomenon5) 3.887)
	(= (slew_time Phenomenon5 Star17) 3.887)
	(= (slew_time Star17 Phenomenon6) 7.832)
	(= (slew_time Phenomenon6 Star17) 7.832)
	(= (slew_time Star17 Phenomenon7) 36.9)
	(= (slew_time Phenomenon7 Star17) 36.9)
	(= (slew_time Star17 Star8) 4.421)
	(= (slew_time Star8 Star17) 4.421)
	(= (slew_time Star17 Phenomenon9) 33.87)
	(= (slew_time Phenomenon9 Star17) 33.87)
	(= (slew_time Star17 Phenomenon10) 25.84)
	(= (slew_time Phenomenon10 Star17) 25.84)
	(= (slew_time Star17 Phenomenon11) 2.559)
	(= (slew_time Phenomenon11 Star17) 2.559)
	(= (slew_time Star17 Phenomenon12) 12.29)
	(= (slew_time Phenomenon12 Star17) 12.29)
	(= (slew_time Star17 Phenomenon13) 26.56)
	(= (slew_time Phenomenon13 Star17) 26.56)
	(= (slew_time Star17 Planet14) 21.94)
	(= (slew_time Planet14 Star17) 21.94)
	(= (slew_time Star17 Star15) 49.07)
	(= (slew_time Star15 Star17) 49.07)
	(= (slew_time Star17 Phenomenon16) 71.39)
	(= (slew_time Phenomenon16 Star17) 71.39)
	(= (slew_time Phenomenon18 Star0) 22.49)
	(= (slew_time Star0 Phenomenon18) 22.49)
	(= (slew_time Phenomenon18 Star1) 1.3)
	(= (slew_time Star1 Phenomenon18) 1.3)
	(= (slew_time Phenomenon18 Star2) 37.21)
	(= (slew_time Star2 Phenomenon18) 37.21)
	(= (slew_time Phenomenon18 GroundStation3) 1.186)
	(= (slew_time GroundStation3 Phenomenon18) 1.186)
	(= (slew_time Phenomenon18 Phenomenon4) 12.65)
	(= (slew_time Phenomenon4 Phenomenon18) 12.65)
	(= (slew_time Phenomenon18 Phenomenon5) 68.17)
	(= (slew_time Phenomenon5 Phenomenon18) 68.17)
	(= (slew_time Phenomenon18 Phenomenon6) 11.95)
	(= (slew_time Phenomenon6 Phenomenon18) 11.95)
	(= (slew_time Phenomenon18 Phenomenon7) 34.87)
	(= (slew_time Phenomenon7 Phenomenon18) 34.87)
	(= (slew_time Phenomenon18 Star8) 2.466)
	(= (slew_time Star8 Phenomenon18) 2.466)
	(= (slew_time Phenomenon18 Phenomenon9) 29.24)
	(= (slew_time Phenomenon9 Phenomenon18) 29.24)
	(= (slew_time Phenomenon18 Phenomenon10) 12.94)
	(= (slew_time Phenomenon10 Phenomenon18) 12.94)
	(= (slew_time Phenomenon18 Phenomenon11) 61.41)
	(= (slew_time Phenomenon11 Phenomenon18) 61.41)
	(= (slew_time Phenomenon18 Phenomenon12) 53.8)
	(= (slew_time Phenomenon12 Phenomenon18) 53.8)
	(= (slew_time Phenomenon18 Phenomenon13) 42.07)
	(= (slew_time Phenomenon13 Phenomenon18) 42.07)
	(= (slew_time Phenomenon18 Planet14) 57.26)
	(= (slew_time Planet14 Phenomenon18) 57.26)
	(= (slew_time Phenomenon18 Star15) 39.58)
	(= (slew_time Star15 Phenomenon18) 39.58)
	(= (slew_time Phenomenon18 Phenomenon16) 28.08)
	(= (slew_time Phenomenon16 Phenomenon18) 28.08)
	(= (slew_time Phenomenon18 Star17) 12.43)
	(= (slew_time Star17 Phenomenon18) 12.43)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite1 Star8)
	(have_image Phenomenon4 image3)
	(have_image Phenomenon5 thermograph2)
	(have_image Phenomenon6 infrared1)
	(have_image Star8 thermograph2)
	(have_image Phenomenon9 infrared0)
	(have_image Phenomenon10 infrared1)
	(have_image Phenomenon11 infrared4)
	(have_image Phenomenon12 infrared1)
	(have_image Phenomenon13 thermograph2)
	(have_image Planet14 infrared0)
	(have_image Star15 image3)
	(have_image Phenomenon16 image3)
	(have_image Star17 thermograph2)
	(have_image Phenomenon18 infrared1)
))
(:metric minimize (fuel-used))

)
