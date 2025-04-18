(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	satellite3 - satellite
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	image0 - mode
	image1 - mode
	thermograph2 - mode
	GroundStation1 - direction
	Star2 - direction
	GroundStation0 - direction
	Star3 - direction
	Planet4 - direction
	Phenomenon5 - direction
	Star6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Star9 - direction
	Phenomenon10 - direction
	Phenomenon11 - direction
	Star12 - direction
	Phenomenon13 - direction
	Planet14 - direction
	Planet15 - direction
	Planet16 - direction
	Phenomenon17 - direction
	Star18 - direction
	Planet19 - direction
	Planet20 - direction
	Star21 - direction
	Phenomenon22 - direction
	Star23 - direction
	Planet24 - direction
)
(:init
	(supports instrument0 image1)
	(supports instrument0 image0)
	(calibration_target instrument0 GroundStation0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 GroundStation1)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 165)
	(supports instrument1 image0)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 GroundStation1)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star23)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 194)
	(supports instrument2 image1)
	(supports instrument2 thermograph2)
	(calibration_target instrument2 Star3)
	(on_board instrument2 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star21)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 141)
	(supports instrument3 image0)
	(calibration_target instrument3 Star2)
	(supports instrument4 image1)
	(calibration_target instrument4 GroundStation1)
	(supports instrument5 image1)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 Star2)
	(on_board instrument3 satellite3)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet14)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 152)
	(supports instrument6 thermograph2)
	(supports instrument6 image0)
	(calibration_target instrument6 Star3)
	(supports instrument7 image1)
	(calibration_target instrument7 GroundStation0)
	(supports instrument8 thermograph2)
	(calibration_target instrument8 Star3)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet19)
	(= (data_capacity satellite4) 1000)
	(= (fuel satellite4) 185)
	(= (data Planet4 image0) 120)
	(= (data Phenomenon5 image0) 281)
	(= (data Star6 image0) 281)
	(= (data Star7 image0) 225)
	(= (data Phenomenon8 image0) 169)
	(= (data Star9 image0) 131)
	(= (data Phenomenon10 image0) 84)
	(= (data Phenomenon11 image0) 138)
	(= (data Star12 image0) 65)
	(= (data Phenomenon13 image0) 5)
	(= (data Planet14 image0) 271)
	(= (data Planet15 image0) 125)
	(= (data Planet16 image0) 23)
	(= (data Phenomenon17 image0) 84)
	(= (data Star18 image0) 195)
	(= (data Planet19 image0) 75)
	(= (data Planet20 image0) 254)
	(= (data Star21 image0) 86)
	(= (data Phenomenon22 image0) 233)
	(= (data Star23 image0) 281)
	(= (data Planet24 image0) 189)
	(= (data Planet4 image1) 296)
	(= (data Phenomenon5 image1) 117)
	(= (data Star6 image1) 213)
	(= (data Star7 image1) 52)
	(= (data Phenomenon8 image1) 270)
	(= (data Star9 image1) 39)
	(= (data Phenomenon10 image1) 145)
	(= (data Phenomenon11 image1) 107)
	(= (data Star12 image1) 93)
	(= (data Phenomenon13 image1) 59)
	(= (data Planet14 image1) 134)
	(= (data Planet15 image1) 246)
	(= (data Planet16 image1) 67)
	(= (data Phenomenon17 image1) 265)
	(= (data Star18 image1) 156)
	(= (data Planet19 image1) 292)
	(= (data Planet20 image1) 292)
	(= (data Star21 image1) 248)
	(= (data Phenomenon22 image1) 187)
	(= (data Star23 image1) 38)
	(= (data Planet24 image1) 86)
	(= (data Planet4 thermograph2) 180)
	(= (data Phenomenon5 thermograph2) 222)
	(= (data Star6 thermograph2) 214)
	(= (data Star7 thermograph2) 43)
	(= (data Phenomenon8 thermograph2) 30)
	(= (data Star9 thermograph2) 174)
	(= (data Phenomenon10 thermograph2) 201)
	(= (data Phenomenon11 thermograph2) 260)
	(= (data Star12 thermograph2) 148)
	(= (data Phenomenon13 thermograph2) 26)
	(= (data Planet14 thermograph2) 237)
	(= (data Planet15 thermograph2) 17)
	(= (data Planet16 thermograph2) 55)
	(= (data Phenomenon17 thermograph2) 65)
	(= (data Star18 thermograph2) 195)
	(= (data Planet19 thermograph2) 80)
	(= (data Planet20 thermograph2) 61)
	(= (data Star21 thermograph2) 202)
	(= (data Phenomenon22 thermograph2) 141)
	(= (data Star23 thermograph2) 279)
	(= (data Planet24 thermograph2) 294)
	(= (slew_time GroundStation1 GroundStation0) 13.97)
	(= (slew_time GroundStation0 GroundStation1) 13.97)
	(= (slew_time Star2 GroundStation0) 25.91)
	(= (slew_time GroundStation0 Star2) 25.91)
	(= (slew_time Star2 GroundStation1) 34.09)
	(= (slew_time GroundStation1 Star2) 34.09)
	(= (slew_time Star3 GroundStation0) 31.85)
	(= (slew_time GroundStation0 Star3) 31.85)
	(= (slew_time Star3 GroundStation1) 77.3)
	(= (slew_time GroundStation1 Star3) 77.3)
	(= (slew_time Star3 Star2) 36.52)
	(= (slew_time Star2 Star3) 36.52)
	(= (slew_time Planet4 GroundStation0) 85.83)
	(= (slew_time GroundStation0 Planet4) 85.83)
	(= (slew_time Planet4 GroundStation1) 20.61)
	(= (slew_time GroundStation1 Planet4) 20.61)
	(= (slew_time Planet4 Star2) 4.589)
	(= (slew_time Star2 Planet4) 4.589)
	(= (slew_time Planet4 Star3) 35.32)
	(= (slew_time Star3 Planet4) 35.32)
	(= (slew_time Phenomenon5 GroundStation0) 67.11)
	(= (slew_time GroundStation0 Phenomenon5) 67.11)
	(= (slew_time Phenomenon5 GroundStation1) 45.62)
	(= (slew_time GroundStation1 Phenomenon5) 45.62)
	(= (slew_time Phenomenon5 Star2) 21.73)
	(= (slew_time Star2 Phenomenon5) 21.73)
	(= (slew_time Phenomenon5 Star3) 35.66)
	(= (slew_time Star3 Phenomenon5) 35.66)
	(= (slew_time Phenomenon5 Planet4) 22.83)
	(= (slew_time Planet4 Phenomenon5) 22.83)
	(= (slew_time Star6 GroundStation0) 91.7)
	(= (slew_time GroundStation0 Star6) 91.7)
	(= (slew_time Star6 GroundStation1) 71.2)
	(= (slew_time GroundStation1 Star6) 71.2)
	(= (slew_time Star6 Star2) 13.21)
	(= (slew_time Star2 Star6) 13.21)
	(= (slew_time Star6 Star3) 13.86)
	(= (slew_time Star3 Star6) 13.86)
	(= (slew_time Star6 Planet4) 23.35)
	(= (slew_time Planet4 Star6) 23.35)
	(= (slew_time Star6 Phenomenon5) 81.33)
	(= (slew_time Phenomenon5 Star6) 81.33)
	(= (slew_time Star7 GroundStation0) 45.08)
	(= (slew_time GroundStation0 Star7) 45.08)
	(= (slew_time Star7 GroundStation1) 16.71)
	(= (slew_time GroundStation1 Star7) 16.71)
	(= (slew_time Star7 Star2) 2.618)
	(= (slew_time Star2 Star7) 2.618)
	(= (slew_time Star7 Star3) 31.97)
	(= (slew_time Star3 Star7) 31.97)
	(= (slew_time Star7 Planet4) 5.745)
	(= (slew_time Planet4 Star7) 5.745)
	(= (slew_time Star7 Phenomenon5) 9.09)
	(= (slew_time Phenomenon5 Star7) 9.09)
	(= (slew_time Star7 Star6) 30.99)
	(= (slew_time Star6 Star7) 30.99)
	(= (slew_time Phenomenon8 GroundStation0) 24.25)
	(= (slew_time GroundStation0 Phenomenon8) 24.25)
	(= (slew_time Phenomenon8 GroundStation1) 22.07)
	(= (slew_time GroundStation1 Phenomenon8) 22.07)
	(= (slew_time Phenomenon8 Star2) 89.88)
	(= (slew_time Star2 Phenomenon8) 89.88)
	(= (slew_time Phenomenon8 Star3) 59.09)
	(= (slew_time Star3 Phenomenon8) 59.09)
	(= (slew_time Phenomenon8 Planet4) 24.78)
	(= (slew_time Planet4 Phenomenon8) 24.78)
	(= (slew_time Phenomenon8 Phenomenon5) 57.64)
	(= (slew_time Phenomenon5 Phenomenon8) 57.64)
	(= (slew_time Phenomenon8 Star6) 88.76)
	(= (slew_time Star6 Phenomenon8) 88.76)
	(= (slew_time Phenomenon8 Star7) 12.94)
	(= (slew_time Star7 Phenomenon8) 12.94)
	(= (slew_time Star9 GroundStation0) 60.82)
	(= (slew_time GroundStation0 Star9) 60.82)
	(= (slew_time Star9 GroundStation1) 8.883)
	(= (slew_time GroundStation1 Star9) 8.883)
	(= (slew_time Star9 Star2) 65.54)
	(= (slew_time Star2 Star9) 65.54)
	(= (slew_time Star9 Star3) 28.55)
	(= (slew_time Star3 Star9) 28.55)
	(= (slew_time Star9 Planet4) 75.4)
	(= (slew_time Planet4 Star9) 75.4)
	(= (slew_time Star9 Phenomenon5) 56.41)
	(= (slew_time Phenomenon5 Star9) 56.41)
	(= (slew_time Star9 Star6) 17.1)
	(= (slew_time Star6 Star9) 17.1)
	(= (slew_time Star9 Star7) 2.346)
	(= (slew_time Star7 Star9) 2.346)
	(= (slew_time Star9 Phenomenon8) 7.42)
	(= (slew_time Phenomenon8 Star9) 7.42)
	(= (slew_time Phenomenon10 GroundStation0) 12.1)
	(= (slew_time GroundStation0 Phenomenon10) 12.1)
	(= (slew_time Phenomenon10 GroundStation1) 11.54)
	(= (slew_time GroundStation1 Phenomenon10) 11.54)
	(= (slew_time Phenomenon10 Star2) 47.45)
	(= (slew_time Star2 Phenomenon10) 47.45)
	(= (slew_time Phenomenon10 Star3) 84.98)
	(= (slew_time Star3 Phenomenon10) 84.98)
	(= (slew_time Phenomenon10 Planet4) 26.81)
	(= (slew_time Planet4 Phenomenon10) 26.81)
	(= (slew_time Phenomenon10 Phenomenon5) 11.07)
	(= (slew_time Phenomenon5 Phenomenon10) 11.07)
	(= (slew_time Phenomenon10 Star6) 55.01)
	(= (slew_time Star6 Phenomenon10) 55.01)
	(= (slew_time Phenomenon10 Star7) 0.2573)
	(= (slew_time Star7 Phenomenon10) 0.2573)
	(= (slew_time Phenomenon10 Phenomenon8) 76.17)
	(= (slew_time Phenomenon8 Phenomenon10) 76.17)
	(= (slew_time Phenomenon10 Star9) 30.93)
	(= (slew_time Star9 Phenomenon10) 30.93)
	(= (slew_time Phenomenon11 GroundStation0) 41.88)
	(= (slew_time GroundStation0 Phenomenon11) 41.88)
	(= (slew_time Phenomenon11 GroundStation1) 72.18)
	(= (slew_time GroundStation1 Phenomenon11) 72.18)
	(= (slew_time Phenomenon11 Star2) 0.2277)
	(= (slew_time Star2 Phenomenon11) 0.2277)
	(= (slew_time Phenomenon11 Star3) 18.77)
	(= (slew_time Star3 Phenomenon11) 18.77)
	(= (slew_time Phenomenon11 Planet4) 12.75)
	(= (slew_time Planet4 Phenomenon11) 12.75)
	(= (slew_time Phenomenon11 Phenomenon5) 31)
	(= (slew_time Phenomenon5 Phenomenon11) 31)
	(= (slew_time Phenomenon11 Star6) 18.72)
	(= (slew_time Star6 Phenomenon11) 18.72)
	(= (slew_time Phenomenon11 Star7) 0.4255)
	(= (slew_time Star7 Phenomenon11) 0.4255)
	(= (slew_time Phenomenon11 Phenomenon8) 7.564)
	(= (slew_time Phenomenon8 Phenomenon11) 7.564)
	(= (slew_time Phenomenon11 Star9) 57.2)
	(= (slew_time Star9 Phenomenon11) 57.2)
	(= (slew_time Phenomenon11 Phenomenon10) 9.174)
	(= (slew_time Phenomenon10 Phenomenon11) 9.174)
	(= (slew_time Star12 GroundStation0) 91.5)
	(= (slew_time GroundStation0 Star12) 91.5)
	(= (slew_time Star12 GroundStation1) 49.49)
	(= (slew_time GroundStation1 Star12) 49.49)
	(= (slew_time Star12 Star2) 38.38)
	(= (slew_time Star2 Star12) 38.38)
	(= (slew_time Star12 Star3) 3.149)
	(= (slew_time Star3 Star12) 3.149)
	(= (slew_time Star12 Planet4) 0.3987)
	(= (slew_time Planet4 Star12) 0.3987)
	(= (slew_time Star12 Phenomenon5) 34.56)
	(= (slew_time Phenomenon5 Star12) 34.56)
	(= (slew_time Star12 Star6) 73.88)
	(= (slew_time Star6 Star12) 73.88)
	(= (slew_time Star12 Star7) 64.65)
	(= (slew_time Star7 Star12) 64.65)
	(= (slew_time Star12 Phenomenon8) 75.66)
	(= (slew_time Phenomenon8 Star12) 75.66)
	(= (slew_time Star12 Star9) 13.76)
	(= (slew_time Star9 Star12) 13.76)
	(= (slew_time Star12 Phenomenon10) 49.5)
	(= (slew_time Phenomenon10 Star12) 49.5)
	(= (slew_time Star12 Phenomenon11) 66.52)
	(= (slew_time Phenomenon11 Star12) 66.52)
	(= (slew_time Phenomenon13 GroundStation0) 17.86)
	(= (slew_time GroundStation0 Phenomenon13) 17.86)
	(= (slew_time Phenomenon13 GroundStation1) 84.17)
	(= (slew_time GroundStation1 Phenomenon13) 84.17)
	(= (slew_time Phenomenon13 Star2) 13.75)
	(= (slew_time Star2 Phenomenon13) 13.75)
	(= (slew_time Phenomenon13 Star3) 11.33)
	(= (slew_time Star3 Phenomenon13) 11.33)
	(= (slew_time Phenomenon13 Planet4) 35.4)
	(= (slew_time Planet4 Phenomenon13) 35.4)
	(= (slew_time Phenomenon13 Phenomenon5) 70.13)
	(= (slew_time Phenomenon5 Phenomenon13) 70.13)
	(= (slew_time Phenomenon13 Star6) 28.09)
	(= (slew_time Star6 Phenomenon13) 28.09)
	(= (slew_time Phenomenon13 Star7) 54.03)
	(= (slew_time Star7 Phenomenon13) 54.03)
	(= (slew_time Phenomenon13 Phenomenon8) 18.39)
	(= (slew_time Phenomenon8 Phenomenon13) 18.39)
	(= (slew_time Phenomenon13 Star9) 36.83)
	(= (slew_time Star9 Phenomenon13) 36.83)
	(= (slew_time Phenomenon13 Phenomenon10) 4.177)
	(= (slew_time Phenomenon10 Phenomenon13) 4.177)
	(= (slew_time Phenomenon13 Phenomenon11) 42.26)
	(= (slew_time Phenomenon11 Phenomenon13) 42.26)
	(= (slew_time Phenomenon13 Star12) 7.028)
	(= (slew_time Star12 Phenomenon13) 7.028)
	(= (slew_time Planet14 GroundStation0) 66.13)
	(= (slew_time GroundStation0 Planet14) 66.13)
	(= (slew_time Planet14 GroundStation1) 7.88)
	(= (slew_time GroundStation1 Planet14) 7.88)
	(= (slew_time Planet14 Star2) 85.05)
	(= (slew_time Star2 Planet14) 85.05)
	(= (slew_time Planet14 Star3) 4.262)
	(= (slew_time Star3 Planet14) 4.262)
	(= (slew_time Planet14 Planet4) 97.82)
	(= (slew_time Planet4 Planet14) 97.82)
	(= (slew_time Planet14 Phenomenon5) 2.757)
	(= (slew_time Phenomenon5 Planet14) 2.757)
	(= (slew_time Planet14 Star6) 68.44)
	(= (slew_time Star6 Planet14) 68.44)
	(= (slew_time Planet14 Star7) 10.26)
	(= (slew_time Star7 Planet14) 10.26)
	(= (slew_time Planet14 Phenomenon8) 9.817)
	(= (slew_time Phenomenon8 Planet14) 9.817)
	(= (slew_time Planet14 Star9) 10.59)
	(= (slew_time Star9 Planet14) 10.59)
	(= (slew_time Planet14 Phenomenon10) 28.26)
	(= (slew_time Phenomenon10 Planet14) 28.26)
	(= (slew_time Planet14 Phenomenon11) 24.12)
	(= (slew_time Phenomenon11 Planet14) 24.12)
	(= (slew_time Planet14 Star12) 37.8)
	(= (slew_time Star12 Planet14) 37.8)
	(= (slew_time Planet14 Phenomenon13) 38.52)
	(= (slew_time Phenomenon13 Planet14) 38.52)
	(= (slew_time Planet15 GroundStation0) 30.8)
	(= (slew_time GroundStation0 Planet15) 30.8)
	(= (slew_time Planet15 GroundStation1) 0.8531)
	(= (slew_time GroundStation1 Planet15) 0.8531)
	(= (slew_time Planet15 Star2) 39.97)
	(= (slew_time Star2 Planet15) 39.97)
	(= (slew_time Planet15 Star3) 64.4)
	(= (slew_time Star3 Planet15) 64.4)
	(= (slew_time Planet15 Planet4) 18)
	(= (slew_time Planet4 Planet15) 18)
	(= (slew_time Planet15 Phenomenon5) 37.84)
	(= (slew_time Phenomenon5 Planet15) 37.84)
	(= (slew_time Planet15 Star6) 7.934)
	(= (slew_time Star6 Planet15) 7.934)
	(= (slew_time Planet15 Star7) 7.346)
	(= (slew_time Star7 Planet15) 7.346)
	(= (slew_time Planet15 Phenomenon8) 76.41)
	(= (slew_time Phenomenon8 Planet15) 76.41)
	(= (slew_time Planet15 Star9) 47.33)
	(= (slew_time Star9 Planet15) 47.33)
	(= (slew_time Planet15 Phenomenon10) 60.34)
	(= (slew_time Phenomenon10 Planet15) 60.34)
	(= (slew_time Planet15 Phenomenon11) 71.93)
	(= (slew_time Phenomenon11 Planet15) 71.93)
	(= (slew_time Planet15 Star12) 17.02)
	(= (slew_time Star12 Planet15) 17.02)
	(= (slew_time Planet15 Phenomenon13) 33.21)
	(= (slew_time Phenomenon13 Planet15) 33.21)
	(= (slew_time Planet15 Planet14) 32.93)
	(= (slew_time Planet14 Planet15) 32.93)
	(= (slew_time Planet16 GroundStation0) 23.92)
	(= (slew_time GroundStation0 Planet16) 23.92)
	(= (slew_time Planet16 GroundStation1) 53.37)
	(= (slew_time GroundStation1 Planet16) 53.37)
	(= (slew_time Planet16 Star2) 62.37)
	(= (slew_time Star2 Planet16) 62.37)
	(= (slew_time Planet16 Star3) 49.6)
	(= (slew_time Star3 Planet16) 49.6)
	(= (slew_time Planet16 Planet4) 42.53)
	(= (slew_time Planet4 Planet16) 42.53)
	(= (slew_time Planet16 Phenomenon5) 62.18)
	(= (slew_time Phenomenon5 Planet16) 62.18)
	(= (slew_time Planet16 Star6) 20.94)
	(= (slew_time Star6 Planet16) 20.94)
	(= (slew_time Planet16 Star7) 25.41)
	(= (slew_time Star7 Planet16) 25.41)
	(= (slew_time Planet16 Phenomenon8) 43.15)
	(= (slew_time Phenomenon8 Planet16) 43.15)
	(= (slew_time Planet16 Star9) 38.89)
	(= (slew_time Star9 Planet16) 38.89)
	(= (slew_time Planet16 Phenomenon10) 16.58)
	(= (slew_time Phenomenon10 Planet16) 16.58)
	(= (slew_time Planet16 Phenomenon11) 68.47)
	(= (slew_time Phenomenon11 Planet16) 68.47)
	(= (slew_time Planet16 Star12) 52.81)
	(= (slew_time Star12 Planet16) 52.81)
	(= (slew_time Planet16 Phenomenon13) 81.43)
	(= (slew_time Phenomenon13 Planet16) 81.43)
	(= (slew_time Planet16 Planet14) 11.09)
	(= (slew_time Planet14 Planet16) 11.09)
	(= (slew_time Planet16 Planet15) 81.99)
	(= (slew_time Planet15 Planet16) 81.99)
	(= (slew_time Phenomenon17 GroundStation0) 57.04)
	(= (slew_time GroundStation0 Phenomenon17) 57.04)
	(= (slew_time Phenomenon17 GroundStation1) 33.95)
	(= (slew_time GroundStation1 Phenomenon17) 33.95)
	(= (slew_time Phenomenon17 Star2) 9.546)
	(= (slew_time Star2 Phenomenon17) 9.546)
	(= (slew_time Phenomenon17 Star3) 47.52)
	(= (slew_time Star3 Phenomenon17) 47.52)
	(= (slew_time Phenomenon17 Planet4) 51.68)
	(= (slew_time Planet4 Phenomenon17) 51.68)
	(= (slew_time Phenomenon17 Phenomenon5) 4.334)
	(= (slew_time Phenomenon5 Phenomenon17) 4.334)
	(= (slew_time Phenomenon17 Star6) 13.89)
	(= (slew_time Star6 Phenomenon17) 13.89)
	(= (slew_time Phenomenon17 Star7) 44.31)
	(= (slew_time Star7 Phenomenon17) 44.31)
	(= (slew_time Phenomenon17 Phenomenon8) 48.71)
	(= (slew_time Phenomenon8 Phenomenon17) 48.71)
	(= (slew_time Phenomenon17 Star9) 13.22)
	(= (slew_time Star9 Phenomenon17) 13.22)
	(= (slew_time Phenomenon17 Phenomenon10) 62.61)
	(= (slew_time Phenomenon10 Phenomenon17) 62.61)
	(= (slew_time Phenomenon17 Phenomenon11) 56.1)
	(= (slew_time Phenomenon11 Phenomenon17) 56.1)
	(= (slew_time Phenomenon17 Star12) 1.305)
	(= (slew_time Star12 Phenomenon17) 1.305)
	(= (slew_time Phenomenon17 Phenomenon13) 70.06)
	(= (slew_time Phenomenon13 Phenomenon17) 70.06)
	(= (slew_time Phenomenon17 Planet14) 35.26)
	(= (slew_time Planet14 Phenomenon17) 35.26)
	(= (slew_time Phenomenon17 Planet15) 20.66)
	(= (slew_time Planet15 Phenomenon17) 20.66)
	(= (slew_time Phenomenon17 Planet16) 35.47)
	(= (slew_time Planet16 Phenomenon17) 35.47)
	(= (slew_time Star18 GroundStation0) 43.86)
	(= (slew_time GroundStation0 Star18) 43.86)
	(= (slew_time Star18 GroundStation1) 26.88)
	(= (slew_time GroundStation1 Star18) 26.88)
	(= (slew_time Star18 Star2) 23.86)
	(= (slew_time Star2 Star18) 23.86)
	(= (slew_time Star18 Star3) 6.379)
	(= (slew_time Star3 Star18) 6.379)
	(= (slew_time Star18 Planet4) 18.13)
	(= (slew_time Planet4 Star18) 18.13)
	(= (slew_time Star18 Phenomenon5) 39.82)
	(= (slew_time Phenomenon5 Star18) 39.82)
	(= (slew_time Star18 Star6) 0.5754)
	(= (slew_time Star6 Star18) 0.5754)
	(= (slew_time Star18 Star7) 64.95)
	(= (slew_time Star7 Star18) 64.95)
	(= (slew_time Star18 Phenomenon8) 34.44)
	(= (slew_time Phenomenon8 Star18) 34.44)
	(= (slew_time Star18 Star9) 56.57)
	(= (slew_time Star9 Star18) 56.57)
	(= (slew_time Star18 Phenomenon10) 27.5)
	(= (slew_time Phenomenon10 Star18) 27.5)
	(= (slew_time Star18 Phenomenon11) 35.87)
	(= (slew_time Phenomenon11 Star18) 35.87)
	(= (slew_time Star18 Star12) 36.73)
	(= (slew_time Star12 Star18) 36.73)
	(= (slew_time Star18 Phenomenon13) 40.77)
	(= (slew_time Phenomenon13 Star18) 40.77)
	(= (slew_time Star18 Planet14) 77.73)
	(= (slew_time Planet14 Star18) 77.73)
	(= (slew_time Star18 Planet15) 15.58)
	(= (slew_time Planet15 Star18) 15.58)
	(= (slew_time Star18 Planet16) 5.553)
	(= (slew_time Planet16 Star18) 5.553)
	(= (slew_time Star18 Phenomenon17) 63.93)
	(= (slew_time Phenomenon17 Star18) 63.93)
	(= (slew_time Planet19 GroundStation0) 12.5)
	(= (slew_time GroundStation0 Planet19) 12.5)
	(= (slew_time Planet19 GroundStation1) 51.98)
	(= (slew_time GroundStation1 Planet19) 51.98)
	(= (slew_time Planet19 Star2) 11.66)
	(= (slew_time Star2 Planet19) 11.66)
	(= (slew_time Planet19 Star3) 65.39)
	(= (slew_time Star3 Planet19) 65.39)
	(= (slew_time Planet19 Planet4) 76.32)
	(= (slew_time Planet4 Planet19) 76.32)
	(= (slew_time Planet19 Phenomenon5) 52.08)
	(= (slew_time Phenomenon5 Planet19) 52.08)
	(= (slew_time Planet19 Star6) 22.47)
	(= (slew_time Star6 Planet19) 22.47)
	(= (slew_time Planet19 Star7) 23.68)
	(= (slew_time Star7 Planet19) 23.68)
	(= (slew_time Planet19 Phenomenon8) 31.98)
	(= (slew_time Phenomenon8 Planet19) 31.98)
	(= (slew_time Planet19 Star9) 12.86)
	(= (slew_time Star9 Planet19) 12.86)
	(= (slew_time Planet19 Phenomenon10) 44.76)
	(= (slew_time Phenomenon10 Planet19) 44.76)
	(= (slew_time Planet19 Phenomenon11) 46.47)
	(= (slew_time Phenomenon11 Planet19) 46.47)
	(= (slew_time Planet19 Star12) 7.119)
	(= (slew_time Star12 Planet19) 7.119)
	(= (slew_time Planet19 Phenomenon13) 11.63)
	(= (slew_time Phenomenon13 Planet19) 11.63)
	(= (slew_time Planet19 Planet14) 24.15)
	(= (slew_time Planet14 Planet19) 24.15)
	(= (slew_time Planet19 Planet15) 4.622)
	(= (slew_time Planet15 Planet19) 4.622)
	(= (slew_time Planet19 Planet16) 21.56)
	(= (slew_time Planet16 Planet19) 21.56)
	(= (slew_time Planet19 Phenomenon17) 72.17)
	(= (slew_time Phenomenon17 Planet19) 72.17)
	(= (slew_time Planet19 Star18) 39.58)
	(= (slew_time Star18 Planet19) 39.58)
	(= (slew_time Planet20 GroundStation0) 51.4)
	(= (slew_time GroundStation0 Planet20) 51.4)
	(= (slew_time Planet20 GroundStation1) 8.214)
	(= (slew_time GroundStation1 Planet20) 8.214)
	(= (slew_time Planet20 Star2) 19.22)
	(= (slew_time Star2 Planet20) 19.22)
	(= (slew_time Planet20 Star3) 56.32)
	(= (slew_time Star3 Planet20) 56.32)
	(= (slew_time Planet20 Planet4) 51.35)
	(= (slew_time Planet4 Planet20) 51.35)
	(= (slew_time Planet20 Phenomenon5) 28.98)
	(= (slew_time Phenomenon5 Planet20) 28.98)
	(= (slew_time Planet20 Star6) 47.4)
	(= (slew_time Star6 Planet20) 47.4)
	(= (slew_time Planet20 Star7) 13.42)
	(= (slew_time Star7 Planet20) 13.42)
	(= (slew_time Planet20 Phenomenon8) 36.67)
	(= (slew_time Phenomenon8 Planet20) 36.67)
	(= (slew_time Planet20 Star9) 27.06)
	(= (slew_time Star9 Planet20) 27.06)
	(= (slew_time Planet20 Phenomenon10) 51.05)
	(= (slew_time Phenomenon10 Planet20) 51.05)
	(= (slew_time Planet20 Phenomenon11) 19.65)
	(= (slew_time Phenomenon11 Planet20) 19.65)
	(= (slew_time Planet20 Star12) 80.67)
	(= (slew_time Star12 Planet20) 80.67)
	(= (slew_time Planet20 Phenomenon13) 38.35)
	(= (slew_time Phenomenon13 Planet20) 38.35)
	(= (slew_time Planet20 Planet14) 10.63)
	(= (slew_time Planet14 Planet20) 10.63)
	(= (slew_time Planet20 Planet15) 70.79)
	(= (slew_time Planet15 Planet20) 70.79)
	(= (slew_time Planet20 Planet16) 0.2061)
	(= (slew_time Planet16 Planet20) 0.2061)
	(= (slew_time Planet20 Phenomenon17) 63.12)
	(= (slew_time Phenomenon17 Planet20) 63.12)
	(= (slew_time Planet20 Star18) 23.18)
	(= (slew_time Star18 Planet20) 23.18)
	(= (slew_time Planet20 Planet19) 17.09)
	(= (slew_time Planet19 Planet20) 17.09)
	(= (slew_time Star21 GroundStation0) 24.03)
	(= (slew_time GroundStation0 Star21) 24.03)
	(= (slew_time Star21 GroundStation1) 62.66)
	(= (slew_time GroundStation1 Star21) 62.66)
	(= (slew_time Star21 Star2) 51.46)
	(= (slew_time Star2 Star21) 51.46)
	(= (slew_time Star21 Star3) 76.25)
	(= (slew_time Star3 Star21) 76.25)
	(= (slew_time Star21 Planet4) 0.8479)
	(= (slew_time Planet4 Star21) 0.8479)
	(= (slew_time Star21 Phenomenon5) 73.41)
	(= (slew_time Phenomenon5 Star21) 73.41)
	(= (slew_time Star21 Star6) 17.29)
	(= (slew_time Star6 Star21) 17.29)
	(= (slew_time Star21 Star7) 2.225)
	(= (slew_time Star7 Star21) 2.225)
	(= (slew_time Star21 Phenomenon8) 40.91)
	(= (slew_time Phenomenon8 Star21) 40.91)
	(= (slew_time Star21 Star9) 42.44)
	(= (slew_time Star9 Star21) 42.44)
	(= (slew_time Star21 Phenomenon10) 58.05)
	(= (slew_time Phenomenon10 Star21) 58.05)
	(= (slew_time Star21 Phenomenon11) 57.16)
	(= (slew_time Phenomenon11 Star21) 57.16)
	(= (slew_time Star21 Star12) 77.7)
	(= (slew_time Star12 Star21) 77.7)
	(= (slew_time Star21 Phenomenon13) 76.83)
	(= (slew_time Phenomenon13 Star21) 76.83)
	(= (slew_time Star21 Planet14) 9.411)
	(= (slew_time Planet14 Star21) 9.411)
	(= (slew_time Star21 Planet15) 0.2814)
	(= (slew_time Planet15 Star21) 0.2814)
	(= (slew_time Star21 Planet16) 45.59)
	(= (slew_time Planet16 Star21) 45.59)
	(= (slew_time Star21 Phenomenon17) 18.71)
	(= (slew_time Phenomenon17 Star21) 18.71)
	(= (slew_time Star21 Star18) 42.77)
	(= (slew_time Star18 Star21) 42.77)
	(= (slew_time Star21 Planet19) 29.19)
	(= (slew_time Planet19 Star21) 29.19)
	(= (slew_time Star21 Planet20) 49.13)
	(= (slew_time Planet20 Star21) 49.13)
	(= (slew_time Phenomenon22 GroundStation0) 88.19)
	(= (slew_time GroundStation0 Phenomenon22) 88.19)
	(= (slew_time Phenomenon22 GroundStation1) 31.02)
	(= (slew_time GroundStation1 Phenomenon22) 31.02)
	(= (slew_time Phenomenon22 Star2) 12.61)
	(= (slew_time Star2 Phenomenon22) 12.61)
	(= (slew_time Phenomenon22 Star3) 27.63)
	(= (slew_time Star3 Phenomenon22) 27.63)
	(= (slew_time Phenomenon22 Planet4) 5.933)
	(= (slew_time Planet4 Phenomenon22) 5.933)
	(= (slew_time Phenomenon22 Phenomenon5) 6.424)
	(= (slew_time Phenomenon5 Phenomenon22) 6.424)
	(= (slew_time Phenomenon22 Star6) 7.413)
	(= (slew_time Star6 Phenomenon22) 7.413)
	(= (slew_time Phenomenon22 Star7) 2.488)
	(= (slew_time Star7 Phenomenon22) 2.488)
	(= (slew_time Phenomenon22 Phenomenon8) 60.25)
	(= (slew_time Phenomenon8 Phenomenon22) 60.25)
	(= (slew_time Phenomenon22 Star9) 1.698)
	(= (slew_time Star9 Phenomenon22) 1.698)
	(= (slew_time Phenomenon22 Phenomenon10) 79.17)
	(= (slew_time Phenomenon10 Phenomenon22) 79.17)
	(= (slew_time Phenomenon22 Phenomenon11) 31.34)
	(= (slew_time Phenomenon11 Phenomenon22) 31.34)
	(= (slew_time Phenomenon22 Star12) 50.71)
	(= (slew_time Star12 Phenomenon22) 50.71)
	(= (slew_time Phenomenon22 Phenomenon13) 32.86)
	(= (slew_time Phenomenon13 Phenomenon22) 32.86)
	(= (slew_time Phenomenon22 Planet14) 56.5)
	(= (slew_time Planet14 Phenomenon22) 56.5)
	(= (slew_time Phenomenon22 Planet15) 13.99)
	(= (slew_time Planet15 Phenomenon22) 13.99)
	(= (slew_time Phenomenon22 Planet16) 3.683)
	(= (slew_time Planet16 Phenomenon22) 3.683)
	(= (slew_time Phenomenon22 Phenomenon17) 18.24)
	(= (slew_time Phenomenon17 Phenomenon22) 18.24)
	(= (slew_time Phenomenon22 Star18) 37.75)
	(= (slew_time Star18 Phenomenon22) 37.75)
	(= (slew_time Phenomenon22 Planet19) 67.87)
	(= (slew_time Planet19 Phenomenon22) 67.87)
	(= (slew_time Phenomenon22 Planet20) 38.17)
	(= (slew_time Planet20 Phenomenon22) 38.17)
	(= (slew_time Phenomenon22 Star21) 4.393)
	(= (slew_time Star21 Phenomenon22) 4.393)
	(= (slew_time Star23 GroundStation0) 5.589)
	(= (slew_time GroundStation0 Star23) 5.589)
	(= (slew_time Star23 GroundStation1) 12.9)
	(= (slew_time GroundStation1 Star23) 12.9)
	(= (slew_time Star23 Star2) 75.52)
	(= (slew_time Star2 Star23) 75.52)
	(= (slew_time Star23 Star3) 3.847)
	(= (slew_time Star3 Star23) 3.847)
	(= (slew_time Star23 Planet4) 45.83)
	(= (slew_time Planet4 Star23) 45.83)
	(= (slew_time Star23 Phenomenon5) 20.5)
	(= (slew_time Phenomenon5 Star23) 20.5)
	(= (slew_time Star23 Star6) 44.23)
	(= (slew_time Star6 Star23) 44.23)
	(= (slew_time Star23 Star7) 32.38)
	(= (slew_time Star7 Star23) 32.38)
	(= (slew_time Star23 Phenomenon8) 13.24)
	(= (slew_time Phenomenon8 Star23) 13.24)
	(= (slew_time Star23 Star9) 4.181)
	(= (slew_time Star9 Star23) 4.181)
	(= (slew_time Star23 Phenomenon10) 16.41)
	(= (slew_time Phenomenon10 Star23) 16.41)
	(= (slew_time Star23 Phenomenon11) 52.53)
	(= (slew_time Phenomenon11 Star23) 52.53)
	(= (slew_time Star23 Star12) 2.321)
	(= (slew_time Star12 Star23) 2.321)
	(= (slew_time Star23 Phenomenon13) 66.55)
	(= (slew_time Phenomenon13 Star23) 66.55)
	(= (slew_time Star23 Planet14) 30.41)
	(= (slew_time Planet14 Star23) 30.41)
	(= (slew_time Star23 Planet15) 16.77)
	(= (slew_time Planet15 Star23) 16.77)
	(= (slew_time Star23 Planet16) 42.85)
	(= (slew_time Planet16 Star23) 42.85)
	(= (slew_time Star23 Phenomenon17) 34.99)
	(= (slew_time Phenomenon17 Star23) 34.99)
	(= (slew_time Star23 Star18) 6.795)
	(= (slew_time Star18 Star23) 6.795)
	(= (slew_time Star23 Planet19) 47.13)
	(= (slew_time Planet19 Star23) 47.13)
	(= (slew_time Star23 Planet20) 9.078)
	(= (slew_time Planet20 Star23) 9.078)
	(= (slew_time Star23 Star21) 46.82)
	(= (slew_time Star21 Star23) 46.82)
	(= (slew_time Star23 Phenomenon22) 51.14)
	(= (slew_time Phenomenon22 Star23) 51.14)
	(= (slew_time Planet24 GroundStation0) 71.55)
	(= (slew_time GroundStation0 Planet24) 71.55)
	(= (slew_time Planet24 GroundStation1) 32.02)
	(= (slew_time GroundStation1 Planet24) 32.02)
	(= (slew_time Planet24 Star2) 39.18)
	(= (slew_time Star2 Planet24) 39.18)
	(= (slew_time Planet24 Star3) 52.4)
	(= (slew_time Star3 Planet24) 52.4)
	(= (slew_time Planet24 Planet4) 52.87)
	(= (slew_time Planet4 Planet24) 52.87)
	(= (slew_time Planet24 Phenomenon5) 21.72)
	(= (slew_time Phenomenon5 Planet24) 21.72)
	(= (slew_time Planet24 Star6) 51.4)
	(= (slew_time Star6 Planet24) 51.4)
	(= (slew_time Planet24 Star7) 55.79)
	(= (slew_time Star7 Planet24) 55.79)
	(= (slew_time Planet24 Phenomenon8) 7.027)
	(= (slew_time Phenomenon8 Planet24) 7.027)
	(= (slew_time Planet24 Star9) 18.84)
	(= (slew_time Star9 Planet24) 18.84)
	(= (slew_time Planet24 Phenomenon10) 36.42)
	(= (slew_time Phenomenon10 Planet24) 36.42)
	(= (slew_time Planet24 Phenomenon11) 15.21)
	(= (slew_time Phenomenon11 Planet24) 15.21)
	(= (slew_time Planet24 Star12) 53.41)
	(= (slew_time Star12 Planet24) 53.41)
	(= (slew_time Planet24 Phenomenon13) 14.23)
	(= (slew_time Phenomenon13 Planet24) 14.23)
	(= (slew_time Planet24 Planet14) 3.661)
	(= (slew_time Planet14 Planet24) 3.661)
	(= (slew_time Planet24 Planet15) 35.17)
	(= (slew_time Planet15 Planet24) 35.17)
	(= (slew_time Planet24 Planet16) 6.65)
	(= (slew_time Planet16 Planet24) 6.65)
	(= (slew_time Planet24 Phenomenon17) 14.91)
	(= (slew_time Phenomenon17 Planet24) 14.91)
	(= (slew_time Planet24 Star18) 27.21)
	(= (slew_time Star18 Planet24) 27.21)
	(= (slew_time Planet24 Planet19) 66.96)
	(= (slew_time Planet19 Planet24) 66.96)
	(= (slew_time Planet24 Planet20) 83.71)
	(= (slew_time Planet20 Planet24) 83.71)
	(= (slew_time Planet24 Star21) 25.35)
	(= (slew_time Star21 Planet24) 25.35)
	(= (slew_time Planet24 Phenomenon22) 5.143)
	(= (slew_time Phenomenon22 Planet24) 5.143)
	(= (slew_time Planet24 Star23) 74.66)
	(= (slew_time Star23 Planet24) 74.66)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Planet19)
	(have_image Phenomenon5 image1)
	(have_image Star6 image0)
	(have_image Star7 image1)
	(have_image Phenomenon8 image1)
	(have_image Star9 thermograph2)
	(have_image Phenomenon11 thermograph2)
	(have_image Star12 image0)
	(have_image Phenomenon13 image0)
	(have_image Planet14 thermograph2)
	(have_image Planet15 thermograph2)
	(have_image Planet16 thermograph2)
	(have_image Phenomenon17 image0)
	(have_image Star18 image0)
	(have_image Planet19 image0)
	(have_image Planet20 image0)
	(have_image Star21 image1)
	(have_image Planet24 thermograph2)
))
(:metric minimize (fuel-used))

)
