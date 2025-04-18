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
	instrument5 - instrument
	satellite2 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite3 - satellite
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	instrument11 - instrument
	infrared0 - mode
	image1 - mode
	image2 - mode
	Star2 - direction
	Star3 - direction
	GroundStation0 - direction
	Star1 - direction
	Planet4 - direction
	Star5 - direction
	Star6 - direction
	Planet7 - direction
	Planet8 - direction
	Star9 - direction
	Star10 - direction
	Star11 - direction
	Star12 - direction
	Phenomenon13 - direction
	Star14 - direction
	Planet15 - direction
	Planet16 - direction
	Phenomenon17 - direction
	Star18 - direction
)
(:init
	(supports instrument0 infrared0)
	(supports instrument0 image1)
	(calibration_target instrument0 GroundStation0)
	(supports instrument1 infrared0)
	(supports instrument1 image2)
	(supports instrument1 image1)
	(calibration_target instrument1 Star2)
	(supports instrument2 infrared0)
	(supports instrument2 image1)
	(calibration_target instrument2 Star3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star6)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 136)
	(supports instrument3 infrared0)
	(calibration_target instrument3 Star2)
	(supports instrument4 image2)
	(calibration_target instrument4 GroundStation0)
	(supports instrument5 image1)
	(supports instrument5 infrared0)
	(calibration_target instrument5 Star1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star14)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 105)
	(supports instrument6 image2)
	(supports instrument6 infrared0)
	(supports instrument6 image1)
	(calibration_target instrument6 Star2)
	(supports instrument7 infrared0)
	(supports instrument7 image2)
	(calibration_target instrument7 Star2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star3)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 199)
	(supports instrument8 image1)
	(supports instrument8 image2)
	(supports instrument8 infrared0)
	(calibration_target instrument8 GroundStation0)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet8)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 129)
	(supports instrument9 image2)
	(supports instrument9 infrared0)
	(calibration_target instrument9 Star3)
	(supports instrument10 infrared0)
	(calibration_target instrument10 GroundStation0)
	(supports instrument11 image2)
	(supports instrument11 image1)
	(supports instrument11 infrared0)
	(calibration_target instrument11 Star1)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star12)
	(= (data_capacity satellite4) 1000)
	(= (fuel satellite4) 186)
	(= (data Planet4 infrared0) 51)
	(= (data Star5 infrared0) 80)
	(= (data Star6 infrared0) 116)
	(= (data Planet7 infrared0) 205)
	(= (data Planet8 infrared0) 248)
	(= (data Star9 infrared0) 78)
	(= (data Star10 infrared0) 108)
	(= (data Star11 infrared0) 94)
	(= (data Star12 infrared0) 224)
	(= (data Phenomenon13 infrared0) 32)
	(= (data Star14 infrared0) 265)
	(= (data Planet15 infrared0) 196)
	(= (data Planet16 infrared0) 80)
	(= (data Phenomenon17 infrared0) 276)
	(= (data Star18 infrared0) 116)
	(= (data Planet4 image1) 38)
	(= (data Star5 image1) 83)
	(= (data Star6 image1) 230)
	(= (data Planet7 image1) 236)
	(= (data Planet8 image1) 79)
	(= (data Star9 image1) 13)
	(= (data Star10 image1) 67)
	(= (data Star11 image1) 6)
	(= (data Star12 image1) 129)
	(= (data Phenomenon13 image1) 232)
	(= (data Star14 image1) 16)
	(= (data Planet15 image1) 11)
	(= (data Planet16 image1) 87)
	(= (data Phenomenon17 image1) 201)
	(= (data Star18 image1) 86)
	(= (data Planet4 image2) 61)
	(= (data Star5 image2) 23)
	(= (data Star6 image2) 196)
	(= (data Planet7 image2) 76)
	(= (data Planet8 image2) 163)
	(= (data Star9 image2) 96)
	(= (data Star10 image2) 12)
	(= (data Star11 image2) 274)
	(= (data Star12 image2) 231)
	(= (data Phenomenon13 image2) 89)
	(= (data Star14 image2) 85)
	(= (data Planet15 image2) 31)
	(= (data Planet16 image2) 90)
	(= (data Phenomenon17 image2) 265)
	(= (data Star18 image2) 131)
	(= (slew_time Star2 GroundStation0) 20.83)
	(= (slew_time GroundStation0 Star2) 20.83)
	(= (slew_time Star2 Star1) 71.64)
	(= (slew_time Star1 Star2) 71.64)
	(= (slew_time Star3 GroundStation0) 43.47)
	(= (slew_time GroundStation0 Star3) 43.47)
	(= (slew_time Star3 Star1) 6.898)
	(= (slew_time Star1 Star3) 6.898)
	(= (slew_time Star3 Star2) 22.43)
	(= (slew_time Star2 Star3) 22.43)
	(= (slew_time Star1 GroundStation0) 29.3)
	(= (slew_time GroundStation0 Star1) 29.3)
	(= (slew_time Planet4 GroundStation0) 19.11)
	(= (slew_time GroundStation0 Planet4) 19.11)
	(= (slew_time Planet4 Star1) 78.95)
	(= (slew_time Star1 Planet4) 78.95)
	(= (slew_time Planet4 Star2) 24.83)
	(= (slew_time Star2 Planet4) 24.83)
	(= (slew_time Planet4 Star3) 0.1193)
	(= (slew_time Star3 Planet4) 0.1193)
	(= (slew_time Star5 GroundStation0) 38.42)
	(= (slew_time GroundStation0 Star5) 38.42)
	(= (slew_time Star5 Star1) 57.23)
	(= (slew_time Star1 Star5) 57.23)
	(= (slew_time Star5 Star2) 84.03)
	(= (slew_time Star2 Star5) 84.03)
	(= (slew_time Star5 Star3) 11.73)
	(= (slew_time Star3 Star5) 11.73)
	(= (slew_time Star5 Planet4) 33.96)
	(= (slew_time Planet4 Star5) 33.96)
	(= (slew_time Star6 GroundStation0) 36.52)
	(= (slew_time GroundStation0 Star6) 36.52)
	(= (slew_time Star6 Star1) 9.07)
	(= (slew_time Star1 Star6) 9.07)
	(= (slew_time Star6 Star2) 43.52)
	(= (slew_time Star2 Star6) 43.52)
	(= (slew_time Star6 Star3) 30.36)
	(= (slew_time Star3 Star6) 30.36)
	(= (slew_time Star6 Planet4) 71.36)
	(= (slew_time Planet4 Star6) 71.36)
	(= (slew_time Star6 Star5) 18.01)
	(= (slew_time Star5 Star6) 18.01)
	(= (slew_time Planet7 GroundStation0) 47.46)
	(= (slew_time GroundStation0 Planet7) 47.46)
	(= (slew_time Planet7 Star1) 11.68)
	(= (slew_time Star1 Planet7) 11.68)
	(= (slew_time Planet7 Star2) 8.76)
	(= (slew_time Star2 Planet7) 8.76)
	(= (slew_time Planet7 Star3) 27.35)
	(= (slew_time Star3 Planet7) 27.35)
	(= (slew_time Planet7 Planet4) 21.7)
	(= (slew_time Planet4 Planet7) 21.7)
	(= (slew_time Planet7 Star5) 57.6)
	(= (slew_time Star5 Planet7) 57.6)
	(= (slew_time Planet7 Star6) 8.186)
	(= (slew_time Star6 Planet7) 8.186)
	(= (slew_time Planet8 GroundStation0) 62.12)
	(= (slew_time GroundStation0 Planet8) 62.12)
	(= (slew_time Planet8 Star1) 5.202)
	(= (slew_time Star1 Planet8) 5.202)
	(= (slew_time Planet8 Star2) 40.13)
	(= (slew_time Star2 Planet8) 40.13)
	(= (slew_time Planet8 Star3) 44.47)
	(= (slew_time Star3 Planet8) 44.47)
	(= (slew_time Planet8 Planet4) 77.22)
	(= (slew_time Planet4 Planet8) 77.22)
	(= (slew_time Planet8 Star5) 50.45)
	(= (slew_time Star5 Planet8) 50.45)
	(= (slew_time Planet8 Star6) 56.19)
	(= (slew_time Star6 Planet8) 56.19)
	(= (slew_time Planet8 Planet7) 8.556)
	(= (slew_time Planet7 Planet8) 8.556)
	(= (slew_time Star9 GroundStation0) 60.29)
	(= (slew_time GroundStation0 Star9) 60.29)
	(= (slew_time Star9 Star1) 64.57)
	(= (slew_time Star1 Star9) 64.57)
	(= (slew_time Star9 Star2) 70.13)
	(= (slew_time Star2 Star9) 70.13)
	(= (slew_time Star9 Star3) 19.98)
	(= (slew_time Star3 Star9) 19.98)
	(= (slew_time Star9 Planet4) 12.94)
	(= (slew_time Planet4 Star9) 12.94)
	(= (slew_time Star9 Star5) 86.72)
	(= (slew_time Star5 Star9) 86.72)
	(= (slew_time Star9 Star6) 4.497)
	(= (slew_time Star6 Star9) 4.497)
	(= (slew_time Star9 Planet7) 30.17)
	(= (slew_time Planet7 Star9) 30.17)
	(= (slew_time Star9 Planet8) 29.9)
	(= (slew_time Planet8 Star9) 29.9)
	(= (slew_time Star10 GroundStation0) 35.5)
	(= (slew_time GroundStation0 Star10) 35.5)
	(= (slew_time Star10 Star1) 46.72)
	(= (slew_time Star1 Star10) 46.72)
	(= (slew_time Star10 Star2) 0.7327)
	(= (slew_time Star2 Star10) 0.7327)
	(= (slew_time Star10 Star3) 68.45)
	(= (slew_time Star3 Star10) 68.45)
	(= (slew_time Star10 Planet4) 4.266)
	(= (slew_time Planet4 Star10) 4.266)
	(= (slew_time Star10 Star5) 27.05)
	(= (slew_time Star5 Star10) 27.05)
	(= (slew_time Star10 Star6) 18.12)
	(= (slew_time Star6 Star10) 18.12)
	(= (slew_time Star10 Planet7) 16.28)
	(= (slew_time Planet7 Star10) 16.28)
	(= (slew_time Star10 Planet8) 5.694)
	(= (slew_time Planet8 Star10) 5.694)
	(= (slew_time Star10 Star9) 31)
	(= (slew_time Star9 Star10) 31)
	(= (slew_time Star11 GroundStation0) 23.95)
	(= (slew_time GroundStation0 Star11) 23.95)
	(= (slew_time Star11 Star1) 4.131)
	(= (slew_time Star1 Star11) 4.131)
	(= (slew_time Star11 Star2) 24.56)
	(= (slew_time Star2 Star11) 24.56)
	(= (slew_time Star11 Star3) 23.14)
	(= (slew_time Star3 Star11) 23.14)
	(= (slew_time Star11 Planet4) 33.61)
	(= (slew_time Planet4 Star11) 33.61)
	(= (slew_time Star11 Star5) 1.17)
	(= (slew_time Star5 Star11) 1.17)
	(= (slew_time Star11 Star6) 3.761)
	(= (slew_time Star6 Star11) 3.761)
	(= (slew_time Star11 Planet7) 57.85)
	(= (slew_time Planet7 Star11) 57.85)
	(= (slew_time Star11 Planet8) 84.92)
	(= (slew_time Planet8 Star11) 84.92)
	(= (slew_time Star11 Star9) 58.27)
	(= (slew_time Star9 Star11) 58.27)
	(= (slew_time Star11 Star10) 17.49)
	(= (slew_time Star10 Star11) 17.49)
	(= (slew_time Star12 GroundStation0) 47.56)
	(= (slew_time GroundStation0 Star12) 47.56)
	(= (slew_time Star12 Star1) 61.86)
	(= (slew_time Star1 Star12) 61.86)
	(= (slew_time Star12 Star2) 53.13)
	(= (slew_time Star2 Star12) 53.13)
	(= (slew_time Star12 Star3) 37.06)
	(= (slew_time Star3 Star12) 37.06)
	(= (slew_time Star12 Planet4) 54.86)
	(= (slew_time Planet4 Star12) 54.86)
	(= (slew_time Star12 Star5) 86.63)
	(= (slew_time Star5 Star12) 86.63)
	(= (slew_time Star12 Star6) 29.05)
	(= (slew_time Star6 Star12) 29.05)
	(= (slew_time Star12 Planet7) 43.07)
	(= (slew_time Planet7 Star12) 43.07)
	(= (slew_time Star12 Planet8) 2.012)
	(= (slew_time Planet8 Star12) 2.012)
	(= (slew_time Star12 Star9) 58.91)
	(= (slew_time Star9 Star12) 58.91)
	(= (slew_time Star12 Star10) 10.24)
	(= (slew_time Star10 Star12) 10.24)
	(= (slew_time Star12 Star11) 61.35)
	(= (slew_time Star11 Star12) 61.35)
	(= (slew_time Phenomenon13 GroundStation0) 21.02)
	(= (slew_time GroundStation0 Phenomenon13) 21.02)
	(= (slew_time Phenomenon13 Star1) 11.18)
	(= (slew_time Star1 Phenomenon13) 11.18)
	(= (slew_time Phenomenon13 Star2) 55.61)
	(= (slew_time Star2 Phenomenon13) 55.61)
	(= (slew_time Phenomenon13 Star3) 29.42)
	(= (slew_time Star3 Phenomenon13) 29.42)
	(= (slew_time Phenomenon13 Planet4) 97.75)
	(= (slew_time Planet4 Phenomenon13) 97.75)
	(= (slew_time Phenomenon13 Star5) 51.27)
	(= (slew_time Star5 Phenomenon13) 51.27)
	(= (slew_time Phenomenon13 Star6) 11.31)
	(= (slew_time Star6 Phenomenon13) 11.31)
	(= (slew_time Phenomenon13 Planet7) 12.35)
	(= (slew_time Planet7 Phenomenon13) 12.35)
	(= (slew_time Phenomenon13 Planet8) 5.093)
	(= (slew_time Planet8 Phenomenon13) 5.093)
	(= (slew_time Phenomenon13 Star9) 44.2)
	(= (slew_time Star9 Phenomenon13) 44.2)
	(= (slew_time Phenomenon13 Star10) 66.41)
	(= (slew_time Star10 Phenomenon13) 66.41)
	(= (slew_time Phenomenon13 Star11) 64.91)
	(= (slew_time Star11 Phenomenon13) 64.91)
	(= (slew_time Phenomenon13 Star12) 27.29)
	(= (slew_time Star12 Phenomenon13) 27.29)
	(= (slew_time Star14 GroundStation0) 44.62)
	(= (slew_time GroundStation0 Star14) 44.62)
	(= (slew_time Star14 Star1) 34.52)
	(= (slew_time Star1 Star14) 34.52)
	(= (slew_time Star14 Star2) 43.63)
	(= (slew_time Star2 Star14) 43.63)
	(= (slew_time Star14 Star3) 14.73)
	(= (slew_time Star3 Star14) 14.73)
	(= (slew_time Star14 Planet4) 18.61)
	(= (slew_time Planet4 Star14) 18.61)
	(= (slew_time Star14 Star5) 8.039)
	(= (slew_time Star5 Star14) 8.039)
	(= (slew_time Star14 Star6) 82.5)
	(= (slew_time Star6 Star14) 82.5)
	(= (slew_time Star14 Planet7) 6.415)
	(= (slew_time Planet7 Star14) 6.415)
	(= (slew_time Star14 Planet8) 37.53)
	(= (slew_time Planet8 Star14) 37.53)
	(= (slew_time Star14 Star9) 40.08)
	(= (slew_time Star9 Star14) 40.08)
	(= (slew_time Star14 Star10) 15.24)
	(= (slew_time Star10 Star14) 15.24)
	(= (slew_time Star14 Star11) 20.65)
	(= (slew_time Star11 Star14) 20.65)
	(= (slew_time Star14 Star12) 6.807)
	(= (slew_time Star12 Star14) 6.807)
	(= (slew_time Star14 Phenomenon13) 78.68)
	(= (slew_time Phenomenon13 Star14) 78.68)
	(= (slew_time Planet15 GroundStation0) 26.87)
	(= (slew_time GroundStation0 Planet15) 26.87)
	(= (slew_time Planet15 Star1) 55.63)
	(= (slew_time Star1 Planet15) 55.63)
	(= (slew_time Planet15 Star2) 65.28)
	(= (slew_time Star2 Planet15) 65.28)
	(= (slew_time Planet15 Star3) 22.1)
	(= (slew_time Star3 Planet15) 22.1)
	(= (slew_time Planet15 Planet4) 2.978)
	(= (slew_time Planet4 Planet15) 2.978)
	(= (slew_time Planet15 Star5) 16.8)
	(= (slew_time Star5 Planet15) 16.8)
	(= (slew_time Planet15 Star6) 8.768)
	(= (slew_time Star6 Planet15) 8.768)
	(= (slew_time Planet15 Planet7) 83.28)
	(= (slew_time Planet7 Planet15) 83.28)
	(= (slew_time Planet15 Planet8) 21.4)
	(= (slew_time Planet8 Planet15) 21.4)
	(= (slew_time Planet15 Star9) 59.82)
	(= (slew_time Star9 Planet15) 59.82)
	(= (slew_time Planet15 Star10) 1.067)
	(= (slew_time Star10 Planet15) 1.067)
	(= (slew_time Planet15 Star11) 47.51)
	(= (slew_time Star11 Planet15) 47.51)
	(= (slew_time Planet15 Star12) 2.822)
	(= (slew_time Star12 Planet15) 2.822)
	(= (slew_time Planet15 Phenomenon13) 4.56)
	(= (slew_time Phenomenon13 Planet15) 4.56)
	(= (slew_time Planet15 Star14) 4.767)
	(= (slew_time Star14 Planet15) 4.767)
	(= (slew_time Planet16 GroundStation0) 16.13)
	(= (slew_time GroundStation0 Planet16) 16.13)
	(= (slew_time Planet16 Star1) 0.1173)
	(= (slew_time Star1 Planet16) 0.1173)
	(= (slew_time Planet16 Star2) 46.73)
	(= (slew_time Star2 Planet16) 46.73)
	(= (slew_time Planet16 Star3) 3.87)
	(= (slew_time Star3 Planet16) 3.87)
	(= (slew_time Planet16 Planet4) 93.48)
	(= (slew_time Planet4 Planet16) 93.48)
	(= (slew_time Planet16 Star5) 4.773)
	(= (slew_time Star5 Planet16) 4.773)
	(= (slew_time Planet16 Star6) 2.863)
	(= (slew_time Star6 Planet16) 2.863)
	(= (slew_time Planet16 Planet7) 1.849)
	(= (slew_time Planet7 Planet16) 1.849)
	(= (slew_time Planet16 Planet8) 21.12)
	(= (slew_time Planet8 Planet16) 21.12)
	(= (slew_time Planet16 Star9) 29.72)
	(= (slew_time Star9 Planet16) 29.72)
	(= (slew_time Planet16 Star10) 35)
	(= (slew_time Star10 Planet16) 35)
	(= (slew_time Planet16 Star11) 5.173)
	(= (slew_time Star11 Planet16) 5.173)
	(= (slew_time Planet16 Star12) 11.98)
	(= (slew_time Star12 Planet16) 11.98)
	(= (slew_time Planet16 Phenomenon13) 25.64)
	(= (slew_time Phenomenon13 Planet16) 25.64)
	(= (slew_time Planet16 Star14) 1.416)
	(= (slew_time Star14 Planet16) 1.416)
	(= (slew_time Planet16 Planet15) 20.78)
	(= (slew_time Planet15 Planet16) 20.78)
	(= (slew_time Phenomenon17 GroundStation0) 8.866)
	(= (slew_time GroundStation0 Phenomenon17) 8.866)
	(= (slew_time Phenomenon17 Star1) 2.843)
	(= (slew_time Star1 Phenomenon17) 2.843)
	(= (slew_time Phenomenon17 Star2) 44.87)
	(= (slew_time Star2 Phenomenon17) 44.87)
	(= (slew_time Phenomenon17 Star3) 11.5)
	(= (slew_time Star3 Phenomenon17) 11.5)
	(= (slew_time Phenomenon17 Planet4) 8.124)
	(= (slew_time Planet4 Phenomenon17) 8.124)
	(= (slew_time Phenomenon17 Star5) 17.38)
	(= (slew_time Star5 Phenomenon17) 17.38)
	(= (slew_time Phenomenon17 Star6) 13.95)
	(= (slew_time Star6 Phenomenon17) 13.95)
	(= (slew_time Phenomenon17 Planet7) 13.7)
	(= (slew_time Planet7 Phenomenon17) 13.7)
	(= (slew_time Phenomenon17 Planet8) 49.45)
	(= (slew_time Planet8 Phenomenon17) 49.45)
	(= (slew_time Phenomenon17 Star9) 34.66)
	(= (slew_time Star9 Phenomenon17) 34.66)
	(= (slew_time Phenomenon17 Star10) 50.9)
	(= (slew_time Star10 Phenomenon17) 50.9)
	(= (slew_time Phenomenon17 Star11) 5.034)
	(= (slew_time Star11 Phenomenon17) 5.034)
	(= (slew_time Phenomenon17 Star12) 40.01)
	(= (slew_time Star12 Phenomenon17) 40.01)
	(= (slew_time Phenomenon17 Phenomenon13) 73.35)
	(= (slew_time Phenomenon13 Phenomenon17) 73.35)
	(= (slew_time Phenomenon17 Star14) 13.52)
	(= (slew_time Star14 Phenomenon17) 13.52)
	(= (slew_time Phenomenon17 Planet15) 61.38)
	(= (slew_time Planet15 Phenomenon17) 61.38)
	(= (slew_time Phenomenon17 Planet16) 32.38)
	(= (slew_time Planet16 Phenomenon17) 32.38)
	(= (slew_time Star18 GroundStation0) 7.435)
	(= (slew_time GroundStation0 Star18) 7.435)
	(= (slew_time Star18 Star1) 46.41)
	(= (slew_time Star1 Star18) 46.41)
	(= (slew_time Star18 Star2) 1.059)
	(= (slew_time Star2 Star18) 1.059)
	(= (slew_time Star18 Star3) 3.45)
	(= (slew_time Star3 Star18) 3.45)
	(= (slew_time Star18 Planet4) 58.63)
	(= (slew_time Planet4 Star18) 58.63)
	(= (slew_time Star18 Star5) 99.33)
	(= (slew_time Star5 Star18) 99.33)
	(= (slew_time Star18 Star6) 34.3)
	(= (slew_time Star6 Star18) 34.3)
	(= (slew_time Star18 Planet7) 16.32)
	(= (slew_time Planet7 Star18) 16.32)
	(= (slew_time Star18 Planet8) 58.87)
	(= (slew_time Planet8 Star18) 58.87)
	(= (slew_time Star18 Star9) 4.916)
	(= (slew_time Star9 Star18) 4.916)
	(= (slew_time Star18 Star10) 46.7)
	(= (slew_time Star10 Star18) 46.7)
	(= (slew_time Star18 Star11) 52.1)
	(= (slew_time Star11 Star18) 52.1)
	(= (slew_time Star18 Star12) 5.258)
	(= (slew_time Star12 Star18) 5.258)
	(= (slew_time Star18 Phenomenon13) 65.46)
	(= (slew_time Phenomenon13 Star18) 65.46)
	(= (slew_time Star18 Star14) 10.6)
	(= (slew_time Star14 Star18) 10.6)
	(= (slew_time Star18 Planet15) 89.29)
	(= (slew_time Planet15 Star18) 89.29)
	(= (slew_time Star18 Planet16) 31.64)
	(= (slew_time Planet16 Star18) 31.64)
	(= (slew_time Star18 Phenomenon17) 57.16)
	(= (slew_time Phenomenon17 Star18) 57.16)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Star2)
	(pointing satellite1 Star2)
	(pointing satellite2 Star3)
	(have_image Star5 image2)
	(have_image Star6 image2)
	(have_image Planet7 infrared0)
	(have_image Planet8 infrared0)
	(have_image Star9 image2)
	(have_image Star10 image2)
	(have_image Star11 infrared0)
	(have_image Star12 infrared0)
	(have_image Phenomenon13 infrared0)
	(have_image Star14 infrared0)
	(have_image Planet15 infrared0)
	(have_image Planet16 image1)
	(have_image Phenomenon17 image1)
	(have_image Star18 infrared0)
))
(:metric minimize (fuel-used))

)
