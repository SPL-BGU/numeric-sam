(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	thermograph1 - mode
	thermograph0 - mode
	thermograph2 - mode
	Star2 - direction
	GroundStation3 - direction
	GroundStation1 - direction
	Star0 - direction
	Planet4 - direction
	Star5 - direction
	Star6 - direction
	Star7 - direction
	Planet8 - direction
	Planet9 - direction
	Planet10 - direction
	Star11 - direction
)
(:init
	(supports instrument0 thermograph2)
	(calibration_target instrument0 GroundStation1)
	(supports instrument1 thermograph2)
	(supports instrument1 thermograph0)
	(calibration_target instrument1 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet10)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 195)
	(= (data Planet4 thermograph1) 285)
	(= (data Star5 thermograph1) 149)
	(= (data Star6 thermograph1) 196)
	(= (data Star7 thermograph1) 288)
	(= (data Planet8 thermograph1) 145)
	(= (data Planet9 thermograph1) 143)
	(= (data Planet10 thermograph1) 110)
	(= (data Star11 thermograph1) 178)
	(= (data Planet4 thermograph0) 296)
	(= (data Star5 thermograph0) 54)
	(= (data Star6 thermograph0) 168)
	(= (data Star7 thermograph0) 245)
	(= (data Planet8 thermograph0) 286)
	(= (data Planet9 thermograph0) 193)
	(= (data Planet10 thermograph0) 35)
	(= (data Star11 thermograph0) 83)
	(= (data Planet4 thermograph2) 118)
	(= (data Star5 thermograph2) 179)
	(= (data Star6 thermograph2) 277)
	(= (data Star7 thermograph2) 169)
	(= (data Planet8 thermograph2) 84)
	(= (data Planet9 thermograph2) 115)
	(= (data Planet10 thermograph2) 64)
	(= (data Star11 thermograph2) 160)
	(= (slew_time Star2 Star0) 18.68)
	(= (slew_time Star0 Star2) 18.68)
	(= (slew_time Star2 GroundStation1) 35.5)
	(= (slew_time GroundStation1 Star2) 35.5)
	(= (slew_time GroundStation3 Star0) 20.66)
	(= (slew_time Star0 GroundStation3) 20.66)
	(= (slew_time GroundStation3 GroundStation1) 58)
	(= (slew_time GroundStation1 GroundStation3) 58)
	(= (slew_time GroundStation3 Star2) 1.433)
	(= (slew_time Star2 GroundStation3) 1.433)
	(= (slew_time GroundStation1 Star0) 16.07)
	(= (slew_time Star0 GroundStation1) 16.07)
	(= (slew_time Planet4 Star0) 38.67)
	(= (slew_time Star0 Planet4) 38.67)
	(= (slew_time Planet4 GroundStation1) 33.02)
	(= (slew_time GroundStation1 Planet4) 33.02)
	(= (slew_time Planet4 Star2) 5.273)
	(= (slew_time Star2 Planet4) 5.273)
	(= (slew_time Planet4 GroundStation3) 14.42)
	(= (slew_time GroundStation3 Planet4) 14.42)
	(= (slew_time Star5 Star0) 51.24)
	(= (slew_time Star0 Star5) 51.24)
	(= (slew_time Star5 GroundStation1) 14.91)
	(= (slew_time GroundStation1 Star5) 14.91)
	(= (slew_time Star5 Star2) 79.09)
	(= (slew_time Star2 Star5) 79.09)
	(= (slew_time Star5 GroundStation3) 53.16)
	(= (slew_time GroundStation3 Star5) 53.16)
	(= (slew_time Star5 Planet4) 17.85)
	(= (slew_time Planet4 Star5) 17.85)
	(= (slew_time Star6 Star0) 51.63)
	(= (slew_time Star0 Star6) 51.63)
	(= (slew_time Star6 GroundStation1) 15.35)
	(= (slew_time GroundStation1 Star6) 15.35)
	(= (slew_time Star6 Star2) 24.17)
	(= (slew_time Star2 Star6) 24.17)
	(= (slew_time Star6 GroundStation3) 16.83)
	(= (slew_time GroundStation3 Star6) 16.83)
	(= (slew_time Star6 Planet4) 3.067)
	(= (slew_time Planet4 Star6) 3.067)
	(= (slew_time Star6 Star5) 58.51)
	(= (slew_time Star5 Star6) 58.51)
	(= (slew_time Star7 Star0) 3.138)
	(= (slew_time Star0 Star7) 3.138)
	(= (slew_time Star7 GroundStation1) 47.23)
	(= (slew_time GroundStation1 Star7) 47.23)
	(= (slew_time Star7 Star2) 58.9)
	(= (slew_time Star2 Star7) 58.9)
	(= (slew_time Star7 GroundStation3) 25.45)
	(= (slew_time GroundStation3 Star7) 25.45)
	(= (slew_time Star7 Planet4) 35.39)
	(= (slew_time Planet4 Star7) 35.39)
	(= (slew_time Star7 Star5) 17.92)
	(= (slew_time Star5 Star7) 17.92)
	(= (slew_time Star7 Star6) 45.59)
	(= (slew_time Star6 Star7) 45.59)
	(= (slew_time Planet8 Star0) 74.4)
	(= (slew_time Star0 Planet8) 74.4)
	(= (slew_time Planet8 GroundStation1) 58.74)
	(= (slew_time GroundStation1 Planet8) 58.74)
	(= (slew_time Planet8 Star2) 26.39)
	(= (slew_time Star2 Planet8) 26.39)
	(= (slew_time Planet8 GroundStation3) 43.67)
	(= (slew_time GroundStation3 Planet8) 43.67)
	(= (slew_time Planet8 Planet4) 87.54)
	(= (slew_time Planet4 Planet8) 87.54)
	(= (slew_time Planet8 Star5) 67.17)
	(= (slew_time Star5 Planet8) 67.17)
	(= (slew_time Planet8 Star6) 34.83)
	(= (slew_time Star6 Planet8) 34.83)
	(= (slew_time Planet8 Star7) 72.83)
	(= (slew_time Star7 Planet8) 72.83)
	(= (slew_time Planet9 Star0) 47.9)
	(= (slew_time Star0 Planet9) 47.9)
	(= (slew_time Planet9 GroundStation1) 19.97)
	(= (slew_time GroundStation1 Planet9) 19.97)
	(= (slew_time Planet9 Star2) 17.16)
	(= (slew_time Star2 Planet9) 17.16)
	(= (slew_time Planet9 GroundStation3) 20.96)
	(= (slew_time GroundStation3 Planet9) 20.96)
	(= (slew_time Planet9 Planet4) 31.25)
	(= (slew_time Planet4 Planet9) 31.25)
	(= (slew_time Planet9 Star5) 72.17)
	(= (slew_time Star5 Planet9) 72.17)
	(= (slew_time Planet9 Star6) 7.342)
	(= (slew_time Star6 Planet9) 7.342)
	(= (slew_time Planet9 Star7) 8.752)
	(= (slew_time Star7 Planet9) 8.752)
	(= (slew_time Planet9 Planet8) 29.69)
	(= (slew_time Planet8 Planet9) 29.69)
	(= (slew_time Planet10 Star0) 81.35)
	(= (slew_time Star0 Planet10) 81.35)
	(= (slew_time Planet10 GroundStation1) 73.87)
	(= (slew_time GroundStation1 Planet10) 73.87)
	(= (slew_time Planet10 Star2) 17.59)
	(= (slew_time Star2 Planet10) 17.59)
	(= (slew_time Planet10 GroundStation3) 80.45)
	(= (slew_time GroundStation3 Planet10) 80.45)
	(= (slew_time Planet10 Planet4) 36.43)
	(= (slew_time Planet4 Planet10) 36.43)
	(= (slew_time Planet10 Star5) 3.034)
	(= (slew_time Star5 Planet10) 3.034)
	(= (slew_time Planet10 Star6) 17.21)
	(= (slew_time Star6 Planet10) 17.21)
	(= (slew_time Planet10 Star7) 0.4708)
	(= (slew_time Star7 Planet10) 0.4708)
	(= (slew_time Planet10 Planet8) 0.03972)
	(= (slew_time Planet8 Planet10) 0.03972)
	(= (slew_time Planet10 Planet9) 5.5)
	(= (slew_time Planet9 Planet10) 5.5)
	(= (slew_time Star11 Star0) 51.39)
	(= (slew_time Star0 Star11) 51.39)
	(= (slew_time Star11 GroundStation1) 21.4)
	(= (slew_time GroundStation1 Star11) 21.4)
	(= (slew_time Star11 Star2) 13.22)
	(= (slew_time Star2 Star11) 13.22)
	(= (slew_time Star11 GroundStation3) 31.77)
	(= (slew_time GroundStation3 Star11) 31.77)
	(= (slew_time Star11 Planet4) 6.566)
	(= (slew_time Planet4 Star11) 6.566)
	(= (slew_time Star11 Star5) 22)
	(= (slew_time Star5 Star11) 22)
	(= (slew_time Star11 Star6) 38.95)
	(= (slew_time Star6 Star11) 38.95)
	(= (slew_time Star11 Star7) 17.65)
	(= (slew_time Star7 Star11) 17.65)
	(= (slew_time Star11 Planet8) 33.38)
	(= (slew_time Planet8 Star11) 33.38)
	(= (slew_time Star11 Planet9) 8.64)
	(= (slew_time Planet9 Star11) 8.64)
	(= (slew_time Star11 Planet10) 45.57)
	(= (slew_time Planet10 Star11) 45.57)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(have_image Star6 thermograph0)
	(have_image Star7 thermograph2)
	(have_image Planet8 thermograph2)
	(have_image Planet9 thermograph0)
	(have_image Planet10 thermograph0)
	(have_image Star11 thermograph2)
))
(:metric minimize (fuel-used))

)
